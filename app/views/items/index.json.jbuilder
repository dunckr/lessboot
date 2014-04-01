json.array!(@items) do |item|
  json.extract! item, :id, :number, :item, :url, :user, :thumbnail, :sales, :rating, :rating_decimal, :cost, :uploaded_on, :last_update, :tags, :category, :live_preview_url
  json.url item_url(item, format: :json)
end
