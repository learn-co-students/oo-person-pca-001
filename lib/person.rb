# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  def happiness=(number)
    number = 10 if number > 10
    number = 0  if number < 0
    @happiness = number
  end
  def hygiene=(number)
    number = 10 if number > 10
    number = 0  if number < 0
    @hygiene = number
  end
  def happy?()
    @happiness > 7
  end
  def clean?()
    @hygiene > 7
  end
  def get_paid(number)
    @bank_account += number
    "all about the benjamins"
  end
  def take_bath
    self.hygiene +=  4
    "\u266A Rub-a-dub just relaxing in the tub \u266B"
  end
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "\u266A another one bites the dust \u266B"
  end
  def call_friend(person)
    person.happiness += 3
    self.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(person,topic)
    case(topic)
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end  
end
