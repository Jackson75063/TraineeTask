package com.jackson.service;

import com.jackson.dao.AuthorDao;
import com.jackson.model.Author;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class AuthorServiceImpl implements AuthorService {

    private AuthorDao authorDao;
    public void setAuthorDao(AuthorDao authorDao) {
        this.authorDao = authorDao;
    }


    @Override
    @Transactional
    public void addAuthor(Author author) {
        this.authorDao.addAuthor(author);
    }

    @Override
    @Transactional
    public void updateAuthor(Author author) {
//        this.authorDao.updateAuthor(author);
    }

    @Override
    @Transactional
    public void removeAuthor(int id) {
        this.authorDao.removeAuthor(id);
    }


    @Override
    @Transactional
    public Author getAuthorById(int id) {
        System.out.println();
        return this.authorDao.getAuthorById(id);
    }

    @Override
    @Transactional
    public List<Author> listAuthors() {
        return this.authorDao.listAuthors();
    }

    @Override
    @Transactional
    public List<Author> task1() {
        return this.authorDao.task1();
    }

    @Override
    @Transactional
    public List<Author> task3() {
        return this.authorDao.task3();
    }

}
