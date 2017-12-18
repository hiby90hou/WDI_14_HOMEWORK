require 'pry'
require 'fileutils'
puts "Enter filename:"
file_name = gets.strip
puts file_name
# binding.pry
count = 0
File.open(file_name, "r") do |data_file|
  data_file.each_line do |folder_name|
    FileUtils.mkdir(folder_name)
    count = count + 1
  end
end

puts "#{count} line(s)"
# File is closed automatically at end of block

