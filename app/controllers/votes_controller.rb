class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes
  # POST /votes.json
  def create
    type = type_params[:type]
    if type == "vert"
      if Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: user_challenge_params[:user_challenge_id],
        green: 1
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7),
        green: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*2),
        green: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*3),
        green: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*4),
        green: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*5),
        green: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*6),
        green: 1  
      }).present?

        @vote = Vote.new(user_id: vote_params[:user_id])
        flash[:alert] = "Enfoiré de namek !! T\'as essayé de m\'enculer, t\'as voulu voter plusieurs fois pour le même défi!!! La prochaine fois mets de la vaseline et dis moi des mots doux, c\'est comme ça qu\'on fait avant d\'enculer quelqu\'un !!! De plus tu n\'aurais po une cigarette ? J\'aime bien me fumer un clope après l\'amour batard !!!"
        redirect_to '/equipe'
      else
        @vote = Vote.new(user_id: vote_params[:user_id])
        @cible = UserChallenge.where(user_id: user_challenge_params[:nom_id], challenge_id: user_challenge_params[:user_challenge_id]).first
        @vote.user_challenge_id = @cible.id
        @user_challenge = UserChallenge.where(user_id: user_challenge_params[:nom_id], challenge_id: user_challenge_params[:user_challenge_id]).first
        @vote.green = @vote.green.to_i + 1
        @user_challenge.green = @user_challenge.green.to_i + 1
        @user = User.where(id: user_challenge_params[:nom_id]).first
        @user.green = @user.green.to_i + 1
        respond_to do |format|
          if @vote.save && @user_challenge.save && @user.save
            flash[:notice] = "Tu viens de mettre un pouce #{type}"
            format.html { redirect_to '/equipe' }
          else
            format.html { redirect_to '/equipe' }
          end
        end
      end
    else
      if Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: user_challenge_params[:user_challenge_id],
        red: 1
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7),
        red: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*2),
        red: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*3),
        red: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*4),
        red: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*5),
        red: 1  
      }).present?||
      Vote.where({
        user_id: vote_params[:user_id],
        user_challenge_id: (user_challenge_params[:user_challenge_id].to_i+7*6),
        red: 1  
      }).present?

        @vote = Vote.new(user_id: vote_params[:user_id])
        flash[:alert] = "Enfoiré de namek !! T\'as essayé de m\'enculer, t\'as voulu voter plusieurs fois pour le même défi!!! La prochaine fois mets de la vaseline et dis moi des mots doux, c\'est comme ça qu\'on fait avant d\'enculer quelqu\'un !!! De plus tu n\'aurais po une cigarette ? J\'aime bien me fumer un clope après l\'amour batard !!!"
        redirect_to '/equipe'
      else
        @vote = Vote.new(user_id: vote_params[:user_id])
        @cible = UserChallenge.where(user_id: user_challenge_params[:nom_id], challenge_id: user_challenge_params[:user_challenge_id]).first
        @vote.user_challenge_id = @cible.id
        @user_challenge = UserChallenge.where(user_id: user_challenge_params[:nom_id], challenge_id: user_challenge_params[:user_challenge_id]).first
        @vote.red = @vote.red.to_i + 1
        @user_challenge.red = @user_challenge.red.to_i + 1
        @user = User.where(id: user_challenge_params[:nom_id]).first
        @user.red = @user.red.to_i + 1
        respond_to do |format|
          if @vote.save && @user_challenge.save && @user.save
            flash[:notice] = "Tu viens de mettre un pouce #{type}"
            format.html { redirect_to '/equipe' }
          else
            format.html { redirect_to '/equipe' }
          end
        end
      end
    end

    @users = User.all

    @users.each do |user|
      user.pts = 0
    end

    @paresses = UserChallenge.where(challenge_id: 1).order(:green).reverse_order.limit(7)
    @avarices = UserChallenge.where(challenge_id: 2).order(:green).reverse_order.limit(7)
    @coleres = UserChallenge.where(challenge_id: 3).order(:green).reverse_order.limit(7)
    @envies = UserChallenge.where(challenge_id: 4).order(:green).reverse_order.limit(7)
    @gourmandises = UserChallenge.where(challenge_id: 5).order(:green).reverse_order.limit(7)
    @luxures = UserChallenge.where(challenge_id: 6).order(:green).reverse_order.limit(7)
    @orgueils = UserChallenge.where(challenge_id: 7).order(:green).reverse_order.limit(7)

    x = 3

    @paresses.each do |i|
      @user = User.find(i.user_id)
      if i == @paresses.first
        @user.pts = x
      else
        if i.green == @paresses[@paresses.index(i)-1].green
          @user.pts = x
        else
          if x > 0
            x = x - 1 
          end
          @user.pts = x
        end
      end
      @user.save
    end

    x = 3

    @avarices.each do |i|
      @user = User.find(i.user_id)
      if i == @avarices.first
        @user.pts = x
      else
        if i.green == @avarices[@avarices.index(i)-1].green
          @user.pts = x
        else
          if x > 0
            x = x - 1 
          end
          @user.pts = x
        end
      end
      @user.save
    end

    x = 3

    @coleres.each do |i|
      @user = User.find(i.user_id)
      if i == @coleres.first
        @user.pts = x
      else
        if i.green == @coleres[@coleres.index(i)-1].green
          @user.pts = x
        else
          if x > 0
            x = x - 1 
          end
          @user.pts = x
        end
      end
      @user.save
    end

    x = 3

    @envies.each do |i|
      @user = User.find(i.user_id)
      if i == @envies.first
        @user.pts = x
      else
        if i.green == @envies[@envies.index(i)-1].green
          @user.pts = x
        else
          if x > 0
            x = x - 1 
          end
          @user.pts = x
        end
      end
      @user.save
    end

    x = 3

    @gourmandises.each do |i|
      @user = User.find(i.user_id)
      if i == @gourmandises.first
        @user.pts = x
      else
        if i.green == @gourmandises[@gourmandises.index(i)-1].green
          @user.pts = x
        else
          if x > 0
            x = x - 1 
          end
          @user.pts = x
        end
      end
      @user.save
    end

    x = 3

    @luxures.each do |i|
      @user = User.find(i.user_id)
      if i == @luxures.first
        @user.pts = x
      else
        if i.green == @luxures[@luxures.index(i)-1].green
          @user.pts = x
        else
          if x > 0
            x = x - 1 
          end
          @user.pts = x
        end
      end
      @user.save
    end

    x = 3

    @orgueils.each do |i|
      @user = User.find(i.user_id)
      if i == @orgueils.first
        @user.pts = x
      else
        if i.green == @orgueils[@orgueils.index(i)-1].green
          @user.pts = x
        else
          if x > 0
            x = x - 1 
          end
          @user.pts = x
        end
      end
      @user.save
    end

  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:user_id)
    end

    def type_params
      params.require(:vote).permit(:type)
    end

    def user_challenge_params
      params.require(:vote).permit(:nom_id, :user_challenge_id)
    end
end