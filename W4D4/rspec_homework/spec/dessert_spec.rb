require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cookies) { Dessert.new("cookies", 100, chef)}

  describe "#initialize" do
    it "sets a type" do 
      expect(cookies.type).to eq("cookies")
    end

    it "sets a quantity" do 
      expect(cookies.quantity).to_not eq(0)
    end

    it "starts ingredients as an empty array" do 
      expect(cookies.ingredients.length).to eq(0)
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("test", "invalid_quantity", "chef") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      cookies.add_ingredient("flour")
      expect(cookies.ingredients.length).to_not eq(0)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["ing_1", "ing_2", "ing_3", "ing_4"]
      ingredients.each {|ing| cookies.add_ingredient(ing)}
      expect(cookies.ingredients).to eq(ingredients)
      cookies.mix!
      expect(cookies.ingredients).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    cookies.eat(20)
    expect(cookies.quantity).to eq(80)
    end

    it "raises an error if the amount is greater than the quantity"do
    cookies.eat(101)
    expect(cookies.eat(101)).to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef.to receive(:titleize)).and_return("Chef Chef the Great Baker")
      
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:bake).with(cookies)
      cookies.make_more
    end
  end
end
