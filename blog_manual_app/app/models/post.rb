class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
end

def hello
  "Hello #{self.name}. This is my first Rails app."
end