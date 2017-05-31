class PropertyFinderController < ApplicationController
  require 'net/http'
  attr_accessor :query
  def index
    # url="http://www.zillow.com/webservice/GetSearchResults.htm?"
    api_path= "http://www.zillow.com/webservice/GetSearchResults.htm?"
    @address = params['address']
    @citystatezip = params['citystatezip']

    # @apiKey= ""
    # apiKey= "zws_id"
    # location= api_path.to_s + apiKey.to_s
    # @results = HTTParty.get('http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=' + @apiKey + '&address=' + @address + '&citystatezip=' + @citystatezip)
    # @results = HTTParty.post('http://localhost:3000/property_finder', {address: '', citystatezip: ''})
    # @result = HTTParty.post('http://localhost:3000/property_finder', :body => {:address => '', :citystatezip => ''}.to_json, :headers => { 'Content-Type' => 'application/json' })
    # response= HTTParty.get(location,
    #   :query => { :address => "2628 Broadway New York, NY", :citystatezip => "10025" })
    # @results= HTTParty.post('localhost:3000',
    #   :query => { :address => "2628 Broadway New York, NY", :citystatezip => "10025" })
    # @results = HTTParty.post('localhost:3000',
    # :body => { :zpid => '',
    #            :address => '',
    #            :zestimate => '',
    #            :priority => 'Normal',
    #          }).to_json

    @response= HTTParty.get('http://www.zillow.com/webservice/GetSearchResults.htm?',
      :query => { :address => "2628 Broadway New York, NY", :citystatezip => "10025" })
    puts @response.body

    # render json: @response.parsed_response['searchresults']['response']['results']['result']

    render :index
  end
  # def search

  #   render :index
  # end

  # def results
  #   render :index
  # end
  def create
    @response= HTTParty.get('http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=',
      :query => { :address => params['address'], :citystatezip => params['citystatezip'] })
    puts @response.body

    render :results

  end


end
