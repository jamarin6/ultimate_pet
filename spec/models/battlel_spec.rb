require 'rails_helper'
require 'spec_helper'

RSpec.describe Battlel, type: :model do
  describe "validation" do
    it "is valid with valid data" do
      @battlel = Battlel.create!(pet1: "chuli", pet2: "dixie", date: "2016-01-15 09:02:27 +0100", winner: "chuli")
      expect(@battlel).to be_valid
    end

    it "is valid without winner" do
      @battlel = Battlel.new(pet1: "chuli", pet2: "dixie", date: "2016-01-15 09:02:27 +0100")
      expect(@battlel).to be_valid
    end

    it "is invalid without pet1" do
      @battlel = Battlel.new(pet2: "dixie", date: "2016-01-15 09:02:27 +0100", winner: "dixie")
      expect(@battlel).to be_invalid
    end

    it "is invalid without pet2" do
      @battlel = Battlel.new(pet1: "chuli", date: "2016-01-15 09:02:27 +0100", winner: "chuli")
      expect(@battlel).to be_invalid
    end

    it "is invalid without date" do
      @battlel = Battlel.new(pet1: "chuli", pet2: "dixie", winner: "chuli")
      expect(@battlel).to be_invalid
    end

    # it "is invalid when pet1 and pet2 have the same owner" do
    #   @user = User.create!(name: "jose", email: "jose@example.com")
    #   @pet1 = Pet.new(name: "chuli", owner: "jose", age: 6, sex: "Male", animaltype: "Dog", user_id: @user.id)
    #   @pet2 = Pet.new(name: "dixie", owner: "jose", age: 22, sex: "Male", animaltype: "Dog", user_id: @user.id)
    #   @battlel = Battlel.new(pet1: @pet1, pet2: @pet2, date: "2016-01-15 09:02:27 +0100")
    #   expect(@battlel).to be_invalid
    # end

  end
end
