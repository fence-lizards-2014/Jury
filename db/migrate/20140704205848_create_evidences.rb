class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.text :argument
      t.string :mediatype
      t.string :party
      t.belongs_to :cases_user
      t.timestamps
    end
  end
end
