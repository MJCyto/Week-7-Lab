/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dataaccess.RoleDB;
import dataaccess.UserDB;
import java.util.ArrayList;
import java.util.List;
import models.Role;
import models.User;

/**
 *
 * @author mjjmk
 */
public class RoleService {
    /**
     * This method calls the getAll() method from UserDB.
     * @return userList - a list of users from the database.
     * @throws Exception - all exceptions that could be had.
     */
    public List<Role> getAll() throws Exception {
        RoleDB db = new RoleDB();
        ArrayList<Role> roleList = (ArrayList<Role>) db.getAll();
        
        return roleList;
    }
}
