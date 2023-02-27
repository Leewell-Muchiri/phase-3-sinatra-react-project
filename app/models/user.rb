class User < ActiveRecord::Base
    # validates :username, :presence => true
    # validates :password, :presence => true

    def memes
        Meme.where(meme_id: self.id)
    end


end