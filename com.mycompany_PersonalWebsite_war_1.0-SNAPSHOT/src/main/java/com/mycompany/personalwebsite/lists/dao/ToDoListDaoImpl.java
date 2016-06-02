/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.personalwebsite.lists.dao;

import com.mycompany.personalwebsite.lists.dto.Item;
import com.mycompany.personalwebsite.lists.dto.ToDoList;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Winona Wixson
 */
public class ToDoListDaoImpl implements ToDoListDao {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private static final String SQL_CREATE_LIST = "INSERT INTO Lists (title) VALUES (?)";

    @Override
    public ToDoList createList(String title) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static final String SQL_CREATE_ITEM = "INSERT INTO Items (itemName) VALUES (?)";
    private static final String SQL_ADD_ITEM_TO_LISTITEMS = "INSERT INTO ListItems (listId, itemId) VALUES (?, ?)";

    @Override
    public Item addItem(int listId, String itemName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static final String SQL_DELETE_ITEM = "DELETE FROM Items WHERE id = ?";
    private static final String SQL_DELETE_FROM_LISTITEMS_BY_ITEM_ID = "DELETE FROM ListItems WHERE itemId = ?";

    @Override
    public void removeItem(int itemId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static final String SQL_DELETE_LIST = "DELETE FROM Lists WHERE id = ?";
    private static final String SQL_DELETE_FROM_LISTITEMS_BY_LIST_ID = "DELETE FROM ListItems WHERE listId = ?";

    @Override
    public void removeList(int listId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static final String SQL_GET_ALL_LISTS = "";

    @Override
    public List<ToDoList> getAllLists() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static final String SQL_UPDATE_LIST_TITLE = "";

    @Override
    public void updateListTitle(int id, String title) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private static final String SQL_UPDATE_ITEM_NAME = "";

    @Override
    public void updateItemName(int id, String itemName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
