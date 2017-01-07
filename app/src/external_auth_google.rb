module ExternalAuth
  class Google
    def initialize(access_code)
      @access_code = access_code
      @user_data = user_data
    end

    def app_auth_data
      return {client_id: Rails.application.secrets[:google_api_key], client_secret: Rails.application.secrets[:google_api_secret]}
    end

    def fetch_access_token
      if @access_token.present?
        @access_token
      else
        uri = URI.parse("https://www.googleapis.com/oauth2/v4/token")
        params = {
            client_id: app_auth_data[:client_id],
            client_secret: app_auth_data[:client_secret],
            grant_type: 'authorization_code',
            code: @access_code
        }
        response = Net::HTTP.post_form(uri, params)
        data = JSON.parse(response.body)
        if data['access_token'].present?
          @access_token ||= data['access_token']
        else
          puts data
          nil
        end
      end
    end

    def user_data
      access_token = fetch_access_token
      if access_token.present?
        google = URI.parse('https://www.googleapis.com/plus/v1/people/me?access_token=' +
                               access_token)
        response = Net::HTTP.get_response(google)
        JSON.parse(response.body)
      else
        nil
      end
    end

    def get_user!
      if @user_data.present?
        user = User.find_by_google_id @user_data[:id]
        if user.nil?
          user = User.new google_id: @user_data[:id]
          user.email = @user_data[:emails].first[:value]
          user.name = @user_data[:displayName]
          user.password = Devise.friendly_token 8
          user.gender = @user_data[:gender]
          #user.birthday = @user_data[:birthday]
          user.add_picture @user_data[:image][:url]
          user.save!
        else
          user.add_picture @user_data[:image][:url]
          user.save!
        end
      else
        nil
      end
    end
  end
end