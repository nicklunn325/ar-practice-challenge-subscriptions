class User < ActiveRecord::Base
    has_many :subscriptions
    has_many :services, through: :subscriptions

    def list_of_services
        self.services.each.with_index(1) do |service, index|
            puts "#{index}. #{service.name}"
        end
    end

    def total_cost_of_services
        # self.services.reduce(0) do |accum, service|
        #     accum + service.price
        # end
        self.services.pluck(:price).sum
    end

    def self.order_alphabetically
        self.order(:username)
    end

end