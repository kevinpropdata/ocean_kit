module OceanKit
	module Resource
		class Account

			include OceanKit::Actions
			
			def initialize(headers : HTTP::Headers)
				@headers = headers
			end
			# :nodoc:
			def info
				request("GET", "/account", @headers).body
			end
		end
	end
end
