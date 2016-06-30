require 'rubygems'
require 'xeroizer'
require 'yaml'

config = YAML.load_file("credentials/config.yml")
xero_config = config["xero"]
OAUTH_CONSUMER_KEY = xero_config["key"]
OAUTH_CONSUMER_SECRET = xero_config["secret"]

client = Xeroizer::PrivateApplication.new(OAUTH_CONSUMER_KEY, OAUTH_CONSUMER_SECRET, "../super-duper-pancake-keys/privatekey.pem")
contacts = client.Contact.all

puts contacts.count
