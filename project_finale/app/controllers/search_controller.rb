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
# @property_finder = property_finder_url
# @user = current_user
# url="http://www.zillow.com/webservice/GetSearchResults.htm?"
# api_path= "http://www.zillow.com/webservice/GetZestimate.htm?"
# @response = HTTParty.get(api_path.to_s + apiKey.to_s)
# puts @response
# render :index
#
# @address="&address=2628 Broadway New York, NY 10025"
# @citystatezip="&citystatezip=10025"
# @address="&address=" params[:address]
# @citystatezip="&citystatezip" params[:citystatezip]
# @address = '&' + 'params[:address]'
# @address="&address=" + params[:address].to_s
# puts "blah", @address.inspect
# @citystatezip = '&' + 'params[:citystatezip]'
# @citystatezip="&citystatezip=" + params[:citystatezip].to_s
# location = @address + @citystatezip
# result = url + api_path + location

# puts @response['searchresults']["results"]


# @response= HTTParty.get(result)
# @response.parsed_response
# puts "**response", @response.parsed_response
# @array_of_results = @response.parsed_response['searchresults']['response']['results']['result']
# render json: @response.parsed_response['searchresults']['response']
# render html: @response
