require 'net/http'
Net::HTTP.start("masui.sfc.keio.ac.jp", 80){|http|
  puts http.delete("/gyaco/all")
}
