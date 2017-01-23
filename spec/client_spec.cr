require "./spec_helper"

describe OceanKit::Client do
	context "Client" do
		subject { OceanKit::Client.new(OceanKit.key) }

		it "client exists" do
			expect(subject).to_be
		end

	end
end
