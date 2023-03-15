require 'rails_helper'

RSpec.describe User, type: :model do
  #Factories
  let(:user1) {create(:user)}
  let(:user2) {create(:user)}

  #Comienzan los tests
  it "is expect to be valid with valid attributes" do
    expect(user1).to be_valid
  end

  it "is expect to be invalid without RUT" do
    user1.rut = ""
    expect(user1).not_to be_valid
  end

  it "is expect to be invalid without name" do
    user1.name = ""
    expect(user1).not_to be_valid
  end

  it "is expect to be invalid without email" do
    user1.email = ""
    expect(user1).not_to be_valid
  end

  it "is expect to be invalid if two users use the same email " do
    user1.email = user2.email
    expect(user1).not_to be_valid
  end
  # Fin de los tests
end
