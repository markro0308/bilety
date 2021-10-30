class Event < ApplicationRecord
    validates:artist, :presence=>true
    validates:description, :presence=>false
    validates:price_low, :presence=>true, :numericality=>true
    validates:price_high, :presence=>true, :numericality=>true
    validates:event_date, :presence=>true
    has_many:tickets
    validate:event_date_not_from_past
    validate:min_price_lower_than_max

    def event_date_not_from_past
        if event_date < Date.today
            errors.add('Data wydarzenia','nie może być z przeszłości')
        end
    end

    def min_price_lower_than_max
        if price_low > price_high
            errors.add('Minimalna cena musi być','mniejsza od maksymalnej')
        end
    end
end
