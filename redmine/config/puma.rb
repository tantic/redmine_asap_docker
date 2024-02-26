# Puma doc:
# https://www.rubydoc.info/gems/puma/3.6.2

# number of workers (process) ; default: 0
# 0 : 1 process, and multi-threads.
# >0 : multi-process.

workers 4

# number of threads (min, max) ; default: 0,16
# MQU extend number of threads to 32.
threads 4, 16

preload_app!



# https://dev.to/amplifr/monitoring-puma-web-server-with-prometheus-and-grafana-5b5o
# https://www.rubydoc.info/gems/puma/Puma%2FDSL:activate_control_app
# enable puma stats on port 9000.
# activate_control_app('tcp://127.0.01:9000', {auth_token: 'asap', status_token: 'asap'})
activate_control_app('tcp://127.0.01:9000', { no_token: true })
