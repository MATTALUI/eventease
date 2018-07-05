class User < ApplicationRecord
  has_secure_password
  has_many :roles, foreign_key: :volunteer_id
  scope :lusers,     -> {where({:luser=>true})}
  scope :registered, -> {where({:luser=>false})}

  def to_s
    return [self.first_name, self.last_name].compact.join(' ')
  end
end
