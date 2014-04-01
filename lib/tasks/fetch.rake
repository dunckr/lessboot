# require 'net/http'
# require 'multi_json'

# desc "Seed the database"
# task :seed => :environment do
#   # fetch
#   # delete
#   # populate
#   search
# end

# def search
#   response = request 'http://marketplace.envato.com/api/v3/popular:themeforest.json'
#   results = MultiJson.load response

#   items = results['popular']['items_last_week']

#   items.each do |request|
#     puts request['id']
#     # "id":"2833226",
#     # "item":"Avada | Responsive Multi-Purpose Theme",
#     # "url":"http://themeforest.net/item/avada-responsive-multipurpose-theme/2833226",
#     # "user":"ThemeFusion",
#     # "thumbnail":"https://d2mdw063ttlqtq.cloudfront.net/files/86270249/Thumbnail.jpg",
#     # "sales":"1122",
#     # "rating":"5",
#     # "rating_decimal":"4.68",
#     # "cost":"55.00",
#     # "uploaded_on":"Thu Aug 16 01:28:46 +1000 2012",
#     # "last_update":"Thu Mar 27 05:27:45 +1100 2014",
#     # "tags":"business, clean, corporate, creative, ecommerce, localization, modern, multipurpose, one page, portfolio, responsive, retina, seo, woocommerce, wordpress",
#     # "category":"wordpress/corporate",
#     # "live_preview_url":"https://d2mdw063ttlqtq.cloudfront.net/files/86270251/screenshots/00_preview.__large_preview.jpg"},
#   end
# end


# def request(path)
#   url = URI.parse(path)
#   req = Net::HTTP::Get.new(url.path)
#   res = Net::HTTP.start(url.host, url.port) {|http|
#     http.request(req)
#   }
#   res.body
# end
