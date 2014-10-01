require './spec/spec_helper'
require './lib/person'

describe "Person" do
  let(:person) {
    Person.new( { name: "Mike" } )
  }

  subject { person }

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:gender) }
  it { should respond_to(:author) }

  it { should respond_to(:first_initial) }

  describe "first_initial" do
    it "returns first letter of name" do
      expect(person.first_initial).to eq("M")
    end
  end
end
