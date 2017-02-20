require 'racatt'


namespace 'td_kata' do


  Racatt.create_tasks


  desc 'Run Cucumber and RSpec tests'
  task :smart_test do |t, args|
    rspec_args = '--pattern testing/rspec/spec/**/*_spec.rb'
    cucumber_args = 'testing/cucumber/features -r testing/cucumber/support -r testing/cucumber/step_definitions -f progress'

    Rake::Task['td_kata:test_everything'].invoke(rspec_args, cucumber_args)
  end

end


task :default => 'td_kata:smart_test'
