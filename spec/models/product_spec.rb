require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "products" do
    it 'should create Products' do
      expect(Product.new).to be_a Product
    end
  end

  describe 'Validatons' do
    it "Product will return valid with name, price," do
      @category = Category.new(name: 'clothes')
      @product = Product.new(name: 'random crap', price: 25, quantity: 100, category: @category)
      expect(@product).to be_valid
    end
    it "product would retun not valid with out name" do
      @category = Category.new(name: 'stuff')
      @product = Product.new(price: 12, quantity:12, category: @category)
      expect(@product).to_not be_valid
    end
    it "product would not be valid with out price" do
      @category = Category.new(name: 'things')
      @product = Product.new(name: "Fluffy butts", quantity:200, category: @category)
      expect(@product).to_not be_valid
    end
    it "product would not be valid with out a quantity" do
      @category = Category.new(name: "crap")
      @product = Product.new(name: "old shoes", price:12, category: @category)
      expect(@product).to_not be_valid
    end
    it "product would not be valid with out a category" do
      @category =Category.new(name: "nothing cause it dosent exist")
      @product = Product.new(name: "blackness", price: 1000, quantity:2)
      expect(@product).to_not be_valid
    end
  end
end
