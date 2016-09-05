require_relative 'extractcontent' #https://github.com/mono0x/extractcontent

require "open-uri"
require "bundler/setup"

URL = URI.encode(ARGV[0])

open(URL) do |io|
  html = io.read
  body, title = ExtractContent.analyse(html)
  #puts title
  puts body
end