module OceanKit
	module SSHKeyResource
			def ssh_key
				self
			end

			def all
				get("/account/keys", options)
			end

			def create(options)
				get("/account/keys", options)
			end

			def find(id)
				get("/account/keys/#{id}")
			end

			def delete
				dstroy("/account/keys/#{id}")
			end

			def update(id, new_name)
				params = {
					"name" => new_name
				}
				put("/account/keys/#{id}", params)
			end
		end
end
