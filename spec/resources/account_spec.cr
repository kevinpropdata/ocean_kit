require "./../spec_helper"

describe OceanKit::Resource do
  context "Account" do
		subject { OceanKit::Resource::Account.new }
		it "exists" do
				expect(subject).to_be
  	end
  end
end
