class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.string :title
      t.datetime :date
      t.string :body

      t.timestamps
    end
  end
end
