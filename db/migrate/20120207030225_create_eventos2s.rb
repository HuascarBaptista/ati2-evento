class CreateEventos2s < ActiveRecord::Migration
  def change
    create_table :eventos2s do |t|
      t.string :nombre
      t.string :titulo
      t.datetime :fecha
      t.string :contenido

      t.timestamps
    end
  end
end
