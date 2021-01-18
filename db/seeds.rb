EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORDputs 'ユーザーの初期データインポートに成功しました。'
end

ADMINEMAIL = 'admin@example.com'
ADMINPASSWORD = 'password'
ADMINPASSWORDCONFIRMATION = 'password'

AdminUser.find_or_create_by!(email: ADMINEMAIL) do |admin|
  admin.password = ADMINPASSWORD
  admin.passwordconfirmation = ADMINPASSWORDCONFIRMATION 
end