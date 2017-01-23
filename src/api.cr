
module OceanKit
	class API
		property key
		property headers
		def initialize
			@key = YAML.parse(File.read("./.key"))
			@headers = HTTP::Headers{"Authorization" => "Bearer #{@key}", "Content-Type" => "application/json"}
		end
	end
end
