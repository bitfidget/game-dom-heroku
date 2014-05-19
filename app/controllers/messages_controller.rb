class MessagesController < ApplicationController

  after_action :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = "*"
    headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
  end

  def welcome
    render :json => '{
                      "class":"welcome",
                      "html":"<h1>DOM 1 nation<\/h1><p>which dom on screen will reign supreme?<\/p><h2>CLICK ANY TWO ITEMS ON THE PAGE TO WATCH THEM BATTLE<\/h2><p>it\'s eleMENTAL!<\/p>"
                    }'
  end

  def fight
    render :json => '{
                      "class":"fight",
                      "html":"<h1 id=\'fight\'>Place Your Bets<\/h1><table><tr><td><h1 id=\'nameOne\'><\/h1><\/td><td><h4>vs<\/h4><\/td><td><h1 id=\'nameTwo\'><\/h1><\/td><\/tr><tr><td><h1 id=\'scoreOne\'>0<\/h1><\/td><td><h6>score<\/h6><\/td><td><h1 id=\'scoreTwo\'>0<\/h1><\/td><\/tr><tr><td><h3 id=\'healthOne\'><\/h3><\/td><td><h6>current health<\/h6><\/td><td><h3 id=\'healthTwo\'><\/h3><\/td><\/tr><tr><td><h4 id=\'powerOne\'><\/h4><\/td><td><h6>current power<\/h6><\/td><td><h4 id=\'powerTwo\'><\/h4><\/td><\/tr><tr><td><h4 id=\'hitOne\'><\/h4><\/td><td><h6>this hit<\/h6><\/td><td><h4 id=\'hitTwo\'><\/h4><\/td><\/tr><\/table>"
                    }'
  end

  def finish
    render :json => '{
                      "class":"finish",
                      "html":"<h1>DOM 1 nation<\/h1><h2><\/h2><h2>it\'s eleMENTAL!<\/h2><button id=\'restart\'>play again<\/button><button>leaderboard<\/button>"
                    }'
  end

end
