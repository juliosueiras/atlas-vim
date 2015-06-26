source "http://rubygems.org"

require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'jekyll'
gem 'redcarpet'
gem 'classifier-reborn'
gem 'fast-stemmer'

gem 'github-pages', versions['github-pages']
