CarrierWave.configure do |config|
  # config.root = Rails.root.join('public') # adding these...
  # config.cache_dir = 'carrierwave' # ...two lines

  config.permissions = 0666
  config.directory_permissions = 0777
  config.storage = :file

  config.ignore_integrity_errors = false
  config.ignore_processing_errors = false
  config.ignore_download_errors = false
end