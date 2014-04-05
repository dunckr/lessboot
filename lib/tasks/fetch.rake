require 'net/http'
require 'multi_json'

desc "seed the database"
task :fetch => :environment do
  delete
  fetch
end

def fetch
  response = request 'http://marketplace.envato.com/api/v3/popular:themeforest.json'
  results = MultiJson.load response
  populate results['popular']['items_last_week']
end

def populate(items)
  items.each do |item|
    insert item
  end
end

def insert(item)
  ActiveRecord::Base.connection.execute("INSERT INTO items (url, rating, rating_decimal, cost, live_preview_url) VALUES ('" \
    + item['url'].to_s + "','" \
    + item['rating'].to_s + "','" \
    + item['rating_decimal'].to_s + "','" \
    + item['cost'].to_s + "','" \
    + item['live_preview_url'].to_s + "')"
  )
end

def request(path)
  url = URI.parse(path)
  req = Net::HTTP::Get.new(url.path)
  res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
  }
  res.body
end

def delete
  # ActiveRecord::Base.connection.execute('delete * from items')
end
