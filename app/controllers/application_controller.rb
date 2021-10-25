class ApplicationController < ActionController::Base
  # ログインしていない場合、閲覧できないよう遷移先を
  before_action :authenticate_user!, except: [:top]
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  # sign_in(ログイン)後の遷移先
  def after_sign_in_path_for(resource)
    post_texts_path
  end

  protected
  # sign_up時に名前の登録を追加
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
