class Like < ActiveRecord::Base
  # attr_accessible :polarity, :user_id, :post_id
  # load_and_authorize_resource


  belongs_to :post
  belongs_to :user
  #
  # before_create  :add_to_likecount
  # before_destroy :substract_from_likecount
  #
  # validates :post_id, presence: true
  # validates :polarity, presence: true, inclusion: { in: [-1, 1] }
  # validates :user_id, presence: true

  # protected
  #
  # def add_to_likecount
  #   if [Post, Reply].include?(post.class)
  #     self.post.update_column(:likecount, post.likecount + self.polarity)
  #   end
  # end
  #
  # def substract_from_likecount
  #   if [Post, Reply].include?(post.class)
  #     self.post.update_column(:likecount, post.likecount - self.polarity)
  #   end
  # end
  #
  # def like_params
  #   params.require(:like).permit(:user_id, :post_id, :polarity)
  # end
end
