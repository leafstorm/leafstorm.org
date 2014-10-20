# leafstorm.us

This is the source code for my personal Web site.
While the trend lately has been to use blogs as personal sites,
I'm trying more of the traditional "home page" approach for this,
where the content is less time-dependent and organized thematically.
('Cause when my home page was a blog, I never blogged anyway.)

You can see it in action at http://leafstorm.us/.


## Building

The site is compiled using nanoc (http://nanoc.ws/),
an extensively customizable static site generator written in Ruby.
It includes a Gemfile, so if you have Bundler installed,
you should be able to run `bundle install` and install everything.

You can compile the site by running `bundle exec nanoc`.
You can watch the site and compile automatically when source files are
changed by running `bundle exec guard`.

You can open a server to view the compiled content with
`bundle exec nanoc view`. It will open on http://localhost:3000/.

