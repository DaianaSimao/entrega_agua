class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pedidos_como_cliente, class_name: 'Pedido', foreign_key: 'cliente_id'
  has_many :pedidos_como_vendedor, class_name: 'Pedido', foreign_key: 'entregador_id'
end
