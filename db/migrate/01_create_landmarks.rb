class CreateLandmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.integer :figure_id
      t.integer :year_cpmpleted
    end
  end
  # raise "Write CreateLandmarks migration here"
end
