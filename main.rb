require 'colorize'
require 'pry'

def puts_git (cmd)
    
    puts `git #{cmd} -h`
end

def menu
    puts 'main menu'.colorize(:cyan)
    puts '1: Enter Git Command'
    
    
    puts '2: Exit'.colorize(:red)
    choice = gets.to_i
    case choice
    when 1
        puts 'Enter a Git Command'
        puts_git(gets.strip)
    when 2
        puts 'Thanks for using the Git Commmand'
        exit
    else
        puts 'invalid input'
        menu
    end
    menu
end

menu

