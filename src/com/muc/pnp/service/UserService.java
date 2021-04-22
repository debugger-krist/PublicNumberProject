package com.muc.pnp.service;

import com.muc.pnp.entity.Info;


import org.springframework.stereotype.Service;

import com.muc.pnp.entity.User;

import java.util.List;
import java.util.Map;


/**
 * service½Ó¿Ú
 *
 * 
 */
@Service
public interface UserService {

    User findByUsername(String username);

    int editPassword(User user);

    void userRegister(User userInfo);

    List<Info> getInfo(String username);

   
}
