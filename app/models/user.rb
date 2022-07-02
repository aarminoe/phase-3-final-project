class User < ActiveRecord::Base
    has_many :tasks
    has_many :friends, through: :tasks
end