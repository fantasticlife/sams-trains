xml.rss( :version => '2.0', 'xmlns:atom' => 'http://www.w3.org/2005/Atom' ) do
  xml.channel do
    xml.title( "Sam's Trains reviews" )
    xml.description( "A feed of locomotive reviews from Sam's Trains" )
    xml.link( 'https://sams-trains.herokuapp.com/' )
    xml.copyright( 'https://creativecommons.org/licenses/by/3.0/' )
    xml.language( 'en-uk' )
    xml.managingEditor( 'michael@smethur.st (Michael Smethurst)' )
    xml.pubDate( @reviews.first.published_on.rfc822 )
    xml.tag!( 'atom:link', { :href => "https://sams-trains.herokuapp.com/reviews/list", :rel => 'self', :type => 'application/rss+xml' } )
    xml << render(:partial => 'review', :collection => @reviews )
  end
end


