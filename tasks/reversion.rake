desc "update version.rb"
task :reversion do
  lines = File.readlines("lib/#{GEMSPEC.name}.rb")
  version = lines.index(lines.detect { |l| l.match /^\s+VERSION\s+=\s+/ })
  lines[version].gsub!(/^(\s+VERSION\s+=\s+)(.*)$/) { |m| "%s\"%s\"" % [$~[1], GEMSPEC.version.to_s] }
  File.open("lib/#{GEMSPEC.name}.rb", "wb") { |f| f.puts lines.join }
end
