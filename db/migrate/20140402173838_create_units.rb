class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.column :number, :integer
      t.column :title, :string

      t.timestamps
    end
  end
end
