require "./ocean_kit/**"
require "http/client"
require "yaml"
module OceanKit
	# :nodoc:
	def self.key
		YAML.parse(File.read("./.key"))
	end
end
