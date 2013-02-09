require 'dm-core'
require 'dm-migrations'
require 'dm-timestamps'
require 'dm-types'
require 'rubycas/server/datamapper/model'
require "rubycas/server/datamapper/version"

module RubyCAS
  module Server
    module Core
      module Database
        extend self
        def setup(config_file)
          ::DataMapper.setup(:default, config_file)
        end
      end

      module DataMapper
        # Your code goes here...
      end
    end

  end
end
