require "bike"

describe Bike do

  # it { is_expected.to respond_to :working? }
  it "expects bikes to repspond to the method working?" do
    expect(subject).to respond_to(:working?)
  end

  it "bikes can be reported broken" do
    subject.report_broken
    expect(subject).to be_broken
  end
end
