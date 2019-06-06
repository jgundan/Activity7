class CreateClassSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :class_seats do |t|
      t.string :class_name
      t.decimal :price
      t.boolean :food_service
      t.string :Seat_type
      t.string :leg_room

      t.timestamps
    end
  end
end
