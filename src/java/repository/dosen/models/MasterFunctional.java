/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.models;

import java.io.Serializable;

/**
 *
 * @author sandi
 */
public class MasterFunctional implements Serializable{
    int idFunctional;
    String nameFunctional;

    public int getIdFunctional() {
        return idFunctional;
    }

    public void setIdFunctional(int idFunctional) {
        this.idFunctional = idFunctional;
    }

    public String getNameFunctional() {
        return nameFunctional;
    }

    public void setNameFunctional(String nameFunctional) {
        this.nameFunctional = nameFunctional;
    }
    
    
}
