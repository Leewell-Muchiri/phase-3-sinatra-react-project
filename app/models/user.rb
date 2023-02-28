class User < ActiveRecord::Base
    has_many :memes

    validates :username, :presence => true
    validates :password, :presence => true

    # def memes
    #     Meme.where(meme_id: self.id)
    # end


    #creates an authenticate method for the User class
    # def self.authenticate(params)
    #     user = User.find_by_username(params[:username])
    #     (user && user.password == params[:password]) ? user : nil
    # end


end