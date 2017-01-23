module OceanKit
	module Actions

		def get(path, options = nil)
			if options
				request_with_body(path, options)
			else
				simple_request(path)
			end
		end

		def post(path,options = nil)
			simple_request_post(path, options)
		end

		def request_with_body(path, options)
			headers = HTTP::Headers{"Authorization" => "Bearer #{OceanKit.key}", "Content-Type" => "application/json"}
			response = HTTP::Client.get(url: "https://api.digitalocean.com/v2/#{path}", headers: headers, body: options)
			response.body
		end

		def simple_request(path)
			headers = HTTP::Headers{"Authorization" => "Bearer #{OceanKit.key}", "Content-Type" => "application/json"}
			response = HTTP::Client.get(url: "https://api.digitalocean.com/v2/#{path}", headers: headers)
			response.body
		end

		def simple_request_post(path, options)
			headers = HTTP::Headers{"Authorization" => "Bearer #{OceanKit.key}", "Content-Type" => "application/json"}
			response = HTTP::Client.post(url: "https://api.digitalocean.com/v2/#{path}", headers: headers, body: options)
			response.body
		end
	end

end
