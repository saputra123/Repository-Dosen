/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.LecturerProgressHistory;

/**
 *
 * @author Jaret
 */
public interface LecturerProgressHistoryDao {
   public List<LecturerProgressHistory> getLecturerProgressHistory();
   public List<Object[]> getLecturerProgressHistory(String idFaculty, String idMajor);
   public LecturerProgressHistory getDataLecturerProgressHistory(int idLecturer);
   public LecturerProgressHistory getDataLecturerProgressHistoryById(int idProgressHistory);
   public List<LecturerProgressHistory> getLecturerProgressHistoryByFaculty(String idFaculty);
   public List<LecturerProgressHistory> getLecturerProgressHistoryByMajor(String idMajor);
   public void saveLecturerProgressHistory (LecturerProgressHistory lecturerProgressHistory);
   public void deleteLecturerProgressHistory (LecturerProgressHistory lecturerProgressHistory);
}
