#"Hello World"
"Hello World"
# => "Hello World"

#hello world
def hi
    puts "Hello World"
end

hi
# Hello World
# => nil
hi()
# Hello World
# => nil

#hello jinwoo
def hi(name)
    puts "Hello #{name}!"
end

hi "jinwoo"
hi("jinwoo")

#hellow jinwoo or world
def hi(name = "World")
    puts "Hello #{name.capitalize}!"
end

hi "jinwoo"
hi

#class Greeter
class Greeter
    def initialize(name = "World")
        @name = name
    end
    def say_hi
        puts "Hi #{@name}!"
    end
    def say_bye
        puts "Bye #{@name}, come back soon."
    end
end

greeter = Greeter.new("jinwoo")
greeter.say_hi
greeter.say_bye


