OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth:: Builder do
  # provider :developer unless Rails.evn.production?
  provider :twitter, 'onlOxrec55Ycat3Kc6J3w', 'ph3vd13QzOWduEuqmS5Qsqwi7mzkBfDihek8VUpvew'
  provider :facebook, '268087800002654', '094c99cfd7931f0323363e94b8150d53'
end