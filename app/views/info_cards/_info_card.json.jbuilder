json.extract! info_card, :id, :info_card_title, :info_card_description, :info_card_image_url, :info_card_type, :created_at, :updated_at
json.url info_card_url(info_card, format: :json)
