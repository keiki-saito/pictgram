require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory  = ENV['techstudy']
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AKIAUB6ZW3PGR4XRE55Q'],
    aws_secret_access_key: ENV['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'],
    region: ENV['ap-northeast-1'],
    path_style: true
  }
end