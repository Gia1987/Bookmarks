require 'pg'
require './lib/database.rb'

describe Database do
  it "returns all records" do
    expect(Database.all).not_to be_nil
  end
end
