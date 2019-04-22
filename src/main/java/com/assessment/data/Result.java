package com.assessment.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;

@Entity
public class Result extends Base {
	
	    @Column
	    private String area;
	    
	    @Column
	    private String score;
	    
	    
	    @Column
	    @Lob
	    private String description;
	    
	   
	    public String getArea ()
	    {
	        return area;
	    }

	    
	    public void setArea (String area)
	    {
	        this.area = area;
	    }

	    
	    public String getScore ()
	    {
	        return score;
	    }

	   
	    public void setScore (String score)
	    {
	        this.score = score;
	    }

	    
	    public String getDescription ()
	    {
	        return description;
	    }

	    
	    public void setDescription (String description)
	    {
	        this.description = description;
	    }
	    
	    
	    @Override
	    public String toString()
	    {
	        return "ClassPojo [area = "+area+", score = "+score+", description = "+description+"]";
	    }
	}
				
		

