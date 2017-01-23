module OceanKit
	class Client

		def initialize(key)
			# @key = OceanKit.key
			@uri = URI.parse("https://api.digitalocean.com/v2")
			@headers = HTTP::Headers{"Authorization" => "Bearer #{key}", "Content-Type" => "application/json"}

		end

		def account
			OceanKit::Resource::Account.new @headers
		end

		def domain_record
			OceanKit::Resource::DomainRecord.new @headers
		end


	end
end
