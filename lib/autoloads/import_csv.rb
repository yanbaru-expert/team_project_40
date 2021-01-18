class ImportCsv
    # CSVデータのパスを引数として受け取り、インポート処理を実行
    def self.import(path)
       CSV.foreach(path, headers: true) do |row|
         Text.create!(
            genre: row["genre"],
           title: row["title"],
           content: row["content"]
         )
       end
    end
    puts "TextへのCSVデータをインポート完了"
  end