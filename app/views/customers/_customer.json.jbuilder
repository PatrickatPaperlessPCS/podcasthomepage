json.extract! customer, :id, :email, :name, :website, :podcast, :created_at, :updated_at
json.url customer_url(customer, format: :json)
