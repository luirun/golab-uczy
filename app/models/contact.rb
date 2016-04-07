class Contact < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :email
	validates_presence_of :content
	validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
	validates_length_of :content, :maximum => 500
		def update_database

		table_name = "contacts"
		@name = self.name
		@email = self.email
		@content = self.content
		save
	end
end