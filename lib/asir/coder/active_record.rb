require 'asir'

require 'active_record'

module ASIR
  class Coder
    module ActiveRecord
      MIGRATIONS = [ ]
    end
  end
end

require 'asir/coder/database'
require 'asir/coder/active_record/message_model'
require 'asir/coder/active_record/result_model'

