package com.PayMyBudy.repository;

import com.PayMyBudy.model.Connection;
import com.PayMyBudy.model.User;
import org.hibernate.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.CrudRepositoryExtensionsKt;
import org.springframework.stereotype.Repository;

import java.awt.*;
import java.util.Arrays;
import java.util.List;

@Repository
public interface ConnectionRepository extends CrudRepository<Connection,Integer> {
    List<Connection> findConnectionsByUser1Email(String email);

    }

