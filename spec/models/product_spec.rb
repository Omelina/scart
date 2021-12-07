require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with valid attributes" do
    product = Product.new(id:2, name:'Audifonos', code:'AUD684', price: 10000, quantity: 4, active: true)
    expect(product).to be_valid
  end
  it "is invalid if code is repeated" do
    product = Product.new(id:2, name:'Audifonos', code:'EST101', price: 10000, quantity: 4, active: true)
    expect(product).to be_invalid
  end
  it "is invalid if the price is less than 0.0" do
    product = Product.new(id:2, name:'Audifonos', code:'AUD684', price: -4000, quantity: 8, active: true)
    expect(product).to be_invalid
  end
  it "is invalid if the quantity is less than 1" do
    product = Product.new(id:2, name:'Audifonos', code:'AUD684', price: 4000, quantity: 0, active: true)
    expect(product).to be_invalid
  end
  it "is invalid if the name is too long" do
    product = Product.new(id:2, name:'slkdjfkjsndkjfskjdfkjsdnfjksnjkdnfjsbdkjfnskjdhfjksndkhjfbskjdjfkhsjkdnfklsjejsdfsdfsdfsdfsergdfhdfgdsfsdjknfkjsdkfsjidnfkjsndjikfnsjkd',
       code:'AUD684', price: 4000, quantity: 8, active: true)
    expect(product).to be_invalid
  end
end
