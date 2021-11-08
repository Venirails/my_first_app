class Book < ApplicationRecord
   self.per_page = 4


   validates :name, presence: true
   validates :name, length: { minimum: 2 }
   validates :author, presence: true
   validates :price, numericality: true
   validates :name, uniqueness: true


   before_save :merge_names
   after_destroy :update_log 

   def merge_names
      self.name = self.name + " By " + self.author
   end

   def update_log
      logger.info "================Alas ! A book has been deleted #{self.id} and name #{self.name}"
   end
end
