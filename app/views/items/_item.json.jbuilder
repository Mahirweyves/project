json.extract! item, :id, :name, :description, :address, :price, :telephone, :company_name, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
