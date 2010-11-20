# -*- coding: utf-8 -*-
require 'rubygems'
require 'httpclient'

hc = HTTPClient.new

file = "cabbage.mp3"
if ARGV[0] then
  file = ARGV[0]
end

data = File.open(file).read

postdata = { "data" => data, "file_ext" => 'mp3' }

html = hc.post_content("http://masui.sfc.keio.ac.jp/gyaco/upload", postdata)

puts html

