require "net/http"

h = Net::HTTP.new("www.joinwee.com", 80)
response = h.get("/", nil)
if response.message == "OK"
  puts response.body.scan(/<img src="(.*?)"/m).uniq
  # puts response
end
