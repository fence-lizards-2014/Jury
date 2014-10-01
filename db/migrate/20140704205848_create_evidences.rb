
class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.text :argument
      t.string :video_url
      t.string :photo_url
      t.belongs_to :case
      t.timestamps
    end
  end
end
