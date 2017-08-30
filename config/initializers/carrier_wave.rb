 require 'carrierwave/orm/activerecord'
 
 CarrierWave.configure do |config|
  
  # Use local storage if in development or test
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
    end
  end
  
  # Use AWS storage if in production
  if Rails.env.production?
    CarrierWave.configure do |config|
      config.storage = :fog
    end
  end
  
  config.fog_credentials = {
    :provider               => 'AWS',                             # required
    :aws_access_key_id      => 'AKIAJPSDLYISQWIEUQYA',            # required
    :aws_secret_access_key  => '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',     # required
    :region                 => 'us-east-2'                        # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'alexblack'               # required
  config.asset_host       = 's3.amazonaws.com'           # optional, defaults to nil
  config.fog_public     = false                                  # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
