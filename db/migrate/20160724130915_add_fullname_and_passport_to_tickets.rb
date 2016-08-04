class AddFullnameAndPassportToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :full_name_user, :string
    add_column :tickets, :passport, :integer 
  end
end
