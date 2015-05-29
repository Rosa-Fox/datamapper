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
  property :email, String
  property :created_at, DateTime
  property :updated_at, DateTime
end

DataMapper.auto_upgrade!
