  class User < ActiveRecord::Base
    attr_accessor :remember_token

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password, presence: true
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true


     validates :password, length: {minimum: 8, allow_nil: true}


    belongs_to :team

  end
