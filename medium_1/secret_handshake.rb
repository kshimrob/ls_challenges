=begin

1. get number down to five digits
2. loop through them backwards


=end

require 'pry'

class SecretHandshake
  COMMANDS = {
    -4 => 'jump',
    -3 => 'close your eyes',
    -2 => 'double blink',
    -1 => 'wink'
  }

  def initialize(number)
    number.instance_of?(String) ? @binary_num = number : @binary_num = number.to_s(2)
  end

  def commands
    commands_list = []

    (-1).downto(-4) do |idx|
      if @binary_num[idx] == '1'
        commands_list << COMMANDS[idx]
      end
    end

    commands_list.reverse! if @binary_num[-5] == '1'

    commands_list
  end
end

handshake = SecretHandshake.new(1)
p handshake.commands