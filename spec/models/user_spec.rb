# require 'spec_helper'
require "rails_helper"

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(id:3, name:"Mayra", lastName:"Castro", birthDate:"11/06/1967",password: "12345678", active:"true", email:"mayracastro67@gmail.com")
    expect(user).to be_valid
  end
  it "should fail if the birthdate is wrong" do
    user = User.new(id:3, name:"Mayra", lastName:"Castro", birthDate: Time.now, password: "12345678", active:"true", email:"mayracastro67@gmail.com")
    expect{user.save}.to raise_error(RuntimeError)
  end
  it "is invalid if password is not long enough" do
    user = User.new(id:3, name:"Mayra", lastName:"Castro", birthDate: "11/06/1967", password: "1234", active:"true", email:"mayracastro67@gmail.com")
    expect(user).to be_invalid
  end
  it "is invalid if name is too long" do
    user = User.new(id:3, name:"skjdflkjasdnfkasjdbflkasjdbflkajdsfbglkasdjkisadhflkjsdbfkljsdkljfbnskdjlnfsklduhflksjehnfkljsdnfkjsbnekjfbskdjfbsklejbfksdjfbsjkhdfbk", 
      lastName:"Castro", birthDate: "11/06/1967", password: "1234", active:"true", email:"mayracastro67@gmail.com")
    expect(user).to be_invalid
  end
  it "is invalid if the gmail is wrong" do
    user = User.new(id:3, name:"Mayra", lastName:"Castro", birthDate: "11/06/1967", password: "12345678", active:"true", email:"2doufhg")
    expect(user).to be_invalid
  end
  it "is valid if it saves" do
    user = User.new(id:5, name:"Mayra", lastName:"Castro", birthDate:"11/06/1967",password: "12345678", active:"true", email:"mayracastro67@gmail.com").save!
    expect(user).to eq(true)
  end
  
end
