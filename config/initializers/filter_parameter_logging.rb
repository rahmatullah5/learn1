# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [:password]

LANGUAGES= [
  ['English',                  'en'],
  ["Espa&ntilde;ol".html_safe, 'es']
]
