class Role < ActiveRecord::Base
    has_many :auditions

    def actor 
        auditions.map do |actorNames|
            actorNames.actor
        end
    end

    def locations
        auditions.map do |locationList|
            locationList.location
        end
    end
    
    def lead
        audition= self.auditions.find do |audition|
            audition.hired
        end
        
        if audition != nil
            audition
        else
           "no actor has been hired for this role" 
        end
        
    end
    
    def understudy
        second=self.auditions.where(hired:true).second

        if second !=nil
            second
        else
            "no actor has been hired for this role"
        end

        
    end

end