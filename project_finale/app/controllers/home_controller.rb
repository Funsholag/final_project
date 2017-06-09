class HomeController < ApplicationController
  def index
    @response= HTTParty.get("http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=#{ENV['ZWSID']}",
      :query => { :address => params['address'], :citystatezip => params['citystatezip'] })
    puts @response.body
    # @response1= HTTParty.get('http://www.zillow.com/webservice/GetComps.htm?ENV["zwsid"]',
    #   :query => { :address => params['address'], :citystatezip => params['citystatezip'] })
    # puts @response1.body


    render :index
  end

  def create
    @response= HTTParty.get("http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=#{ENV['ZWSID']}",
      :query => { :address => params['address'], :citystatezip => params['citystatezip'] })
    puts @response.body

    # @response1= HTTParty.get('http://www.zillow.com/webservice/GetComps.htm?ENV["zwsid"]',
    #   :query => { :address => params['address'], :citystatezip => params['citystatezip'] })
    # puts @response1.body

    render :results
    # render json: @response.parsed_response['searchresults']['response']['results']['result']

  end


end
