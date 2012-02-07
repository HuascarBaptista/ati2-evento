class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :titulo
      t.datetime :fecha
      t.string :contenido

      t.timestamps
    end
  end
end
