class MypagesController < ApplicationController
  def index
    
    @genreCount =
    {
      userBasic: current_user.read_texts.where(genre:"Basic").count,
      allBasic:  Text.all.where(genre:"Basic").count,
      userGit:   current_user.read_texts.where(genre:"Git").count,
      allGit:    Text.all.where(genre:"Git").count,
      userRuby:  current_user.read_texts.where(genre:"Ruby").count,
      allRuby:   Text.all.where(genre:"Ruby").count,
      userRails: current_user.read_texts.where(genre:"Ruby on Rails").count,
      allRails:  Text.all.where(genre:"Ruby on Rails").count,
    }

  end
  
end
