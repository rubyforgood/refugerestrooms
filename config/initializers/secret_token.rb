# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
SaferstallsRails::Application.configure do

  # Use a throwawy key for local development/test that isn't tied to production instance key.
  if Rails.env == 'production'
    config.secret_key_base = ENV['RAILS_SECRET_KEY']
  else
    config.secret_key_base = '4944cf251e3dbf309ed71ebcd8990a1479d793011cd4011761e3fbea9ecc59edefd0cb49a0ed9b5c0261ab0dda841962bb7dd28fd3f99579bfa2beec26329961'
  end

end
