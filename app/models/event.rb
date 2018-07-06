class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User"
  belongs_to :organization
  has_many   :roles

  def to_s
    return self.name
  end

  def to_s_long
    return [self.name, self.description].reject(&:blank?).join(' -- ')
  end

  def fully_booked?
    return self.roles.includes(:volunteer).all?{|role| role.volunteer.present?}
  end
end
