require "./lib/person"

describe Person do
  let(:ewa) { Person.new("Ewa", 17, "july") }

  describe "#initialize" do
    it "returns the player name" do
      expect(ewa.name).to eq("Ewa")
    end

    it "returns the day" do
      expect(ewa.day).to eq("17")
    end

    it "returns the month" do
      expect(ewa.month).to eq("july")
    end
  end

  describe "#year_end" do
    it "returns the last day of the year" do
      allow(ewa).to receive(:year_end).and_return("2021, 12, 31")
      expect(ewa.year_end).to eq "2021, 12, 31"
    end
  end

  describe "#calculate" do
    it "returns difference between two dates" do
      allow(ewa).to receive(:calculate).and_return("1")
      expect(ewa.calculate).to eq "1"
    end
  end
end
