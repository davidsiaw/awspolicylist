require 'net/http'
require 'json'

uri = URI('https://awspolicygen.s3.amazonaws.com')
hostname = uri.hostname
uri.path = '/js/policies.js'

req = Net::HTTP::Get.new(uri)
res = Net::HTTP.start(hostname) do |http|
  http.request(req)
end

puts res.body
