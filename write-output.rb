require 'json'
require 'yaml'

contents = ARGF.read

contents.sub!('app.PolicyEditorConfig=', '')

puts JSON.parse(contents).to_yaml
