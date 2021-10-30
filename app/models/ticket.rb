class Ticket < ApplicationRecord
    validates:name, :presence=>true, :length=>{:minimum=>6}
    validates:email_address, :presence=>true
    validates:price, :presence=>true
    validates:seat_id_seq, :presence=>true
    validates:phone, :presence=>true
    belongs_to:event
    belongs_to:user
    validate:price_must_fit_the_range
  #  validate:all_tickets_sold

    def price_must_fit_the_range
      if !price.nil?
        if (price < event.price_low)||(price > event.price_high)
            errors.add('Cena biletu','musi mieścić się w widełkach cenowych wydarzenia')
        end
      end
    end

   # def all_tickets_sold
   #     if Event.count(:conditions 'id=>ticket.event_id') > 2
   #        errors.add('Bilety na ten koncert', 'zostały wyprzedane')
   #     end
  #  end


end
