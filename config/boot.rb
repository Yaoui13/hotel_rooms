# /config/boot.rb

require 'logger'                                # ← AJOUTE cette ligne
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup'                        # Set up gems listed in the Gemfile.
# require 'bootsnap/setup'                     # ← DÉCOMMENTE (ou supprime) cette ligne
