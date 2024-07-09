class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # 上の文章を記述することで、devise機能(登録やログイン認証)
  # が使われる前に下のparametersメソッドが実行される設定

  # サインイン後の遷移先をafter?sign_in_pathメソッドで決める
  def after_sign_in_path_for(resource)
    about_path
  end

  def after_sign_out_path_for(resource)
    about_path
  end

  # 呼び出せれた他のControllerからも参照できるようにするため
  # protectedを記述すること！
  protected

  # ストロングパラメーターはprivate⇒ほかのControllerから参照負荷
  # deviseを使用⇒protectedをセットで使うこと！


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sing_up, keys: [:name])
  end

  #configure_permitted_parametersメソッドというのがある
  #ユーザーの登録(sign_up)の際に、今回であればユーザー名(name)のデータ操作を許可する


  #deviseコントローラーは修正できないので、追記はApplication_controllerにすること！

end