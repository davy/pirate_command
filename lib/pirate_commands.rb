require 'forgery'

Forgery.load_from!('lib')

class PirateCommands < Forgery

  def self.action
    dictionaries[:pirate_actions].random
  end

  def self.thing
    dictionaries[:pirate_things].random
  end

  def self.generate
    "#{self.action} the #{self.thing}"
  end
end

