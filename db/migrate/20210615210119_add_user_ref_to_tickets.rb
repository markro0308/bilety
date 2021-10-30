class AddUserRefToTickets < ActiveRecord::Migration[6.1]
  def change
  end
  add_reference :tickets, :user, index:true, foreign_key:true
end
