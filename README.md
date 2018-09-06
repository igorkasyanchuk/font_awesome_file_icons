# Font Awesome file icons

Sometimes you need to output filename with an icon from font-awesome. And you need to take an extension of file and use some mapping.

This gem is doing this for you, so you can focus on more important things.

## Usage

Gem is adding method-wrapper `fa_file_icon` which behaves very similar to `fa_icon` and can receive same arguments as `fa_icon`.

```erb
<p><%= fa_file_icon 'file.pdf', text: 'download' %></p>
<p><%= fa_file_icon 'movie.avi' %></p>
<p><%= fa_file_icon 'attachment.zip' %></p>
<p><%= fa_file_icon user.avatar.file.filename, text: user.avatar.file.filename %></p>

<p><%= fa_file_stacked_icon 'index.mov', text: 'mov' %></p>
<p><%= fa_file_stacked_icon 'index.jpg', text: 'jpg' %></p>
<p><%= fa_file_stacked_icon 'index.bmp', text: 'bmp', class: "fa-5x" %></p>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'font_awesome_file_icons'
```

And then execute:
```bash
$ bundle
```

Gem depends on `font-awesome-rails` and `mimemagic` gems.

## Contributing

* Fork
* git clone
* cd test/dummy
* rails s
* open localhost:3000
* make fixes in lib folder, restart server
* push changes & send a PR

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
