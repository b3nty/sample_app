class PagesController < ApplicationController

  def home
    @titre = "Accueil"
  end

  def contact
    @titre = "Contact"
  end

  def about
    @titre = "Réglement"
  end

  def equipe
    @titre = "L'équipe/Les votes"
    @users = User.all
    @challenges = Challenge.all
    @user_challenge = UserChallenge.new
    @user = User.new
    @challenge = Challenge.new
    @vote = Vote.new
    @table = Table.new
    @tables = Table.all
  end

  def defis
    @titre = "Les Défis"
  end

  def classement
    @titre = "Le Classement"
    @table = Table.new
    @tables = Table.all
  end
end