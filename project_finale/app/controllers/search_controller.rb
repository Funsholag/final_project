class SearchController < ApplicationController
  before_action :fetch_results
  require 'httparty'
  def search
  end

  protected

    def fetch_results()
      return unless request.post?
      begin

        @results= HTTParty.get("http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=",
            :query => { :address => "", :citystatezip => "" })
        now = Time.now.to_f

        @results  = [ @results ] unless @results.is_a?(Array)
        @duration = ( Time.now.to_f - now ).round(2)
      rescue Zillow::Api::Exception::ZillowError => e
        @exception = e
      end
    end
end
