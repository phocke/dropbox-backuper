#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.require(:default)

CONFIG = YAML.load_file("config.yml")

Dropbox::API::Config.app_key    = CONFIG["dropbox_app_key"]
Dropbox::API::Config.app_secret = CONFIG["dropbox_app_secret"]
Dropbox::API::Config.mode       = "sandbox" # or "dropbox" if it has access to the whole dropbox

# In order to obtain new token and secret use 'rake dropbox:authorize' task
client = Dropbox::API::Client.new(:token  => CONFIG["dropbox_user_token"],
                                  :secret => CONFIG["dropbox_user_secret"])

# With dropbox you get free versioning for 30 days ;)
client.upload "dump.sql.gz", File.read(CONFIG["dump_path"])