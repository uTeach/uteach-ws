class FacebookRequest
  def user_data fb_token
    facebook = URI.parse("https://graph.facebook.com/me?access_token=#{fb_token}&fields=name,birthday,gender,email,picture")
    response = Net::HTTP.get_response facebook
    JSON.parse response.body
  end
end