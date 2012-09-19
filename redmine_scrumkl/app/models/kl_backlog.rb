class KlBacklog < ActiveRecord::Base
  belongs_to :issue ,:class_name=>"Issue",
                 :foreign_key =>"issue_id",
                 :dependent => :delete
  belongs_to :sprint ,:class_name=>"Version",
                 :foreign_key =>"sprint_id",
                 :dependent => :destroy
  belongs_to :klcategory,:class_name=>"KlKlgCategory",
                            :foreign_key=>"category_id",
                            :dependent=>:destroy  
                            
  validates_inclusion_of :priority, :in => 0..40
  validates_presence_of  :estimate
  def  category
    @category = self.klcategory ? self.klcategory.category : nil
  end
end
