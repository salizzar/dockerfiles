require 'logger'

out = `cat /etc/os-release`
log = Logger.new(STDOUT)

log.info("System Info:\n#{out}")
