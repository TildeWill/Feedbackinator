class CreateTables < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :password_digest
  		t.string :cohort
    end

  	create_table :feedbacks do |t|
  		t.belongs_to :category
  	  t.belongs_to :user
  		t.belongs_to :subfeedback
      t.string :title
  		t.string :content
  	end

  	create_table :categories do |t|
  		t.string :name
  	end

  	create_table :questionnaires do |t|
  		t.belongs_to :user
  		t.integer :challenge_level
  		t.integer :help_level
  	end

  end
end
