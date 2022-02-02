CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'
  config.fog_credentials = {
      provider:                         'Google',
      google_storage_access_key_id:     'GOOG1ELLE5MAHMBZ4PMDDKTGGT6ORH5M3KXVKBAI42DSA5XSD4O5XV6SZAANI',
      google_storage_secret_access_key: 's9LRXtsXPTRJPpBoHxQhhUZsmMrOeh0RWA8ZbAaB'
  }
  config.fog_directory = 'bucket001_imdb_for_film'
end