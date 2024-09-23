class CreatePagamento < ActiveRecord::Migration[7.2]
  def change
    create_table :pagamentos do |t|
      t.decimal :valor_pago
      t.string :forma_pagamento
      t.references :pedidos, null: false, foreign_key: true

      t.timestamps
    end
  end
end
