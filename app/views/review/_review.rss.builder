xml.item do
  xml.guid( review_show_url( :review => review ) )
  xml.title( review.title )
  if review.score
		xml.description( "Reviewed by Sam on: #{review.published_on.strftime( '%d-%m-%Y' )} with an overall score of #{review.score}" )
	else
		xml.description( "Reviewed by Sam on: #{review.published_on.strftime( '%d-%m-%Y' )} with no overall score given." )
	end
  
  
  
  
  
  xml.link( review_show_url( :review => review ) )
  xml.pubDate( review.published_on.rfc822 )
end