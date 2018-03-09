class CreateContactForms < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_forms do |t|
    	t.string :name
    	t.string :email
    	t.string :subject
    	t.string :contact_number
    	t.text   :message
      t.timestamps
    end
  end
end
