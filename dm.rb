require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'

DataMapper.setup :default, "sqlite://#{Dir.pwd}"/dm.db"

class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String
  property :firstname, String
  property :lastname, String
  property :email, String
end

DataMapper.auto_upgrade!
