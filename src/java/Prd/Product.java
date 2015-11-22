/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Abhay Singh
 */
package Prd;
public class Product {
 
   public  Product(String desc,String pid,float cost,int avail)
    {
        this.cost = cost;
        this.pid = pid;
        this.desc=desc;
        this.avail=avail;
    }
    private int avail;
    private float cost;
    private String pid;
    private String desc;
    public String getPID()
    {
        return pid;
    }
    public int getAvail()
    {
        return avail;
    }
    public String getDesc()
    {
        return desc;
                
    }
    public float getCost()
    {
        return cost;
    }
    
}

    

