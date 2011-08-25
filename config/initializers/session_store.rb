# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_icall_demo_session',
  :secret      => '49ba414bfc61d53072f271b6ecf68bf81a1467fa0b8a6ceccb1c46a4af7084a647e823e20f5d7523588d6be25c575984d0f977938d953616fc50f3ad9410a922'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
