class GossipsController < ApplicationController
  def show
    @gossip= Gossip.find(params[:show])
  end
end
