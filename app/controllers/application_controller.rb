class ApplicationController < ActionController::Base

  # Applicationコントローラにhelloアクションを追加
  def hello
    render html: "Hello World"
  end

  def goodbye
    render html: "Goodbye World"
  end
end
