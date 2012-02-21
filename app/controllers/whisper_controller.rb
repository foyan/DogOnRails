class WhisperController < ApplicationController
  def hello
    @files = Dir.glob("*")
  end

  def goodbye
    @time = Time.now
  end
end
