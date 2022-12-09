require 'rspec'
require './lib/room'

RSpec.describe Room do
    let(:bathroom) {Room.new("bathroom")}

    it "exists" do
        expect(bathroom).to be_an_instance_of(Room)
    end

    it "has a name" do
        expect(bathroom.name).to eq("bathroom")
    end



end
