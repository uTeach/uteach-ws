module CustomTokenResponse
  def body
    additional_data = {
        'user_type': User.find(@token.resource_owner_id).type,
        #'userid' => @token.resource_owner_id # you have an access to the @token object
        # any other data
    }

    # call original `#body` method and merge its result with the additional data hash
    super.merge(additional_data)
  end
end