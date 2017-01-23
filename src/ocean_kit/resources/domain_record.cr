require "json"
module 	OceanKit
	module Resource
		class DomainRecord
			include OceanKit::Actions
			def initialize(headers : HTTP::Headers)
				@headers = headers
			end

			def all
				request("GET", "/domains", @headers)
			end

			# Return `Object::JSON`
			#
			#```
			# ok = OceanKit::Client.new
			# ok.domain_record.create(%({"name":"ymail.host","ip_address":"1.2.3.4"}))
			# # => {"domain":{"name":"ymail.host","ttl":null,"zone_file":null}}
			#```
			#
			def create(name, ip_address)
				body = { "name" => name, "ip_address" => ip_address }
				request("POST", "/domains", @headers, body.to_json)
			end



		end
	end
end
