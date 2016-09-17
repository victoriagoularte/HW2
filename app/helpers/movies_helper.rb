module MoviesHelper	

	def oddness(count)
		count.odd? ?  "odd" :  "even"
	end
	  
	def helper_class(field)
		if(params[:sort].to_s == field)
			return 'hilite'
		else
			return nil
		end
	end

	def helper_sort(movie)
		if(params[:sort].to_s == 'title')
			return movie.title
		elsif(params[:sort].to_s == 'release')
			return movie.release_date.to_s
		end 
	end

end	