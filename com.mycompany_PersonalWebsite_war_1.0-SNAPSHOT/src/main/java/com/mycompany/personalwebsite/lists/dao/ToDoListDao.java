/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.personalwebsite.lists.dao;

import com.mycompany.personalwebsite.lists.dto.Item;
import com.mycompany.personalwebsite.lists.dto.ToDoList;
import java.util.List;

/**
 *
 * @author Winona Wixson
 */
public interface ToDoListDao {
    
    public ToDoList createList(String title);
    public Item addItem(int listId, String itemName);
    
    public void removeItem(int itemId);
    public void removeList(int listId);
    
    public List<ToDoList> getAllLists();
    
    public void updateListTitle(int id, String title);
    public void updateItemName(int id, String itemName);
    
    
}
