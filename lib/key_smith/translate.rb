module KeySmith
  module Translate

    class << self

      def translate(hash, mapping)
        mapping.inject(hash) { |h,(k,v)| h[v] = h.delete(k) if h.has_key?(k); h }
      end

    end

    def translate!(mapping)
      KeySmith::Translate.translate(self, mapping)

    end

    def translate(mapping={})
      KeySmith::Translate.translate(self.dup, mapping)
    end

  end
end

Hash.include(KeySmith::Translate) if defined? Hash