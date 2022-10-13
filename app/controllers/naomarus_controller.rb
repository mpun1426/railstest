class NaomarusController < ApplicationController
  def yahho
    @hello = "ハロー！"
    @message = "yahhoメソッドが定義され、yahhoアクションが実行されています！"
  end

  def call
    @call = "callメソッドが定義され、callアクションが実行されています！"
  end
end
