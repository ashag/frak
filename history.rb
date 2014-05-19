class History

  def initialize(type, query)
    @type = type
    @query = query
  end

  def save_history
    case @type
    when '-w'
      web_history
    when '-i'
      image_history
    when '-v'
      video_history
    when '-n'
      news_history
    end
  end

  def web_history
    File.open("~/Documents/Frak-history/web_history.txt", "a") do |file|
      file.puts  " '#{type}'' search - '#{query}' on #{Time.now.to_date} \n"
    end
  end

  def image_history
    File.open("~/Documents/Frak-history/image_history.txt", "a") do |file|
      file.puts  " '#{type}'' search - '#{query}' on #{Time.now.to_date} \n"
    end
  end

  def video_history
    File.open("~/Documents/Frak-history/video_history.txt", "a") do |file|
      file.puts  " '#{type}'' search - '#{query}' on #{Time.now.to_date} \n"
    end
  end

  def news_history
    File.open("~/Documents/Frak-history/news_history.txt", "a") do |file|
      file.puts  " '#{type}'' search - '#{query}' on #{Time.now.to_date} \n"
    end
  end
end