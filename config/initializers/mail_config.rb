ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
address: 'smtp.kagoya.net',
domain: 'kwes.co.jp',
port: 587,
user_name: 'kir877636.kashiyama', #kashiyama@kwes.co.jpではない。kagoya独自の設定
password: 'wes19680615', #ENV['MAIL_PW'],
authentication: 'plain',
enable_starttls_auto: true
}