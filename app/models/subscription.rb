class Subscription < ActiveRecord::Base
    belongs_to :user
    belongs_to :service

    def description
        "#{self.user.username} subscribes to #{self.service.name} for #{self.service.price.round(2)}"
    end
end