class CreateToasts < ActiveRecord::Migration
  def change
    create_table :toasts do |t|

      t.timestamps null: false
    end
  end
end
