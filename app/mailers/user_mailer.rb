class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: @user.email, subject: "本登録のご案内"
  end

  def password_reset(user)
    @user = user
    mail to: @user.email, subject: "パスワードの再設定"
  end
end
