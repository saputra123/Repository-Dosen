/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.TranProgressFunctionalDto;

/**
 *
 * @author Jaret
 */
public interface TranProgressFunctionalService {
    public List<TranProgressFunctionalDto> getTranProgressAssistant(int idLecturer);
}