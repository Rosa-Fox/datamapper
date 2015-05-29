require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'

DataMapper.setup :default, "sqlite://#{Dir.pwd}/dm.db"

class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String
  property :firstname, String
  property :lastname, String
  property :email, String  , format: :email_address
  property :created_at, DateTime
  property :updated_at, DateTime
end

class Post
  include DataMapper::Resource

  property :slug, String  , key: true, unique_index: true, default: lambda { |resource, prop | resource.title.downcase " ", "-" }
  property :title, String , required: true
  property :body, String  , required: true
  property :created_at, DateTime
  property :updated_at, DateTime
end
DataMapper.auto_upgrade!
