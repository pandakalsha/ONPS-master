package com.pro;
// Generated 22 Apr, 2015 3:48:22 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Party generated by hbm2java
 */
public class Party  implements java.io.Serializable {


     private int regId;
     private String name;
     private int voteN;
     private String symbol;
     private int candidateN;
     private String ideology;
     private Set candidates = new HashSet(0);

    public Party() {
    }

	
    public Party(int regId, String name, int voteN, String symbol, int candidateN, String ideology) {
        this.regId = regId;
        this.name = name;
        this.voteN = voteN;
        this.symbol = symbol;
        this.candidateN = candidateN;
        this.ideology = ideology;
    }
    public Party(int regId, String name, int voteN, String symbol, int candidateN, String ideology, Set candidates) {
       this.regId = regId;
       this.name = name;
       this.voteN = voteN;
       this.symbol = symbol;
       this.candidateN = candidateN;
       this.ideology = ideology;
       this.candidates = candidates;
    }
   
    public int getRegId() {
        return this.regId;
    }
    
    public void setRegId(int regId) {
        this.regId = regId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public int getVoteN() {
        return this.voteN;
    }
    
    public void setVoteN(int voteN) {
        this.voteN = voteN;
    }
    public String getSymbol() {
        return this.symbol;
    }
    
    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }
    public int getCandidateN() {
        return this.candidateN;
    }
    
    public void setCandidateN(int candidateN) {
        this.candidateN = candidateN;
    }
    public String getIdeology() {
        return this.ideology;
    }
    
    public void setIdeology(String ideology) {
        this.ideology = ideology;
    }
    public Set getCandidates() {
        return this.candidates;
    }
    
    public void setCandidates(Set candidates) {
        this.candidates = candidates;
    }




}


