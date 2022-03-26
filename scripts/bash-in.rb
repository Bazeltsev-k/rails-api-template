#!/usr/bin/env ruby

require "yaml"

COMPOSER_FILE = "#{Dir.pwd}/docker-compose.yml"

config = YAML.load_file(COMPOSER_FILE)
service_name = config["services"].keys.first

exec("docker-compose", "run", "--rm", service_name, "bash")