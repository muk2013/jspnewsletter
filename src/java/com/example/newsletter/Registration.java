/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.newsletter;

/**
 *
 * @author Helmut
 */
public class Registration {

    private String firstname;
    private String name;
    private String birthdate;
    private String email;
    private String experience;
    private String agreed;

    /**
     *
     */
    public Registration() {
        firstname = "";
        name = "";
        birthdate = "";
        email = "";
        experience = "";
        agreed = "";
    }

    /**
     * @return Concatenate all fields
     */
    public String getAll() {
        return "Beandaten: " + firstname + " " + name + ". Email: " + email + ", Geburtstag: " + birthdate + ", Erfahrung: " + experience + ", Erklärung: " + agreed;
    }

    /**
     * @return the firstname
     */
    public String getFirstname() {
        return firstname;
    }

    /**
     * @param firstname the firstname to set
     */
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the birthdate
     */
    public String getBirthdate() {
        return birthdate;
    }

    /**
     * @param birthdate the birthdate to set
     */
    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the experience
     */
    public String getExperience() {
        return experience;
    }

    /**
     * @param experience the experience to set
     */
    public void setExperience(String experience) {
        this.experience = experience;
    }

    /**
     * @return the agreed
     */
    public String getAgreed() {
        return agreed;
    }

    /**
     * @param agreed the agreed to set
     */
    public void setAgreed(String agreed) {
        this.agreed = agreed;
    }

    /**
     *
     * @return
     */
    public boolean isValidData() {
        return experience!=null && !experience.equals("") && Integer.parseInt(experience)>5;
    }
}
