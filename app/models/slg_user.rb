class SlgUser < ActiveModelSerializers::Model
  # < ApplicationRecord
  serialize :role, Array
end
