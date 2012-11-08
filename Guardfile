group :development do
  guard 'spin' do
    # Run test on save
    watch(%r|^test/(.*)_test\.rb|)
    # Run unit test for a saved model
    watch(%r|^app/models/(.*)\.rb$|)  { |m| "test/unit/#{m[1]}_test.rb" }
  end
end

group :design do
  guard 'livereload', :host => 'ebth-com.dev' do
    watch(%r{app/views/.+\.(erb|haml|slim)$})
    # Rails Assets Pipeline
    watch(%r{app/assets/stylesheets/(.+\.scss).*$})
    watch(%r{app/assets/stylesheets/public/(.+\.scss).*$})
    watch(%r{app/assets/stylesheets/partials/(.+\.scss).*$})
  end
end