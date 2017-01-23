module OceanKit
	class Client

		def initialize(key)
			@uri = URI.parse("https://api.digitalocean.com/v2")
			@headers = HTTP::Headers{"Authorization" => "Bearer #{key}", "Content-Type" => "application/json"}
		end

		def account
			OceanKit::Resource::Account.new
		end

		def domain_record
			OceanKit::Resource::DomainRecord.new
		end


	end
end
