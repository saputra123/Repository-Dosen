/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dto;

/**
 *
 * @author sandi
 */
public class Study{
    int idStudy;
    String studyDescription;

    public int getIdStudy() {
        return idStudy;
    }

    public void setIdStudy(int idStudy) {
        this.idStudy = idStudy;
    }

    public String getStudyDescription() {
        return studyDescription;
    }

    public void setStudyDescription(String studyDescription) {
        this.studyDescription = studyDescription;
    }
}
