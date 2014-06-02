require "net/http"

pages = %w(www.weibo.com www.baidu.com www.joinwee.com)
threads = []
for page_to_fetch in pages
  threads << Thread.new(page_to_fetch) do |url|
    h = Net::HTTP.new(url, 80)
    puts "Fetching: #{url}"
    resp = h.get("/", nil)
    puts "Got #{url}: #{resp.message}"
  end
end
puts threads
threads.each {|thr| thr.join}