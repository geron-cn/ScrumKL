class KlUserstory < KlBacklog
  # 初始化  
    attr :usr_issue, true
    
   
     
    def initialize(backlog,sprint_id)
        super()
        self.id = backlog.id
        self.category_id = backlog.category_id
        self.issue_id = backlog.issue_id
        self.priority = backlog.priority
        self.estimate = backlog.estimate
        self.sprint_id = sprint_id
        @usr_issue = backlog.issue
    end
  
#    
#    def create(backlog,issue,sprint_id=nil)
#       h = backlog.atrributes
#       if sprint_id !=nil
#          h["sprint_id"] = sprint_id
#       end
#       super.create(h)
#       issue.create(issue.atrributes)
#    end
   # 相关问题
#   
#    def initialize(backlog,sprint_id)
#      super.id = backlog.id
#      super.category_id = backlog.category_id
#      super.issue_id = backlog.issue_id
#      super.priority = backlog.priority
#      super.estimate = backlog.estimeate
#      super.sprint_id = sprint_id
#    end

 
   # 相关问题
   def usr_issue
     @usr_issue = self.issue || Issue.new
     
   end
 #保存
   def update
     @usr_issue.update_attributes(@usr_issue.attributes)
     KlBacklog.find(self.id).update_attributes(self.attributes)
   end
 #删除
   def  delete
     KlBacklog.delete(self.id)
     @usr_issue.delete
   end
 #修改
 
  def modify(issue,backlog)
    @usr_issue.update_attributes(issue.attributes)
    KlBacklog.find(self.id).update_attributes(backlog.attributes)
  end
   
end  
   