class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :password
    	t.string :tel
    	t.string :card_no
    	t.integer :admin
	    t.timestamps
    end
  end
end
