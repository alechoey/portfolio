load 'deploy'
load 'deploy/assets'

Dir['vendor/gems/*/recipes/*.rb','vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }

# Main deployment settings file
load 'config/deploy/deploy.rb'

# Custom environment recipes
Dir['config/deploy/recipes/*.rb'].each { |recipe| load(recipe) }
