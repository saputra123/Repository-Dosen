/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterGender;

/**
 *
 * @author sandi
 */
public interface GenderDao {
    public List<MasterGender> getGender();
    public MasterGender getDataGender(int idGender);
}
