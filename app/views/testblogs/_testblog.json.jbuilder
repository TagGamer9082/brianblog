json.extract! testblog, :id, :Title, :Message, :Email, :created_at, :updated_at
json.url testblog_url(testblog, format: :json)
