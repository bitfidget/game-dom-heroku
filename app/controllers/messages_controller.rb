class MessagesController < ApplicationController

  after_action :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = "*"
    headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
  end

  def welcome
    render :json => '{
                      "class":"welcome",
                      "html":"<div><h1>Click two parts of the page to see who will win!<\/h1><p><a href="http:\/\/divandconquer.herokuapp.com\/\">&lt;div&gt;&amp;conquer leaderboard<\/a><\/p><p><a href="http:\/\/github.com\/citizengit\">a GA WDI student project by Kriss Heimanis<\/a><\/p><\/div>"
                    }'
  end

  def fight
    render :json => '{
                      "class":"fight",
                      "html":"<div><h1 id=\'fight\'>Which dom object on screen will reign supreme?<\/h1><table><tr><td><h1 id=\'nameOne\'><\/h1><\/td><td><h4>vs<\/h4><\/td><td><h1 id=\'nameTwo\'><\/h1><\/td><\/tr><tr><td><h1 id=\'scoreOne\'>0<\/h1><\/td><td><h6>score<\/h6><\/td><td><h1 id=\'scoreTwo\'>0<\/h1><\/td><\/tr><tr><td><h3 id=\'healthOne\'>0<\/h3><\/td><td><h6>current health<\/h6><\/td><td><h3 id=\'healthTwo\'>0<\/h3><\/td><\/tr><tr><td><h4 id=\'powerOne\'>0<\/h4><\/td><td><h6>current power<\/h6><\/td><td><h4 id=\'powerTwo\'>0<\/h4><\/td><\/tr><tr><td><h4 id=\'hitOne\'>0<\/h4><\/td><td><h6>this hit<\/h6><\/td><td><h4 id=\'hitTwo\'>0<\/h4><\/td><\/tr><\/table><\/div>"
                    }'
  end

  def finish
    render :json => '{
                      "class":"finish",
                      "html":"<div><h1 id="playAgain">PLAY AGAIN<\/h1><p><a href=\"http:\/\/divandconquer.herokuapp.com\/\">&lt;div&gt;&amp;conquer leaderboard<\/a><\/p><p><a href=\"http:\/\/github.com\/citizengit\">a GA WDI student project by Kriss Heimanis<\/a><\/p><\/div>"
                    }'
  end

end
