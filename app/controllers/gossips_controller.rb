class GossipsController < ApplicationController
  def index 
    @gossips = Gossip.all
  end 
  
  def show
    @gossip= Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.create
  end

  def create
    @gossip = Gossip.new(title:params["title"], content:params["content"], user: User.create(first_name:"Thomas", last_name:"Laneyrie",description:"Si chaud today", email:"toto@gmail.com", age:33, city:City.first))
    if @gossip.save
      redirect_to gossip_path(@gossip), success: 'Le Gossip a été créé avec succès'
    else 
      redirect_to new_gossip_path, danger: 'Echec dans la création du Gossip, essaye encore'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
