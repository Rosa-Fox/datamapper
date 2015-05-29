require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'

DataMapper.setup :default, "sqlite://#{Dir.pwd}"/dm.db"
