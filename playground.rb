class Playground
  # make it a bit like 'static method main' in java
  def self.main(_args = []) # args is optional
    new # make an instance of Playground (otherwise each method needs to be a class-method instead)
  end

  def initialize(_args = [])
    spacer
    puts 'Awesome Airlines'
    spacer
  end

  private def spacer
    puts '-' * 80
  end
end

# self-invocation
Playground.main()
