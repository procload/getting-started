# Staging and Production URLs
production_url = ""
staging_url = ""

# Deploys to Heroku Staging
multitask :heroku_staging do
  puts "## Pushing to Github"
  system "git push origin develop"
  puts "## Deploying to Staging"
  puts "\n## Pushing to #{staging_url}"
  system "git push staging develop:master"
end

# Deploys to Heroku Production
multitask :heroku_production do
  puts "## Deploying to Production"
  puts "\n## Pushing to #{production_url}"
  system "git push production master"
end

namespace :staging do
  desc "Push source to Heroku staging and build"
    task :deploy => [:heroku_staging] do
  end
end

namespace :production do
  desc "Push source to Heroku production and build"
    task :deploy => [:heroku_production] do
  end
end

namespace :assets do
  task :precompile do
    sh "middleman build"
  end
end

