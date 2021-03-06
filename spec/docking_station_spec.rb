require "docking_station"

describe DockingStation do

  describe "#release_bike" do

    it "expects docking station to releases working bikes" do
      bike = Bike.new
      expect(bike).to be_working
    end

    it "expects docking station to respond to release_bike method" do
      expect(subject).to respond_to(:release_bike)
    end

    it "expects docking station to dock with 1 bike" do
      expect(subject).to respond_to(:dock).with(1).argument
    end
  
    it "expects docking station to respond to bikes" do
      expect(subject).to respond_to(:bikes)
    end

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  
    it "Error when no bikes avaliable" do
      expect {subject.release_bike}.to raise_error "No bikes avaliable"
    end

  end

  describe "#dock" do

      it "Error when dock full" do
        subject.capacity.times {subject.dock(Bike.new)}   
        expect {subject.dock(Bike.new)}.to raise_error "No room avaliable"
      end

      it "expects docking station to dock bikes" do
        bike = Bike.new
        expect(subject.dock(bike)).to eq [bike]
      end

      it "counts docked bikes" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes).to eq [bike]
      end

   end


  describe "initialize" do

    subject { DockingStation.new }
    let(:bike) {Bike.new}

    it "defaults capacity" do
      described_class::DEFAULT_CAPACITY.times do
      subject.dock(bike) 
      end
        expect{ subject.dock(bike) }.to raise_error "No room avaliable"
    end

    it "Capacity can change" do
      station = DockingStation.new(30)
      30.times { station.dock Bike.new }
      expect{ station.dock Bike.new }.to raise_error "No room avaliable"
    end
    
  end

end
