
require "omniauth"
require "omniauth-salesforce"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :salesforce, "3MVG9y6x0357Hlef6GCKmow8zOl8h5otKPc2BYHrUhETUs43QhnXiAsCaeeIiH22Y0PaQ3N.q9Nu28Tr0k_zW", "1136101935488826437"
end


