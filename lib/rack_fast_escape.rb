# Copyright (c) 2008-2009 The Rubyists, LLC (effortless systems) <rubyists@rubyists.com>
# Distributed under the terms of the MIT license.
# See the LICENSE file which accompanies this software for the full text
#
%w{rack url_escape}.each { |lib|
  begin
    require lib
  rescue LoadError
    require "rubygems"
    require lib
  end
}

module Rack::Utils
  class << self
    # Move the old versions
    alias :old_escape :escape
    alias :old_unescape :unescape

    # Pull in the new versions
    extend URLEscape

    # Make new versions explictly available
    alias :fast_escape :escape
    alias :fast_unescape :unescape

    # Allow for detection
    def fast_escape?; true; end
    def fast_unescape?; true; end
  end
end
