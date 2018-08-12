class CreateArtists < ActiveRecord::Migration
  def up #do; execute when the migration is run
  end

  def down #undo; execute when the migration is rolled back
  end
  def change #an alternative to up and down; change is more common for basic migrations
   create_table :artists do |t|
     t.string :name
     t.string :genre
     t.integer :age
     t.string :hometown
   end
 end

end
