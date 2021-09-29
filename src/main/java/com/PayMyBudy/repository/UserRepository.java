package com.PayMyBudy.repository;

import com.PayMyBudy.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
    public interface UserRepository extends CrudRepository<User,Long> {

    @Override
    Optional<User> findById(Long aLong);

    static Optional<User> findUserByMail(String s) {
        return findUserByMail("String s");
    }

}



