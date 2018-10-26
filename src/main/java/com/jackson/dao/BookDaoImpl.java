package com.jackson.dao;

import com.jackson.model.Book;
import com.jackson.model.Book_author;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class BookDaoImpl implements BookDao {


    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
    }

    @Override
    public void updateBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
    }

    @Override
    public void removeBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, new Integer(id));

        if(book!=null){
            session.delete(book);
        }
    }

    @Override
    public Book getBookById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, new Integer(id));

        return book;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Book> listBooks() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> bookList = session.createQuery("from Book").list();

        return bookList;
    }

    public List<Book_author> task2()  {
       /* Session session = this.sessionFactory.getCurrentSession();

        String sql = "select a.author_id from book_author a  group by a.author_id   having COUNT(a.author_id) > 1  ";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Book_author.class);

        List<Book_author> task2List = query.list();
        return task2List;*/
       return  null;
    }

    public String task4() {
        return null;
    }

}
