class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

    @cp_point = CpPoint.new

    @cp_questions = ["あなたは人を許せませんか？","あなたは怒りっぽいですか？","あなたは寡黙ですか？","あなたは怖いですか？"]
    @np_questions = ["あなたは優しいですか？", "あなたに母性はありますか？"]
    @a_questions = ["あなたは大人ですか？", "あなたは達観していますか？"]
    @fc_questions = ["あなたは自由人ですか？", "あなたは子供ですか？"]
    @ac_questions = ["あなたは女の子ですか？", "あなたはママごとが好きですか？"]
  end

  def update
    @user = User.find(params[:id])
    @cp_point.update(cp_point_params)
    redirect_to  user_path(current_user)
  end

  
  
  def np_point_params
  	params.require(:cp_point).permit(:point)
  end
  
  def a_point_params
  	params.require(:cp_point).permit(:point)
  end
  
  def fc_point_params
  	params.require(:cp_point).permit(:point)
  end
  
  def ac_point_params
  	params.require(:cp_point).permit(:point)
  end

end
