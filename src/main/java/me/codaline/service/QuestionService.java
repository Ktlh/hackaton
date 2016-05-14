package me.codaline.service;

import me.codaline.dao.QuestionDao;
import me.codaline.model.answers;
import me.codaline.model.questions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    QuestionDao dao;

    public answers getAnswerById(int id){
        return dao.getAnswerById(id);
    }

    public List<questions> getQuestions() {
        return dao.getQuestions();
    }
}
