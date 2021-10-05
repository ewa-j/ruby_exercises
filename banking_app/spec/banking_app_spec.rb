require './banking_app'

describe Balance do
  
  it "can make a deposit snd add money to the balance" do
    expect(subject.deposit(100)).to eq 100
  end

  it "can withdraw money" do
    subject.deposit(200)
    expect(subject.withdraw(100)).to eq 100
  end

  it "will not withdraw money of the balance would be less than 0" do
    expect(subject.withdraw(100)).to eq "You do not have enough available balance to withdraw £100."
  end

  it "can show current balance" do
    expect(subject.show_balance).to eq 0
  end

end