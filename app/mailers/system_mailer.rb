class SystemMailer < ApplicationMailer
  def recurling_report(report)
    @report = report
    mail(from: 'どういうアドレスから送るか', to: 送りたい先のメールアドレス, subject: "件名")
  end
end