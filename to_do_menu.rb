require './lib/task.rb'
require './lib/list.rb'
require 'pry'

  @saved_info = []


  def main_menu
    loop do
      puts "Press 'l' to add a new list"
      puts "Press 'a' to add a task"
      puts "Press 's' to see current to-dos"
      puts "Press 'x' to exit"

      main_choice = gets.chomp
      if main_choice == 'l'
        add_list
      elsif main_choice == 'a'
        add_task
      elsif main_choice == "x"
        puts "You won't get anything done!"
        exit
      elsif main_choice == "s"
        see_it
      else
        puts "Please enter a valid option."
      end
    end
  end

  def add_list
    puts 'Describe a new list:'
    list_name = gets.chomp
    @saved_info << List.new(list_name)
  end

  def add_task
    puts 'Choose a list from:'
    puts "\n"

    @saved_info.each do |list|
      puts "•#{list.list_name}"
    end

    list_choice = gets.chomp
    @saved_info.each_with_index do |list, index|
      if list_choice == list.list_name
        puts 'Set priority from 1-3'
        priority = gets.chomp

        puts 'Enter description' + "\n"
        new_task = gets.chomp

        both = (priority + ' ' + new_task)

        @saved_info[index].add_task(Tasks.new(both))

      end
    end
  end

  def see_it
    puts "Choose a list from:" + "\n"

    @saved_info.sort.each do |list|
      puts "•#{list.list_name}"
    end

    list_option = gets.chomp
    @saved_info.each do |list|
      if list_option == list.list_name
        list.sort_tasks.each do |task|
          puts task.description
        end
        # list.tasks.each do |task|
        #   puts task.description
        # end
      end
    end
    puts "\n"
  end

main_menu
