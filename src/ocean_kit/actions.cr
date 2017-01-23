module OceanKit
	module Actions

		def request(method, path, headers, options : String|Nil = nil)
			if headers == nil
				HTTP::Client.exec(method: method, url: "https://api.digitalocean.com/v2#{path}", headers: headers)
			else
				HTTP::Client.exec(method: method, url: "https://api.digitalocean.com/v2#{path}", headers: headers, body: options)
			end
		end

		def response(request)
			request.body
		end
	end

end
