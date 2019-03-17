class StaticsController < ApplicationController
  def top; end
  def demo
    @demo_messages = DemoMessage.all
  end
end
