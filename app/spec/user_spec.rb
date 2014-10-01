require './spec/spec_helper'
require './lib/user'

describe "User" do
  let(:user) {
    User.new( { name: "Mike" } )
  }

  subject { user }

  it { should respond_to(:print_farewell) }

end