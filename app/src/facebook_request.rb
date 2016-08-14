class FacebookRequest
  def user_data fb_token
    facebook = URI.parse("https://graph.facebook.com/me?access_token=#{fb_token}&fields=first_name,last_name,birthday,gender,email,location,picture")
    response = Net::HTTP.get_response facebook
    JSON.parse response.body
  end
end