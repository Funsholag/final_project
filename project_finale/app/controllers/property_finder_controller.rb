class PropertyFinderController < ApplicationController
  def index

    # api_key=ENV["ZWSID"]
    @response= HTTParty.get("http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=X1-ZWz196vu6dr7rf_3v2ae",
      :query => { :address => params['address'], :citystatezip => params['citystatezip'] })
    puts @response.body

    # render json: @response.parsed_response['searchresults']
    render :index
  end

  def create
    @response= HTTParty.get("http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=X1-ZWz196vu6dr7rf_3v2ae",
      :query => { :address => params['address'], :citystatezip => params['citystatezip'] })
    puts @response.body

    render :results

  end


end
