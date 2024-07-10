require 'colorize'

class Playground
  COMPANY = 'Awesome Airlines'

  # make it a bit like 'static method main' in java
  def self.main(_args = []) # args is optional
    new # make an instance of Playground (otherwise each method needs to be a class-method instead)
  end

  def initialize(_args = [])
    heading
  end

  # show an awesome header
  private def heading
    spacer(:light_blue)
    puts slogan
    spacer(:light_blue)
  end

  # show company-name and a slogan
  private def slogan
    "#{COMPANY} ... *Fly better*"
  end

  # do 80 times printing '-' on console with the given color
  private def spacer(color = :white)
    puts ('-' * 80).colorize(color)
  end
end

# self-invocation of class Playground
Playground.main()
