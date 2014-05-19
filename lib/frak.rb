require 'history'

class Frak

  def initialize(type, query)
    @type = type
    @query = query

    build_query
  end

  def build_query 
    @query = @query.join('+')

    search_type
  end

  def search_type
    case @type
    when '-w'
      @path = search_uri
    when '-i'
      @path = image_uri.join('&tbm=isch')
      # https://www.google.com/search?q=ruby+gem&tbm=isch
    when '-v'
      @path = search_uri.join('&tbm=vid')
      #q=ruby+gem&tbm=vid
    when '-n'
      @path = search_uri.join('&tbm=nws')
      #q=ruby+gem&tbm=nws
    end
    return @path
  end

  def search_uri
    Addressable::URI.parse('https://www.google.com/#q=').join(@query)
  end

  def image_uri
    Addressable::URI.parse('https://www.google.com/search?q=').join(@query)
  end

  def write_history
    History.new(@type, @query)
  end
end