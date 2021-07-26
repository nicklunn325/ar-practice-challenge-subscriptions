class Service < ActiveRecord::Base
    has_many :subscriptions
    has_many :users, through: :subscriptions
    
    def total_subscribers
        self.users.length # .count .size
    end

    def total_revenue
        self.price * self.total_subscribers
    end

    def self.most_popular
        subscribers = 0
        most_pop = nil

        self.all.each do |service|
            if service.total_subscribers > subscribers
                subscribers = service.total_subscribers
                most_pop = service
            end
        end

        most_pop
    end
end