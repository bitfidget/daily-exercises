require_relative 'spec_helper'
require_relative '../bank'

describe Bank do

  let(:bank){ Bank.new( "Krap Bank" )}

  describe ".new" do
    it 'should create a Bank object' do
      expect(bank).to_not eq nil
    end

    it 'should have a neme' do
      expect(bank.name). to eq "Krap Bank"
    end

    it "should have no accounts" do
      expect(bank.accounts.length). to eq 0
    end
  end

  describe "#create_account" do
    it 'should create an account' do
      bank.create_account("Bob", 200)
      expect(bank.accounts["Bob"]).to eq 200
    end
  end

  describe "#deposit" do
    it "should deposit into a named account" do
      bank.create_account("Bob", 200)
      bank.deposit("Bob", 300)
      expect(bank.accounts["Bob"]).to eq 500
    end
  end

  describe "#balance" do
    it "should retunr the balance for the client" do
      bank.create_account("Bob", 200)
      expect(bank.balance("Bob")).to eq 200
    end
  end

  describe "#withdraw" do
    it "should subtract money from account balance" do
      bank.create_account("Bob", 200)
      bank.withdraw("Bob", 50)
      expect(bank.balance("Bob")).to eq (200 - 50)
    end

    it "should not allow withdrawals that exceed the balance" do
      bank.create_account("Bob", 200)
      bank.withdraw("Bob", 1_000_000)
      expect(bank.balance("Bob")).to eq 200

    end
  end
end