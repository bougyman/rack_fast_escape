desc 'install all possible dependencies'
task :setup => :gem_installer do
  GemInstaller.new do
    # core
    gem 'rack'

    # spec
    gem 'bacon'

    # doc
    gem 'yard'

    setup
  end
end
