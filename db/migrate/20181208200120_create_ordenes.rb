class CreateOrdenes < ActiveRecord::Migration[5.2]
  def change
    create_table :ordenes do |t|
      t.integer :cliente_id
      t.integer :producto_id
      t.integer :numero_orden
      t.date :fecha
      t.integer :cantidad
      t.float :precio_venta

      t.timestamps
    end
    add_foreign_key :ordenes, :clientes
   add_foreign_key :ordenes, :productos
  end
end
