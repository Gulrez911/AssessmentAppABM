package com.assessment.data;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class OnetResults extends Base{
	
	    @Column
	    private Result[] result;
	    
	    @Column
	    private String total;
	    
	    @Column
	    private String answers;
	    
	    @Column
	    private String start;
	    
	    @Column
	    private String end;
	    
	    
	    public Result[] getResult ()
	    {
	        return result;
	    }
	    
	    
	    public void setResult (Result[] result)
	    {
	        this.result = result;
	    }
	    
	  
	    public String getTotal ()
	    {
	        return total;
	    }
	    
	   
	    public void setTotal (String total)
	    {
	        this.total = total;
	    }
	    
	   
	    public String getAnswers ()
	    {
	        return answers;
	    }
	    
	  
	    public void setAnswers (String answers)
	    {
	        this.answers = answers;
	    }
	    
	   
	    public String getStart ()
	    {
	        return start;
	    }
	    
	   
	    public void setStart (String start)
	    {
	        this.start = start;
	    }
	    
	    
	    public String getEnd ()
	    {
	        return end;
	    }
	    
	   
	    public void setEnd (String end)
	    {
	        this.end = end;
	    }

	    @Override
	    public String toString()
	    {
	        return "ClassPojo [result = "+result+", total = "+total+", answers = "+answers+", start = "+start+", end = "+end+"]";
	    }
	}

