ruby '2.5.1'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',                                    '~> 5.2.3'
gem 'pg',                                       '~> 1.0.0'
gem 'carrierwave',                              '~> 1.2.3'
gem 'mini_magick',                              '~> 4.8.0'
gem 'puma',                                     '~> 3.12.0'
gem 'sassc-rails',                              '~> 1.3'
gem 'uglifier',                                 '~> 4.1'
gem 'coffee-rails',                             '~> 4.2.2'
gem 'jquery-rails',                             '~> 4.3.3'
gem 'turbolinks',                               '~> 5.1.1'
gem 'jbuilder',                                 '~> 2.7.0'
gem 'devise',                                   '>= 4.6.0'
gem 'gravtastic',                               '~> 3.2.6'
gem 'foundation-rails',                         '~> 6.4'
gem 'autoprefixer-rails',                       '~> 9.1'
gem 'slim',                                     '~> 3.0'
gem 'font-awesome-rails',                       '~> 4.6'

group :development, :test do
  gem 'capybara',                               '~> 3.6.0'
  gem 'rspec-rails',                            '~> 3.8.0'
  gem 'rspec_junit_formatter',                  '~> 0.4.1'
  gem 'database_cleaner',                       '~> 1.7'
  gem 'shoulda-matchers',                       '~> 3.1'
  gem 'factory_bot_rails',                      '~> 4.11'
  gem 'faker',                                  '~> 1.9'
  gem 'byebug',                                                               platform: :mri
  gem 'launchy',                                '~> 2.4.3'
end

group :development do
  gem 'listen',                                 '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen',                  '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller'
end