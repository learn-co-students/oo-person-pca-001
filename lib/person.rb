class Person
  attr_reader :name, :hygiene, :happiness, :bank_account

  def initialize(name)
    @name = name
    @hygiene = 8
    @happiness = 8
    @bank_account = 25
  end

  def bank_account=(amount)
    @bank_account += amount
  end

  def happiness=(amount)
    @happiness = bound_between_zero_and_ten amount
  end

  def hygiene=(amount)
    @hygiene = bound_between_zero_and_ten amount
  end

  def bound_between_zero_and_ten(amount)
    if amount.positive?
      amount <= 10 ? amount : 10
    else
      0
    end
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
    self.hygiene += 4
    "\u266A Rub-a-dub just relaxing in the tub \u266B"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "\u266A another one bites the dust \u266B"
  end

  def call_friend person
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
