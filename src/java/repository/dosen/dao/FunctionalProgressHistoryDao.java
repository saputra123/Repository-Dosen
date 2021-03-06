/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.FunctionalProgressHistory;
/**
 *
 * @author Jaret
 */
public interface FunctionalProgressHistoryDao {
   public void saveFunctionalProgressHistory(FunctionalProgressHistory functionalProgressHistory);
   public void deleteFunctionalProgressHistory(FunctionalProgressHistory functionalProgressHistory);
   public FunctionalProgressHistory getDataFunctionalProgressHistory(int idProgressHistory);
   
   public FunctionalProgressHistory getDataAssistantProgressHistory(int idLecturer);
   public FunctionalProgressHistory getDataLectorsProgressHistory(int idLecturer);
   public FunctionalProgressHistory getDataHeadlectorsProgressHistory(int idLecturer);
   public FunctionalProgressHistory getDataProfessorProgressHistory(int idLecturer);
    
   public List<FunctionalProgressHistory> getAssistantProgressHistory();
   public List<Object[]> getAssistantProgressHistory(String idFaculty, String idMajor);
   public List<FunctionalProgressHistory> getAssistantProgressHistoryByFaculty(String idFaculty);
   public List<FunctionalProgressHistory> getAssistantProgressHistoryByMajor(String idMajor);
   
   public List<FunctionalProgressHistory> getLectorsProgressHistory();
   public List<Object[]> getLectorsProgressHistory(String idFaculty, String idMajor);
   public List<FunctionalProgressHistory> getLectorsProgressHistoryByFaculty(String idFaculty);
   public List<FunctionalProgressHistory> getLectorsProgressHistoryByMajor(String idMajor);
   
   public List<FunctionalProgressHistory> getHeadlectorsProgressHistory();
   public List<Object[]> getHeadlectorsProgressHistory(String idFaculty, String idMajor);
   public List<FunctionalProgressHistory> getHeadlectorsProgressHistoryByFaculty(String idFaculty);
   public List<FunctionalProgressHistory> getHeadlectorsProgressHistoryByMajor(String idMajor);
   
   public List<FunctionalProgressHistory> getProfessorProgressHistory();
   public List<Object[]> getProfessorProgressHistory(String idFaculty, String idMajor);
   public List<FunctionalProgressHistory> getProfessorProgressHistoryByFaculty(String idFaculty);
   public List<FunctionalProgressHistory> getProfessorProgressHistoryByMajor(String idMajor);
   
}
