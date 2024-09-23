class CreatePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :pedidos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :entregador, null: false, foreign_key: true
      t.integer :quantidade
      t.decimal :valor_total, precision: 10, scale: 2
      t.string :status

      t.timestamps
    end
  end
end
