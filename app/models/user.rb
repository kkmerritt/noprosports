  class User < ActiveRecord::Base
    attr_accessor :remember_token

    has_secure_password


    validates :username,  presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password, presence: true


    def User.digest(string)
  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                BCrypt::Engine.cost
  BCrypt::Password.create(string, cost: cost)
end


    def remember
      self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
    end

  end
