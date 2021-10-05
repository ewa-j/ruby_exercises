require './entry'
require './diary'

describe Entry do
  let(:unlocked_diary) { instance_double Diary, lock: false }

  it "adds entry to the diary" do
    subject.add_entry("Entry 1", unlocked_diary)
    expect(subject.get_entries(unlocked_diary)).to eq(["Entry 1"])
  end

  it "raises error when adding to the locked diary" do
    expect { subject.add_entry("Something", Diary.new) }.to raise_error "Diary is locked!"
  end

  it "puts all entries" do
    expect(subject.get_entries(unlocked_diary)).to eq([])
  end

  it "raises error when getting entries from locked diary" do
    expect { subject.get_entries(Diary.new) }.to raise_error "Diary is locked!"
  end

end