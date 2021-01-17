EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORDputs 'ユーザーの初期データインポートに成功しました。'
end

class ImportCsv
  def self.import(path)
    Text.destroy_all
     CSV.foreach(path, headers: true) do |row|
       Text.create!(
         genre: row["genre"],
         title: row["title"],
         content: row["content"]
       )
     end
  end
end