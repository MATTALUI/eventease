class Role < ApplicationRecord
  belongs_to :volunteer, class_name: "User", optional: true
  belongs_to :event
  belongs_to :organization

  def to_s
    return self.title
  end

  def to_s_long
    return [self.title, self.description].reject(&:blank?).join(' -- ')
  end
end
