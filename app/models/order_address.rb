class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :post_code, :prefecture_id, :city, :street_address, :building_name, :tel_number, :token

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Enter it as follows (e.g. 123-4567)' }
    validates :city
    validates :street_address
    validates :tel_number, length: { minimum: 10, message: 'is too short' },
                           format: { with: /\A\d+\z/, message: 'is invalid. Input only number' }
    validates :token
  end
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }

  def save
    order = Order.create(user_id:, item_id:)
    Address.create(post_code:, prefecture_id:, city:, street_address:,
                   building_name:, tel_number:, order_id: order.id)
  end
end
