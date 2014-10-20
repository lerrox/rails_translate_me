json.array!(@pages) do |page|
  json.extract! page, :id, :name, :title, :header, :body
  json.url page_url(page, format: :json)
end
