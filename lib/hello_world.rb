# frozen_string_literal: true

def hello_world
  message = 'Hello, world!'
  message
end

puts hello_world if $PROGRAM_NAME == __FILE__
