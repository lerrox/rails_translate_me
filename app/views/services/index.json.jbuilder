json.array!(@services) do |service|
  json.extract! service, :id, :title, :body, :icon
  json.url service_url(service, format: :json)
end
