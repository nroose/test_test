json.array!(@toasts) do |toast|
  json.extract! toast, :id
  json.url toast_url(toast, format: :json)
end
