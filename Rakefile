require "bundler/gem_tasks"

source_dir = "alertifyjs-src" 

namespace :javascripts do
  
  desc "Copy #{source_dir}/build/js/"
  task :copy do
    src_dir = Dir.glob("#{source_dir}/build/*").reject { |file| !file.end_with?(".js") }
    tgt_dir = "app/assets/javascripts/"
    mkdir_p tgt_dir
    cp_r src_dir, tgt_dir
  end

  desc "Setup javascript assets"
  task setup: [:copy]
end

namespace :stylesheets do
  desc "Cleaning stylesheets directory"
  task :clean do
   rm_rf "app/assets/stylesheets"
  end

  desc "Copy #{source_dir}/build/css/"
  task :copy do
    src_dir = "#{source_dir}/build/css/."
    tgt_dir = "app/assets/stylesheets/"
    mkdir_p tgt_dir
    cp_r src_dir, tgt_dir
    mv (tgt_dir+"themes/"), (tgt_dir+"alertify/"),  force: true
  end

  desc "Setup stylesheet assets"
  task setup: [:clean, :copy]
end

desc "Remove minified file .min"
task :cleanup do
  Dir.glob('app/assets/**/*.min.*').each do |file|
    rm file
  end
end

desc "Setup or update assets files"
task setup: ["javascripts:setup", "stylesheets:setup"]
