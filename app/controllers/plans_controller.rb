class PlansController < ApplicationController
  def index
    
  end
  
  def new
  end
  
  def show
    # @plan = params[:name]
   
    @plan = Pran.find(params[:id])
  end
      
      
    #   params[:name1] && params[:name3] && params[:name7]
    #   params[:name1] && params[:name4] && params[:name6]
    #   params[:name1] && params[:name4] && params[:name7]
    #   params[:name1] && params[:name5] && params[:name6]
    #   params[:name1] && params[:name5] && params[:name7]
    #   params[:name2] && params[:name3] && params[:name6]
    #   params[:name2] && params[:name3] && params[:name7]
    #   params[:name2] && params[:name4] && params[:name6]
    #   params[:name2] && params[:name4] && params[:name7]
    #   params[:name2] && params[:name5] && params[:name6]
    #   params[:name2] && params[:name5] && params[:name7]
  
  
  def create
    # if params[:"with_who"]
    #   "日帰り"
    # else
    #   "泊まり"
    # end
    # @plan = Plan.find(10)
    Plan.create(with_who: plan_params[:with_who], how_long: plan_params[:how_long], purpose: plan_params[:purpose], user_id: current_user.id)
    # redirect_to controller: :users, action: :index
    # params = { }
    if params[:how_long] == "one_day" && params[:with_who] == "alone" && params[:purpose] == "view"
        # @plans = Plan.where(how_long: "one_day", with_who: "alone", purpose: "view")
        @reviews = Review.where(how_l: "one_day", with_w: "alone", purp: "view")
        
    elsif params[:how_long] == "one_day" && params[:with_who] == "alone" && params[:purpose] == "meal"
        # @plans = Plan.where(how_long: "one_day", with_who: "alone", purpose: "meal")
        @reviews = Review.where(how_l: "one_day", with_w: "alone", purp: "meal")
        
    elsif params[:how_long] == "one_day" && params[:with_who] == "friend" && params[:purpose] == "view"
        # @plans = Plan.where(how_long: "one_day", with_who: "friend", purpose: "view")
        @reviews = Review.where(how_l: "one_day", with_w: "friend", purp: "view")
        
    elsif params[:how_long] == "one_day" && params[:with_who] == "friend" && params[:purpose] == "meal"
        # @plans = Plan.where(how_long: "one_day", with_who: "friend", purpose: "meal")
        @reviews = Review.where(how_l: "one_day", with_w: "friend", purp: "meal")
        
    elsif params[:how_long] == "one_day" && params[:with_who] == "family" && params[:purpose] == "view"
        # @plans = Plan.where(how_long: "one_day", with_who: "family", purpose: "view")
        @reviews = Review.where(how_l: "one_day", with_w: "family", purp: "view")
        
    elsif params[:how_long] == "one_day" && params[:with_who] == "family" && params[:purpose] == "meal"
        # @plans = Plan.where(how_long: "one_day", with_who: "family", purpose: "meal")
        @reviews = Review.where(how_l: "one_day", with_w: "family", purp: "meal")
        
    elsif params[:how_long] == "stay" && params[:with_who] == "alone" && params[:purpose] == "view"
        # @plans = Plan.where(how_long: "stay", with_who: "alone", purpose: "view")
        @reviews = Review.where(how_l: "stay", with_w: "alone", purp: "view")
        
    elsif params[:how_long] == "stay" && params[:with_who] == "alone" && params[:purpose] == "meal"
        # @plans = Plan.where(how_long: "stay", with_who: "alone", purpose: "meal")
        @reviews = Review.where(how_l: "stay", with_w: "alone", purp: "meal")
        
    elsif params[:how_long] == "stay" && params[:with_who] == "friend" && params[:purpose] == "view"
        # @plans = Plan.where(how_long: "stay", with_who: "friend", purpose: "view")
        @reviews = Review.where(how_l: "stay", with_w: "friend", purp: "view")
        
    elsif params[:how_long] == "stay" && params[:with_who] == "friend" && params[:purpose] == "meal"
        # @plans = Plan.where(how_long: "stay", with_who: "friend", purpose: "meal")
        @reviews = Review.where(how_l: "stay", with_w: "friend", purp: "meal")
        
    elsif params[:how_long] == "stay" && params[:with_who] == "family" && params[:purpose] == "view"
        # @plans = Plan.where(how_long: "stay", with_who: "family", purpose: "view")
        @reviews = Review.where(how_l: "stay", with_w: "family", purp: "view")
        
    elsif params[:how_long] == "stay" && params[:with_who] == "family" && params[:purpose] == "meal"
        # @plans = Plan.where(how_long: "stay", with_who: "family", purpose: "meal")
        @reviews = Review.where(how_l: "stay", with_w: "family", purp: "meal")
    end
    
    # @review = @plan.reviews.review
    # @user = User.find(params[:id])
    # @plan = Plan.all
  end
  
  private
  def plan_params
    params.permit(:with_who, :how_long, :purpose)
  end
end
