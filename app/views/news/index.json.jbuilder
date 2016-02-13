json.array!(@news) do |news|
  json.extract! news, :id, :title, :body, :author, :published_at, :status
  json.url news_url(news, format: :json)
end
