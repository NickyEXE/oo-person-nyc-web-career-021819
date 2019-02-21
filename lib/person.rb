# your code goes here
require 'pry'
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def max_min(instance,num)
    if num>10
      instance = 10
    elsif num<0
      instance = 0
    else
      instance = num
    end
  end

  def happiness=(num)
    @happiness=max_min(@happiness,num)
  end
  def hygiene=(num)
    @hygiene=max_min(@hygiene,num)
  end

  # def happiness=(num)
  #   if num >10
  #     @happiness = 10
  #   elsif num <0
  #     @happiness = 0
  #   else
  #     @happiness = num
  #   end
  # end
  #
  # def hygiene=(num)
  #   if num >10
  #     @hygiene = 10
  #   elsif num <0
  #     @hygiene = 0
  #   else
  #     @hygiene = num
  #   end
  # end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
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
    self.hygiene=(4+@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(2+@happiness)
    self.hygiene=(@hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(3+@happiness)
    friend.happiness=(3+friend.happiness)
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic  == "politics"
      self.happiness=(@happiness-2)
      friend.happiness=(friend.happiness-2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(1+@happiness)
      friend.happiness=(1+friend.happiness)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end
