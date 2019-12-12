require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
    # same as - expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  # 'is_expected_to' is shorter version of writing 'expect(subject).to'

  it { is_expected.to respond_to(:bikes)}

  it "docks bikes" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it "counts docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe "#release_bike" do
    it "Error when no bikes avaliable" do
      expect {subject.release_bike}.to raise_error "No bikes avaliable"
    end
  end

  describe "#dock" do
    it "Error when dock full" do
      subject.capacity.times {subject.dock(Bike.new)}   
      expect {subject.dock(Bike.new)}.to raise_error "No room avaliable"
      end
   end

# NAMESPACE OPERATOR , when calling a constant in rspec, qualify the constant 
# with the class in which it is is declared. DockingStation::DEFAULT_CAPACITY

  describe "initialization" do
    subject { DockingStation.new }
    let(:bike) {Bike.new}
      it "defaults capacity" do
       described_class::DEFAULT_CAPACITY.times do
       subject.dock(bike) 
       end
    expect{ subject.dock(bike) }.to raise_error "No room avaliable"
    end
  end

# Above has the default capacity instead. Below is the previous test.  
# describe "initialize" do
#   it "Capacity can change" do
#     station = DockingStation.new(30)
#     30.times { station.dock Bike.new }
#     expect{ station.dock Bike.new }.to raise_error "No room avaliable"
#   end
 # end

end
