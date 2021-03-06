package com.pro;
// Generated 22 Apr, 2015 3:48:22 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Constituency generated by hbm2java
 */
public class Constituency  implements java.io.Serializable {


     private Integer cid;
     private State state;
     private String name;
     private Set candidates = new HashSet(0);

    public Constituency() {
    }

	
    public Constituency(State state, String name) {
        this.state = state;
        this.name = name;
    }
    public Constituency(State state, String name, Set candidates) {
       this.state = state;
       this.name = name;
       this.candidates = candidates;
    }
   
    public Integer getCid() {
        return this.cid;
    }
    
    public void setCid(Integer cid) {
        this.cid = cid;
    }
    public State getState() {
        return this.state;
    }
    
    public void setState(State state) {
        this.state = state;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set getCandidates() {
        return this.candidates;
    }
    
    public void setCandidates(Set candidates) {
        this.candidates = candidates;
    }




}


