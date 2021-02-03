class ImportCsv
  
  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.textimport(path)
    CSV.foreach(path, headers: true) do |row|
      Text.create!(
        genre:    row["genre"],
        title:    row["title"],
        content:  row["content"]
      )
    end
    puts "TextへのCSVデータをインポート完了"
  end

  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.movieimport(path)
    CSV.foreach(path, headers: true) do |row|
      Movie.create!(
        genre:  row["genre"],
        title:  row["title"],
        url:    row["url"]
      )
    end
    puts "MovieへのCSVデータをインポート完了"
  end

    # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.questionsimport(path)
    CSV.foreach(path, headers: true) do |row|
      Question.create!(
        genre:  row["genre"],
        title:  row["title"],
      )
    end
    puts "questionsへのCSVデータをインポート完了"
  end

end