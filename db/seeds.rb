EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

ADMIN_EMAIL = 'admin@example.com'
ADMIN_PASSWORD = 'password'

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin|
  admin.password = ADMIN_PASSWORD
end

# テキスト教材のCSVインポート
Text.destroy_all
ImportCsv.textimport('db/csv_data/text_data.csv')

# 動画教材のCSVインポート
Movie.destroy_all
ImportCsv.movieimport('db/csv_data/movie_data.csv')
