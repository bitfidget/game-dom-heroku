class BattlesController < ApplicationController

  def index
    @battles = Battle.all
  end

  def show
  end

  # GET /battles/1/edit
  def edit
  end

  def create
    
    # create new battle object
    battle = Battle.new
    battle.score = params[:score]
    # create new winner div
    battle.winner = Div.new
    battle.winner.content = params[:winner][:content]
    battle.winner.element = params[:winner][:element]
    # create new loser div
    battle.loser = Div.new
    battle.loser.content = params[:loser][:content]
    battle.loser.element = params[:loser][:element]
    # create new page, if page not exist
    page_match = Page.where("url" => params[:page][:url])
    if page_match.present?
      battle.winner.page = page_match.first
    else
      battle.winner.page = Page.new
      battle.winner.page.url = params[:page][:url]
      battle.winner.page.title = params[:page][:title]
      
      battle.winner.page.save
    
    end
    # save winner/loser with page
    battle.winner.page_id = battle.winner.page.id    
    battle.loser.page_id = battle.winner.page.id
    
    battle.winner.save
    battle.loser.save
    
    # save the battle
    battle.winner_id = battle.winner.id
    battle.loser_id = battle.loser.id
    
    battle.save

    if battle.save
      render :json => battle.to_json
    else
      render :json => false
    end

  end

  def destroy
    @battle = Battle.find(params[:id])
    @battle.destroy
  end

end