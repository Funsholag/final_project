class PropertyFinderController < ApplicationController
  attr_accessor :query
  def index
    # url="http://www.zillow.com/webservice/GetSearchResults.htm?"
    api_path= "http://www.zillow.com/webservice/GetSearchResults.htm?"

    # apiKey= ENV['zwsid']
    # apiKey= "zws_id"
    location= api_path.to_s + apiKey.to_s
    # @results= HTTParty.get(location,
      # :query => { :'zws_id' => "", :address => "", :citystatezip => "" })
    # puts @results
    # render :index
    # now = Time.now.to_f
    @results = HTTParty.get('http://www.zillow.com/webservice/GetSearchResults.htm? + apiKey')
    puts @results
    # @results= Zillow::Api::Client.get_search_results params.slice(:address, :citystatezip)
    # @results  = [ @results ] unless @results.is_a?(Array)
    # @duration = ( Time.now.to_f - now ).round(2)
    # @address="&address=" + params[:address].to_s
    # puts "blah", @address.inspect
    # @citystatezip="&citystatezip=" + params[:citystatezip].to_s

    # puts @response['searchresults']["results"]
    # @response= HTTParty.get(result)
    # @response.parsed_response
    # puts "**response", @response.parsed_response
    # @array_of_results = @response.parsed_response['searchresults']['response']['results']['result']
    # render json: @response.parsed_response['searchresults']['response']
    # render html: @response
  end
  # def search
  #   @notes = Note.where(user_id: current_user.id)
  #   puts 'search acto=fdsjfdsj'
  #   puts params[:query]
  #   @query = "%#{params[:query]}%"
  #   @search = Note.where("content LIKE ? or title LIKE ?", @query, @query)
  #
  #   render :index
  # end

  # def results
  #   render :index
  # end
  # def create
  #   api_path= "http://www.zillow.com/webservice/GetZestimate.htm?"

  #   @response = HTTParty.get(api_path.to_s + apiKey.to_s)
  #   puts @response
  #   @response.parsed_response
  #   puts "**response", @response.parsed_response
    # render :index

    # @response = Info.new(params[:info])
    # puts @response.parsed_response


    # httparty = RemoteGem.find("httparty")
      # puts @response
    # puts @response.parsed_response
    # redirect_to property_finder_path
    # render :index

  # end

end
