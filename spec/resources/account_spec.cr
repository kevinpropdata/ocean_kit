require "./../spec_helper"

describe OceanKit::Resource do
  context "Account" do
		subject { OceanKit::Resource::Account.new }
		it "exists" do
				expect(subject.info).to_be
  	end

    it "#info is HTTP::Request" do
        expect(subject.info).to be_a Nil
    end
  end
end
