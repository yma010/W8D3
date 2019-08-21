class CreateResponse < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id, null: false
      t.integer :response_id, null: false
      
      t.timestamps
    end

    add_index :responses, :response_id
    add_index :responses, :answer_choice_id
  end
end
