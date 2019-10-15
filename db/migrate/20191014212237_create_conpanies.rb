class CreateConpanies < ActiveRecord::Migration[6.0]
  def change
    create_table :conpanies do |t|
      t.string :name

      t.timestamps
    end
  end
end
