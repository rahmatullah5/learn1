class SayController < ApplicationController
  def hello
    @a =Time.now
    @files = Dir.glob('*')
  end

  def goodbye
  end
end
