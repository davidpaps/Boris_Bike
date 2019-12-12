require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    # was bike = subject.release_bike
    bike = Bike.new
    expect(bike).to be_working
    # expect(bike.working?).to eq true
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


  # Hashtag before a method name implies it is an instance method.
  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  # When the station is empty
  describe "#release_bike" do
    it "Error when no bikes avaliable" do
      expect {subject.release_bike}.to raise_error "No bikes avaliable"
    end
  end

describe "#dock" do
  it "Error when dock full" do
    20.times {subject.dock(Bike.new)}
    expect {subject.dock(Bike.new)}.to raise_error "No room avaliable"
  end
end

end
