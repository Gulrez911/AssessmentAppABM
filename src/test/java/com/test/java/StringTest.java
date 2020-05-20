package com.test.java;

import java.util.ArrayList;
import java.util.Iterator;

import org.apache.axis.utils.ArrayUtil;

public class StringTest {

	public static void main(String[] args) {
		String str = "GulrezFarooqui= yes"; //use split function to split by space google split with space example in geeks in geeks 
		String[] arr = str.split(" "); 
		
		System.out.println("Length:"+str.length());
		
		System.out.println("\nIndex:"+str.indexOf("yes"));
		
		for (String a : arr) {
            System.out.println("\nBefore:"+a);
            if(a.contains("yes"))
            {
            	break;
            }
            System.out.println("\nAfter:"+a);
        }
		
	}
	
	
	/*
	 * this is split with s we have to split with space and store in array then
	 * iterate it krti hu 2min dekhte hai
	 * 
	 * aao iftar karna hai aap krlo apka kam m try krti hu
	 */

}
