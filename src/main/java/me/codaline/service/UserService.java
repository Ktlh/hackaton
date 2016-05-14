package me.codaline.service;

import me.codaline.dao.UserDao;
import me.codaline.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    UserDao dao;

    public void createUser(String ip_user, String type) {
        Users users = new Users();
        users.setIp_user(ip_user);
        users.setType(type);
        dao.save(users);

    }

    public List<Users> getUsers() {
            return dao.getUsers();
    }

//    public Users getUser(String email) {
//        return dao.getUser(email);
//    }

}
