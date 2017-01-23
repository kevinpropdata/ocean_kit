module 	OceanKit
	module Resource
		class DomainRecord
			include OceanKit::Actions

			def all
				get("/domains")
			end

			# Return `Object::JSON`
			#
			#```
			# ok = OceanKit::Client.new
			# ok.domain_record.create(%({"name":"ymail.host","ip_address":"1.2.3.4"}))
			# # => {"domain":{"name":"ymail.host","ttl":null,"zone_file":null}}
			#```
			#
			def create(body)
				post("/domains", body)
			end



		end
	end
end
