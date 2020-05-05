require "pry"

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness)
    happiness = 10 if happiness > 10
    happiness = 0 if happiness.negative?
    @happiness = happiness
  end

  def hygiene=(hygiene)
    hygiene = 10 if hygiene > 10
    hygiene = 0 if hygiene.negative?
    @hygiene = hygiene
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene -= 3
    self.happiness = @happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness += 3
    friend.happiness += 3
    friend.happiness = 10 if friend.happiness > 10
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = @happiness -= 2
      person.happiness -= 2
      person.happiness = 0 if person.happiness.negative?
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness += 1
      person.happiness += 1
      person.happiness = 10 if person.happiness > 10
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
