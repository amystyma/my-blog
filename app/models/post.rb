class Post < ActiveRecord::Base
	
	has_many :comments

	validates_presence_of :body, :title

  def to_param
    "#{id}-#{title}".parameterize
  end
end
