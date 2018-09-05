require 'mimemagic'
require 'font-awesome-rails'
require "font_awesome_file_icons/railtie"

module FontAwesomeFileIcons
  module Helpers
    DEFAULT_ICON = 'file-o'
    FILE_ICONS_MAPPING = {
      /image/ => 'file-image-o',
      /audio/ => 'file-audio-o',
      /video/ => 'file-video-o',
      'application/pdf'         => 'file-pdf-o',
      'application/msword'      => 'file-word-o',
      'application/vnd.ms-word' => 'file-word-o',
      'application/vnd.oasis.opendocument.text' => 'file-word-o',
      'application/vnd.openxmlformats-officedocument.wordprocessingml' => 'file-word-o',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document' => 'file-word-o',
      'application/vnd.ms-excel' => 'file-excel-o',
      'application/vnd.openxmlformats-officedocument.spreadsheetml' => 'file-excel-o',
      'application/vnd.openxmlformats-officedocument.spreadsheetml.document' => 'file-excel-o',
      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' => 'file-excel-o',
      'text/csv' => 'file-excel-o',
      'application/vnd.oasis.opendocument.spreadsheet' => 'file-excel-o',
      'application/vnd.ms-powerpoint' => 'file-powerpoint-o',
      'application/vnd.openxmlformats-officedocument.presentationml' => 'file-powerpoint-o',
      'application/vnd.openxmlformats-officedocument.presentationml.document' => 'file-powerpoint-o',
      'application/vnd.openxmlformats-officedocument.presentationml.presentation' => 'file-powerpoint-o',
      'application/vnd.oasis.opendocument.presentation' => 'file-powerpoint-o',
      'text/plain'             => 'file-text-o',
      'text/html'              => 'file-code-o',
      'application/json'       => 'file-code-o',
      'application/sql'        => 'file-code-o',
      'application/javascript' => 'file-code-o',
      'text/css'               => 'file-code-o',
      'application/x-ruby'     => 'file-code-o',
      'text/x-python'          => 'file-code-o',
      'text/x-c++src'          => 'file-code-o',
      'text/x-java'            => 'file-code-o',
      'application/gzip'       => 'file-archive-o',
      'application/zip'        => 'file-archive-o',
      'application/x-tar'      => 'file-archive-o',
      'application/x-rar'      => 'file-archive-o',
      /compressed/             => 'file-archive-o',
      nil => DEFAULT_ICON,
      ''  => DEFAULT_ICON
    }.freeze

    FILE_ICONS_MAPPING_REGEXP = FILE_ICONS_MAPPING.keys.select{|e| e.is_a?(Regexp)}.freeze

    def fa_file_icon(filename, *options)
      icon = get_icon(filename)
      fa_icon(icon, *options)
    end

    private
    
    def get_icon(filename)
      extension = File.extname(filename.to_s)
      mime_type = MimeMagic.by_extension(extension)&.type
      icon      = FILE_ICONS_MAPPING[mime_type]

      if icon.nil?
        key  = FILE_ICONS_MAPPING_REGEXP.detect{|e| e =~ mime_type }
        icon = FILE_ICONS_MAPPING[key] if key
      end

      #puts "#{extension}  -> #{mime_type}  ->  #{icon}"
      icon ||= DEFAULT_ICON
    end
    
  end
end
