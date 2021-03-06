# frozen_string_literal: true

module SidekiqUniqueJobs
  # Handles loading and dumping of json
  #
  # @author Mikael Henriksson <mikael@zoolutions.se>
  module JSON
    module_function

    #
    # Parses a JSON string into an object
    #
    # @param [String] string the object to parse
    #
    # @return [Object]
    #
    def load_json(string)
      return unless string && !string.empty?

      ::JSON.parse(string)
    end

    #
    # Dumps an object into a JSON string
    #
    # @param [Object] object a JSON convertible object
    #
    # @return [String] a JSON string
    #
    def dump_json(object)
      ::JSON.generate(object)
    end
  end
end
