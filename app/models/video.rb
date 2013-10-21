class Video < ActiveRecord::Base

	has_attached_file :source
	:content_type => ['video/mpg']

end
