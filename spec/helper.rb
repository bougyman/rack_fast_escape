# Copyright (c) 2008-2009 The Rubyists, LLC (effortless systems) <rubyists@rubyists.com>
# Distributed under the terms of the MIT license.
# See the LICENSE file which accompanies this software for the full text
#
require "pathname"
%w{bacon rack}.each { |lib|
  begin
    require lib
  rescue LoadError
    require "rubygems"
    require lib
  end
}

begin
  if (local_path = Pathname.new(__FILE__).dirname.join("..", "lib", "rack_fast_escape.rb")).file?
    require local_path
  else
    require "rack_fast_escape"
  end
rescue LoadError
  require "rubygems"
  require "rack_fast_escape"
end

Bacon.summary_on_exit



