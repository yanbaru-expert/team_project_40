EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORDputs 'ユーザーの初期データインポートに成功しました。'
end

ADMIN_EMAIL = 'admin@example.com'
ADMIN_PASSWORD = 'password'

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin|
  admin.password = ADMIN_PASSWORD
end