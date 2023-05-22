# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    @happiness = value.clamp(0, 10)
  end

  def hygiene=(value)
    @hygiene = value.clamp(0, 10)
  end

  def clean?
    hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end


person1 = Person.new("Alice")
person2 = Person.new("Bob")

puts person1.name  # Output: Alice

person1.bank_account = 100
puts person1.bank_account  # Output: 100

person1.happiness = 9
puts person1.happiness  # Output: 9

person1.hygiene = 7
puts person1.hygiene  # Output: 7

puts person1.clean?  # Output: false
puts person1.happy?  # Output: true

person1.get_paid(500)
puts person1.bank_account  # Output: 600

puts person1.take_bath  # Output: ♪ Rub-a-dub just relaxing in the tub ♫

puts person1.work_out  # Output: ♪ another one bites the dust ♫

puts person1.call_friend(person2)  # Output: Hi Bob! It's Alice. How are you?

puts person1.start_conversation(person2, "politics")  # Output: blah blah partisan blah lobbyist
puts person1.start_conversation(person2, "weather")  # Output: blah blah sun blah rain
puts person1.start_conversation(person2, "movies")  # Output: blah blah blah blah blah