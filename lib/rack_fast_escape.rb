require "pathname"
$LOAD_PATH.unshift(File.expand_path("../", __FILE__))

# Allows for pathnames to be easily added to
class Pathname
  def /(other)
    join(other.to_s)
  end
end

# The Rack Fast Escape library, by TJ Vanderpoel
module RackFastEscape
  autoload :VERSION, "rack_fast_escape/version"
  ROOT = Pathname($LOAD_PATH.first) unless RackFastEscape.const_defined?("ROOT")
  LIBDIR = ROOT/:lib unless RackFastEscape.const_defined?("LIBDIR")
end
