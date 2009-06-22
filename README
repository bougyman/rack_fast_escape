== Rack Fast Escape/Unescape
----------

  The Rack Fast Escape library, by The Rubyists, LLC

This library replaces the Rack::Utils.escape and #unescape methods
with the versions from URLEscape, a C extension which increases the
efficiency of these methods at least 20x.

== Download

  Standard gem locations, source on github 

== Usage
-------

  require "rack"
  require "rack_fast_escape"
  Rack::Utils.escape("%03a" * 10000000)

Note: The above with Rack::Utils.escape may eat a lot of cycles.

== Tests

If you have the full source, run the specs with 'rake' in the
root of the library tree (lib/..).

== Benchmarks

|user|system|total|real
URLEscape::unescape|0.090000|0.000000|0.090000|(  0.090418)
CGI::unescape|2.920000|0.000000|2.920000|(  2.924822)

|user|system|total|real
URLEscape::unescape|0.090000|0.000000|0.090000|(  0.089071)
Rack::Utils::unescape|3.120000|0.010000|3.130000|(  3.125334)

|user|system|total|real
URLEscape::escape|0.200000|0.000000|0.200000|(  0.194290)
Rack::Utils::escape|3.960000|0.000000|3.960000|(  3.995122)|

== Support

See #rubyists on freenode or rubyists@rubyists.com

Copyright(c) 2009 by The Rubyists, LLC
