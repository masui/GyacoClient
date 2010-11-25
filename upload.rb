# -*- coding: utf-8 -*-
require 'rubygems'
require 'httpclient'

hc = HTTPClient.new

filename = ARGV[0]
filename = "cabbage.mp3" unless filename

File.open(filename){ |f|
  postdata = {
    'file' => f
  }
  puts hc.post_content("http://masui.sfc.keio.ac.jp/gyaco/upload", postdata)
}

