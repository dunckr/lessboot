require 'net/http'
require 'multi_json'

desc "seed the database"
task :seed => :environment do
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
  ActiveRecord::Base.connection.execute("INSERT INTO items (number, item, url, user, thumbnail, sales, rating, rating_decimal, cost, uploaded_on, last_update, tags, category, live_preview_url) VALUES ('" \
    + item['id'].to_s + "','" \
    + item['item'].to_s + "','" \
    + item['url'].to_s + "','" \
    + item['user'].to_s + "','" \
    + item['thumbnail'].to_s + "','" \
    + item['sales'].to_s + "','" \
    + item['rating'].to_s + "','" \
    + item['rating_decimal'].to_s + "','" \
    + item['cost'].to_s + "','" \
    + item['uploaded_on'].to_s + "','" \
    + item['last_update'].to_s + "','" \
    + item['tags'].to_s + "','" \
    + item['category'].to_s + "','" \
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
  # Rake::Task['db:drop:all'].invoke
  # Rake::Task['db:migrate'].invoke
end
