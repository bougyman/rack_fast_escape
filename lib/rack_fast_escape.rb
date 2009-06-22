require "pathname"
%w{rack url_escape}.each { |lib|
  begin
    require lib 
  rescue
    require "rubygems"
    require lib
  end
}
$LOAD_PATH.unshift(File.expand_path("../../", __FILE__))

# Allows for pathnames to be easily added to
class Pathname
  def /(other)
    join(other.to_s)
  end
end

# The Rack Fast Escape library, by TJ Vanderpoel
module RackFastEscape
  ROOT = Pathname($LOAD_PATH.first) unless RackFastEscape.const_defined?("ROOT")
  LIBDIR = ROOT/:lib unless RackFastEscape.const_defined?("LIBDIR")
end
require RackFastEscape::LIBDIR/"rack_fast_escape/version"
require RackFastEscape::LIBDIR/"rack_fast_escape/rack/utils"
