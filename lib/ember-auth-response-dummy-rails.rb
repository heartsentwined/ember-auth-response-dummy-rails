require 'rails'
require 'ember/auth/response/dummy/source'
require 'ember/auth/response/dummy/rails/version'
require 'ember/auth/response/dummy/rails/engine'

module Ember
  module Auth
    module Response
      module Dummy
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.response.dummy.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Response::Dummy::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
