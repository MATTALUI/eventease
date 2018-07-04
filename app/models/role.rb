class Role < ApplicationRecord
  belongs_to :volunteer, class_name: "User", optional: true
  belongs_to :event
  belongs_to :organization
end
