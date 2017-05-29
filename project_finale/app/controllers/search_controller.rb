class SearchController < ApplicationController
  before_action :fetch_results
  require 'httparty'
  def search
  end

  protected

    def fetch_results()
      return unless request.post?
      begin
        # url="http://www.zillow.com/webservice/GetSearchResults.htm?"
        # api_path= "http://www.zillow.com/webservice/GetZestimate.htm?"
        # apiKey= "zws-id="
        # @results = HTTParty.get(api_path.to_s + apiKey.to_s)
        @results= HTTParty.get("http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=",
            :query => { :address => "", :citystatezip => "" })
        now = Time.now.to_f
        # @results= HTTParty.get('http://www.zillow.com/webservice/GetSearchResults.htm?zws-id='), params.slice(:address, :citystatezip)
        # @results  = Zillow::Api::Client.get_search_results params.slice(:address, :citystatezip)
        @results  = [ @results ] unless @results.is_a?(Array)
        @duration = ( Time.now.to_f - now ).round(2)
      rescue Zillow::Api::Exception::ZillowError => e
        @exception = e
      end
    end
end
