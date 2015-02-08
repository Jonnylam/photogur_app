class Picture < ActiveRecord::Base
  scope :newest_first, -> { order(created_at: :desc) }
  scope :most_recent_five, -> { newest_first.limit(5) }
  scope :created_before, ->(time) { where("created_at < ?", time) }

	# def self.most_recent_five
	# 	# order(created_at: :desc).limit(5)
	# 	#self is a class method, can be operated at a picture itself
	# 	# scope :most_recent_five, -> {order(created_at: :desc).limit(5)}
	# 	#LAMDA
	# end

	#def self.created_before(date)
	#where(created_at < "?", date)
	#end
	#scope :created_before, -> (date){where ("created_at <?", date)}

	# scope :newest_first, ->{order(created_at: :desc)}
	#scope :most_recent_five, -> {newest_first.limit(5)}
		#LAMDA


end
