class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :title
      t.string :summary
      t.belongs_to :user
      # Status and winner no longer used
      # t.string :status, default: "pending"
      # t.string :winner, default: nil
      # Timer no longer needed
      # t.datetime :active_start, default: nil
      # t.datetime :active_end, default: nil
      t.timestamps
    end
  end
end

