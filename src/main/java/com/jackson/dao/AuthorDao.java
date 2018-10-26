package com.jackson.dao;

import com.jackson.model.Author;
import java.util.List;

public interface AuthorDao {

    void addAuthor(Author author);

    void updateAuthor(Author author);

    void removeAuthor(int id);

    Author getAuthorById(int id);

    List<Author> listAuthors();

    List<Author> task1();

    List<Author> task3();


}
