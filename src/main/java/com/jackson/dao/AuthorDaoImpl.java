package com.jackson.dao;

import com.jackson.model.Author;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public class AuthorDaoImpl implements AuthorDao {


    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addAuthor(Author author) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(author);

    }

    @Override
    public void updateAuthor(Author author) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(author);
    }

    @Override
    public void removeAuthor(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Author author = (Author) session.load(Author.class, new Integer(id));

        if(author!=null){
            session.delete(author);
        }
    }

    @Override
    public Author getAuthorById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Author author = (Author) session.load(Author.class, new Integer(id));

        return author;
    }

    @Override
    public List<Author> listAuthors() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Author> authorList = session.createQuery("from Author").list();

        return authorList;
    }

    @Override
    public List<Author> task1() {
        Session session = this.sessionFactory.getCurrentSession();
        String sql = "SELECT * FROM Author a WHERE year(current_date())- year(a.born)>55 ORDER BY a.born";

        SQLQuery query= session.createSQLQuery(sql);
        query.addEntity(Author.class);

        List<Author> authorList1   = query.list();

        return authorList1;
    }

    @Override
    public List<Author> task3() {

        Session session = this.sessionFactory.getCurrentSession();
//        String sql = "SELECT author.*  FROM author, book_author WHERE author.id  = book_author.book_id GROUP BY name ORDER BY COUNT(*) DESC limit 1";
        String sql = "SELECT author.*  FROM author GROUP BY name ORDER BY COUNT(*) DESC limit 1";

        SQLQuery query= session.createSQLQuery(sql);
        query.addEntity(Author.class);

        List<Author> authorList1   = query.list();

        return authorList1;
    }
}
