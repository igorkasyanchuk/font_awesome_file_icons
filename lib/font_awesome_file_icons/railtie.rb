module FontAwesomeFileIcons
  class Railtie < ::Rails::Railtie
    initializer 'font_awesome_file_icons.helpers' do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, FontAwesomeFileIcons::Helpers
      end
    end
  end
end
