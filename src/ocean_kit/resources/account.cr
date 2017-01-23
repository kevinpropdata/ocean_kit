module OceanKit
	module Resource
		class Account
			include OceanKit::Actions
			# :nodoc:
			def info
				get("/account")
			end
		end
	end
end
