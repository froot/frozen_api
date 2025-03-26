require 'prometheus/client'

# Initialize Prometheus client
prometheus = Prometheus::Client.registry

# Custom metric example: request counter
request_counter = Prometheus::Client::Counter.new(:rails_request_counter, docstring: 'Total number of requests to the Rails app')
prometheus.register(request_counter)
