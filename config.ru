# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
use Rack::Static, :urls => ['/carrierwave'], :root => 'tmp' # adding this line

run Rails.application
