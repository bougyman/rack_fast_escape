require File.expand_path("../../../rack_fast_escape", __FILE__)
module RackFastEscape
  module R
    U = Rack::Utils
    module U
      class << self

        def fast_escape(string)
          URLEscape.escape(string)
        end
        alias :old_escape :escape

        def fast_escape?; true; end
        alias_method :escape, :fast_escape

        def escape(string)
          fast_escape(string)
        end

        # Relegate the standard escape to old_unescape
        alias :old_unescape :unescape

        def fast_unescape(string)
          URLEscape.unescape(string)
        end

        def fast_unescape?; true; end
        alias_method :unescape, :fast_unescape

      end
    end
  end
end

