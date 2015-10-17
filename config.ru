$: << '.'

require 'haml'

Dir["./**/*.rb"].each { |f| load f}

run Application
