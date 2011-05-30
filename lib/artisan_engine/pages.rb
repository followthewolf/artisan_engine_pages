require 'artisan_engine/core'
require 'artisan_engine/pages'

module ArtisanEngine
  module Pages

    # ------------------ Autoload Necessary Modules ------------------ #
    
    autoload :TestHelpers, 'artisan_engine/pages/test_helpers' if Rails.env.test?
    
    # ------------------------- Vroom vroom! ------------------------- #
    
    class Engine < Rails::Engine
    end

  end
end