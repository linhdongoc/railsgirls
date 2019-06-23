ruby '2.6.3'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',                                    '~> 5.2.3'
gem 'pg',                                       '~> 1.1.4'
gem 'carrierwave',                              '~> 1.3.1'
gem 'mini_magick',                              '~> 4.9.3'
gem 'puma',                                     '~> 3.12.0'
gem 'sassc-rails',                              '~> 2.1.0'
gem 'uglifier',                                 '~> 4.1'
gem 'coffee-rails',                             '~> 4.2.2'
gem 'jquery-rails',                             '~> 4.3.3'
gem 'turbolinks',                               '~> 5.2.0'
gem 'jbuilder',                                 '~> 2.8.0'
gem 'devise',                                   '~> 4.6.0'
gem 'gravtastic',                               '~> 3.2.6'
gem 'foundation-rails',                         '~> 6.5.3.0'
gem 'autoprefixer-rails',                       '~> 9.5.0'
gem 'slim',                                     '~> 4.0'
gem 'font-awesome-rails',                       '~> 4.7.0.4'
gem 'redis',                                    '~> 4.1.0'
gem 'prawn',                                    '~> 2.2'

group :development, :test do
  gem 'capybara',                               '~> 3.16.1'
  gem 'rspec-rails',                            '~> 3.8.0'
  gem 'rspec_junit_formatter',                  '~> 0.4.1'
  gem 'database_cleaner',                       '~> 1.7'
  gem 'shoulda-matchers',                       '~> 4.0.1'
  gem 'factory_bot_rails',                      '~> 5.0.1'
  gem 'faker',                                  '~> 1.9'
  gem 'byebug',                                                               platform: :mri
  gem 'launchy',                                '~> 2.4.3'
end

group :development do
  gem 'listen',                                 '~> 3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen',                  '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rb-readline',                            '~> 0.5.3'
end
