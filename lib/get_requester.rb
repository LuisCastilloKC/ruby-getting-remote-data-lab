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


# GetRequester
#   is a class that can be initiated by passing in a URL
#   get_response_body
#     is an instance method on the GetRequester class
#     sends a GET request to the URL provided on initialization, returning the body of the request
#   parse_json
#     is an instance method on the GetRequester class
#     converts JSON returned from 'get_response_body' into Ruby data structures

# Finished in 6.23 seconds (files took 0.24079 seconds to load)
# 5 examples, 0 failures

#  @MacBook-Pro ruby-getting-remote-data-lab % learn test
# {"name"=>"Daniel", "occupation"=>"LG Fridge Salesman"}
# {"name"=>"Joe", "occupation"=>"WiFi Fixer"}
# {"name"=>"Avi", "occupation"=>"DJ"}
# {"name"=>"Howard", "occupation"=>"Mountain Legend"}

# GetRequester
#   is a class that can be initiated by passing in a URL
#   get_response_body
#     is an instance method on the GetRequester class
#     sends a GET request to the URL provided on initialization, returning the body of the request
#   parse_json
#     is an instance method on the GetRequester class
#     converts JSON returned from 'get_response_body' into Ruby data structures

# Finished in 1.19 seconds (files took 0.46954 seconds to load)
# 5 examples, 0 failures