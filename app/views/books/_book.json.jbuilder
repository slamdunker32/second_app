json.extract! book, :id, :title, :string, :description, :text, :created_at, :updated_at
json.url book_url(book, format: :json)
