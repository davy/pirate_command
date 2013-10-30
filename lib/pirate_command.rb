require 'forgery'

Forgery.load_paths << File.dirname(__FILE__)

class PirateCommand < Forgery

  VERSION = '0.0.2'

  def self.action
    dictionaries[:pirate_actions].random
  end

  def self.thing
    dictionaries[:pirate_things].random
  end

  def self.generate
    "#{self.action} the #{self.thing}"
  end

  def self.exclaim
    dictionaries[:pirate_exclamations].random
  end

  def self.exclaim!
    "#{self.exclaim}!"
  end
end

