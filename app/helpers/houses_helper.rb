module HousesHelper
    def last_updated(house)
        house.updated_at.strftime("%A, %b %e, at %l:%M %p")
    end
end