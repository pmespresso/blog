class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length:{minimum: 3}
	validates :definition, presence: true
	validates :usage, presence: true
	validates :fabuness, presence: true
end
