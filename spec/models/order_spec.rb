require 'rails_helper'

RSpec.describe Order, type: :model do
  it "is valid with valid attributes" do
    order = Order.new(id:1, orderNumber: 100001, user_id: 4, date: '1/12/2021', total: 0.0, active: true)
    expect(order).to be_valid
  end
  it "is invalid with duplicate order number" do
    order = Order.new(id:1, orderNumber: 73400274, user_id: 4, date: '1/12/2021', total: 0.0, active: true)
    expect(order).to be_invalid
  end
  it "is invalid if ordernumber is less than 100000" do
    order = Order.new(id:1, orderNumber: 99, user_id: 4, date: '1/12/2021', total: 0.0, active: true)
    expect(order).to be_invalid
  end
  it "cannot be saved if the user has another order active" do
    order = Order.new(id:2, orderNumber: 100001, user_id: 3, date: '7/12/2021', total: 0.0, active: true)
    expect{order.save}.to raise_error(RuntimeError)
  end
end
