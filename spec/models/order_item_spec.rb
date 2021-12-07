require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it "is valid with valid attributes" do
    orderi = OrderItem.new(id:2, order_id:1, product_id:1, total:0, quantity:3)
    expect(orderi).to be_valid
  end
  it "is invalid if quantity is less than 1" do
    orderi = OrderItem.new(id:2, order_id:1, product_id:1, total:0, quantity:0)
    expect(orderi).to be_invalid
  end
  it "is invalid if try to add a unactive product" do
    orderi = OrderItem.new(id:2, order_id:1, product_id:2, total:0, quantity:1)
    expect{orderi.save}.to raise_error(RuntimeError)
  end
  it "is invalid if try to add a product that was already added to that order" do
    orderi = OrderItem.new(id:2, order_id:1, product_id:1, total:0, quantity:2)
    expect{orderi.save}.to raise_error(RuntimeError)
  end
end
