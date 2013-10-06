require 'forgery'

Forgery.load_paths << File.dirname(__FILE__)

class PirateCommand < Forgery

  VERSION = '0.0.1'

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

