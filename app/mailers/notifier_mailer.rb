class NotifierMailer < ApplicationMailer
	def alert_admin(book)
	  @name = book.name
	  @author = book.author
      mail(:to=>"veni.rails@gmail.com",:subject=>"ALERT-A new book has been added!")
	end
end
