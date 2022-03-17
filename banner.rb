require 'os'

module BannerTools
  def print_header_part01
    puts '   ____      _        _             '
    puts '  / ___|__ _| |_ __ _| | ___   __ _ '
    puts ' | |   / _` | __/ _` | |/ _ \ / _` |'
    puts ' | |__| (_| | || (_| | | (_) | (_| |'
    puts '  \____\__,_|\__\__,_|_|\___/ \__, |'
    puts '                              |___/ '
  end

  def print_header_part02
    puts '          __                   '
    puts '    ___  / _|  _ __ ___  _   _ '
    puts '   / _ \| |_  | \'_ ` _ \| | | |'
    puts '  | (_) |  _| | | | | | | |_| |'
    puts '   \___/|_|   |_| |_| |_|\__, |'
    puts '                         |___/ '
  end

  def print_header_part03
    puts '   _____ _     _                 '
    puts '  |_   _| |__ (_)_ __   __ _ ___ '
    puts '    | | | \'_ \| | \'_ \ / _` / __|'
    puts '    | | | | | | | | | | (_| \__ \\'
    puts '    |_| |_| |_|_|_| |_|\__, |___/'
    puts '                       |___/     '
  end

  def exit_greeting_message01
    puts ' _____ _                 _                           __            '
    puts '|_   _| |__   __ _ _ __ | | __  _   _  ___  _   _   / _| ___  _ __ '
    puts '  | | | \'_ \ / _` | \'_ \| |/ / | | | |/ _ \| | | | | |_ / _ \| \'__|'
    puts '  | | | | | | (_| | | | |   <  | |_| | (_) | |_| | |  _| (_) | |   '
    puts '  |_| |_| |_|\__,_|_| |_|_|\_\  \__, |\___/ \__,_| |_|  \___/|_|   '
    puts '                                |___/                              '
    puts
  end

  def exit_greeting_message02
    puts
    puts '                                 _             '
    puts '                       _   _ ___(_)_ __   __ _ '
    puts '                      | | | / __| | \'_ \ / _` |'
    puts '                      | |_| \__ \ | | | | (_| |'
    puts '                       \__,_|___/_|_| |_|\__, |'
    puts '                                         |___/ '
  end

  def exit_greeting_message03
    puts '  ____      _        _                      __                   '
    puts ' / ___|__ _| |_ __ _| | ___   __ _    ___  / _|  _ __ ___  _   _ '
    puts '| |   / _` | __/ _` | |/ _ \ / _` |  / _ \| |_  | \'_ ` _ \\| | | |'
    puts '| |__| (_| | || (_| | | (_) | (_| | | (_) |  _| | | | | | | |_| |'
    puts ' \____\__,_|\__\__,_|_|\___/ \__, |  \___/|_|   |_| |_| |_|\__, |'
    puts '                             |___/                         |___/ '
  end

  def exit_greeting_message04
    puts '                 _____ _     _                 '
    puts '                |_   _| |__ (_)_ __   __ _ ___ '
    puts '                  | | | \'_ \| | \'_ \ / _` / __|'
    puts '                  | | | | | | | | | | (_| \__ \\'
    puts '                  |_| |_| |_|_|_| |_|\__, |___/'
    puts '                                     |___/     '
  end

  def print_upper_downframe
    puts "*#{'-' * 34}*"
  end

  def clear_screen
    system('cls') if OS.windows?
    system('clear') if OS.posix?
  end

  def loading_effect
    system('timeout 5') if OS.windows?
    system('sleep 5') if OS.posix?
  end

  def countdown(number)
    while number.positive?
      print "\r                  Exiting on #{number} SECONDS(S)..."
      number -= 1
      sleep 1
    end
  end
end

# This is the example of how to use in the right order this module
