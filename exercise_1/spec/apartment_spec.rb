require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
    let(:apartment) {Apartment.new}
    
    it "exists" do
        expect(apartment).to be_an_instance_of(Apartment)
    end       

    it "starts out not rented" do
        expect(apartment.is_rented?).to eq(false)
    end

    it "can be rented" do
        apartment.rent
        expect(apartment.is_rented?).to eq(true)
    end

end