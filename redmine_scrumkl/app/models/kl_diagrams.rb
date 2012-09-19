class KlDiagrams < KlDiagram

  attr :sprint, true
  
  def initialize(sprint)
    if sprint 
       @sprint = Version.find(sprint) || Version.new
      
   else
      @sprint =  Version.new
   end
  end
  
  
  def get_date_from
    @date_from=  @sprint.start_date || @sprint.created_on.to_date
  end
  
  def get_date_to
    @date_to = @sprint.effective_date
  end  
  
  def get_date_update 
    @date_update = @sprint.updated_on.to_date
  end
  
  def set_y_max(sprint_id)
    @y_max = KlDiagram.maximum(:story_point, :conditions=> ['sprint_id=?', sprint_id]).to_i + 20
  end
  
  def get_date_end   #提取数据截止时间
    # sprint = all(:conditions=> ['sprint_id=? and story_point_left=?', sprint_id, 0]) #故事点数没有完成完，只要没更新，数据也截止
    date_update = get_date_update
    date_end = DateTime.now 
    if  date_update < DateTime.now # and sprint==nil
      date_end = date_update
    end 
    @date_end = date_end
  end
  
  def  get_end_date   #显示的最后时间
    date_from = get_date_from 
    date_to = get_date_to 
    date_update = get_date_update 
    end_date = date_to
    if date_to < date_update
      end_date = date_upadte
    end
    if end_date - date_from <30
      end_date = date_from +30
    end
    @end_date = end_date
  end
  
  def  get_story_point 
    points = []
    curr_point = 0
    start_date = get_date_from 
    end_date = get_date_end 
    #    sprint = all(:conditions=> ['sprint_id=?', sprint_id])   
    #    (start_date..end_date).each do |date|
    #      sprint.each do |i|
    #        if i.update_on == date and i.story_point != nil
    #           curr_point = i.story_point
    #        end
    #      end   
    #      points << curr_point  
    #    end
     (start_date..end_date).each_with_index do |date, i|
      if i==0
         curr = KlDiagram.find(:first,:conditions=>["update_on=? and sprint_id=?",date,@sprint.id])
         curr_point = curr.nil? ?  0 :curr.story_point 
      else
        curr  = KlDiagram.find(:first,:conditions=>["update_on=? and sprint_id=?",date,@sprint.id])
        curr_point = curr.nil? ?  points[i-1] :curr.story_point 
      end
      points << curr_point
    end
    @story_point = points
  end
  
  def  get_story_point_left 
    points_left = []
    curr_point = 0
    start_date = get_date_from 
    end_date = get_date_end 
    #    sprint = all(:conditions=> ['sprint_id=?', sprint_id])      
    #     (start_date..end_date).each do |date|
    #      sprint.each do |i|
    #        if i.update_on == date and i.story_point != nil
    #          curr_point = i.story_point_left
    #        end
    #      end  
     (start_date..end_date).each_with_index do |date, i|
      if i==0
        curr = KlDiagram.find(:first,:conditions=>["update_on=? and sprint_id=?",date,@sprint.id])
        curr_point = curr.nil? ?  0 :  curr.story_point_left 
      else
        curr = KlDiagram.find(:first,:conditions=>["update_on=? and sprint_id=?",date,@sprint.id])
        curr_point = curr.nil? ?  points_left[i-1] : curr.story_point_left 
      end 
        points_left << curr_point
      end  
   @story_point_left = points_left
end
end
