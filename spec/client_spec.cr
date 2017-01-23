require "./spec_helper"

describe OceanKit::Client do
	# WebMock.wrap do
	#   WebMock.stub(:any, "digitalocean.com")#.to_return(body: "OK")
	# end
	context "Client" do
		subject { OceanKit::Client.new(OceanKit.key) }

		it "client exists" do
			expect(subject).to_be
		end

		it "can access to account" do
			expect(subject.account).to be_a OceanKit::Resource::Account
		end

	end
end
# WebMock.stub(:any, "digitalocean.com")
