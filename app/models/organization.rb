class Organization < ApplicationRecord
  has_many :events

  def to_s
    return self.name
  end

  def to_s_long
    return [self.name, self.description].reject(&:blank?).join(' -- ')
  end
end
