require './diary'

describe Diary do

  it "changes the status of locked to false" do
    expect(subject.unlock).to eq false
  end

end