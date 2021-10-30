class AddEventRefToTickets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :event, index:true, foreign_key:true
  end
end
