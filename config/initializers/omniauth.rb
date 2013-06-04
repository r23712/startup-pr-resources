OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, 'onlOxrec55Ycat3Kc6J3w', 'ph3vd13QzOWduEuqmS5Qsqwi7mzkBfDihek8VUpvew'
  
end