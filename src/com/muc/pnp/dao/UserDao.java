package com.muc.pnp.dao;

import com.muc.pnp.entity.Info;


import org.springframework.stereotype.Repository;

import com.muc.pnp.entity.User;

import java.util.List;
import java.util.Map;


/**
 * UserDao
 *
 * 
 */
@Repository
public interface UserDao {
    User findByUsername(String username);

    int editPassword(User user);

    void userRegister(User userInfo);

    List<Info> getInfo(String username);
}
