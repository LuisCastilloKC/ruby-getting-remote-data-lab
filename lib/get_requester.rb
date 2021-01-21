# Write your code here

require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize(url)
        @url = url
        get_response_body()
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        @response = response.body
    end

    def parse_json
        JSON.parse(@response)
    end

end

puts GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json').parse_json