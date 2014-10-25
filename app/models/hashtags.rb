class Hashtag
  include DataMapper::Resource

  property :id, 						Serial
  property :hashtag, 				String, length: 1..30
  property :created_at,     DateTime
  property :updated_at,     DateTime

  belongs_to :greet
end