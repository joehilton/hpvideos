class Video < ActiveRecord::Base

	has_attached_file :video, :styles => {
		:mobile => {:geometry => "400x300", :format => 'mp4', :streaming => true}
	}, :processors => [:ffmpeg, :qtfaststart]

end
