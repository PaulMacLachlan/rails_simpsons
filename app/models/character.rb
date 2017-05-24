class Character < ActiveRecord::Base
    validates :first_name, :last_name, :workplace, presence: true
end
