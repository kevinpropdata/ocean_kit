require "./ocean_kit/**"
require "http/client"
require "yaml"
module OceanKit
	# :nodoc:
	def self.key
		 key = YAML.parse(File.read("./.key"))
		 key["API-KEY"]
	end
end

ok = OceanKit::Client.new(OceanKit.key)
puts ok.domain_record.all.body #create("test.ymail.host",  "1.2.3.4")
# puts ok.account.class
