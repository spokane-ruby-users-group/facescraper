require 'koala'

class Facescraper
  attr_accessor :name

  def initialize(profile)
  	@name = profile
    @graph = Koala::Facebook::API.new
  end	

  def get_profile    
  	@graph.get_object(@name)
  end

  def get_photos
  	@graph.get_connections(@name, "photos")
  end
end