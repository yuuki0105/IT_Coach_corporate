class AdColumnContacts < ActiveRecord::Migration[6.1]
  def change

    remove_column :contacts,:will
    # remove_column :contacts,:budged_id
    remove_column :contacts,:tech_ability_id
    remove_column :contacts,:business_manner_id
    remove_column :contacts,:communication_ability_id

  end
end
