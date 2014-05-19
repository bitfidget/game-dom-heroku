class MessagesController < ApplicationController

  def welcome
    render :json => '{
                      "class":"welcome",
                      "html":"<h1>Welcome<\/h1><p>Click two boxes on the screen and watch them battle to the death<\/p><button>GO!<\/button>"
                    }'
  end

  def fight
    render :json => '{
                      "class":"fight",
                      "html":"<h1 id=\'fight\'>WHO WILL WIN!?<\/h1><table><tr><td><h1 id=\'nameOne\'><\/h1><\/td><td><h4>vs<\/h4><\/td><td><h1 id=\'nameTwo\'><\/h1><\/td><\/tr><tr><td><h1 id=\'scoreOne\'>0<\/h1><\/td><td><h6>score<\/h6><\/td><td><h1 id=\'scoreTwo\'>0<\/h1><\/td><\/tr><tr><td><h3 id=\'healthOne\'><\/h3><\/td><td><h6>current health<\/h6><\/td><td><h3 id=\'healthTwo\'><\/h3><\/td><\/tr><tr><td><h4 id=\'powerOne\'><\/h4><\/td><td><h6>current power<\/h6><\/td><td><h4 id=\'powerTwo\'><\/h4><\/td><\/tr><tr><td><h4 id=\'hitOne\'><\/h4><\/td><td><h6>this hit<\/h6><\/td><td><h4 id=\'hitTwo\'><\/h4><\/td><\/tr><\/table>"
                    }'
  end

  def finish
    render :json => '{
                      "class":"finish",
                      "html":"not yet ready"
                    }'
  end

end
