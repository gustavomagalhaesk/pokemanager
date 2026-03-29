json.extract! trainer, :id, :trainer_id, :name, :money, :url_image, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)
