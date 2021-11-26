package com.PayMyBudy.repository;

import com.PayMyBudy.model.Connection;
import com.PayMyBudy.model.Transfer;
import com.PayMyBudy.model.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransferRepository extends CrudRepository<Transfer, Long> {
@Query("SELECT c FROM Transfer c WHERE c.from.id= :id")
    List<Transfer> findTransferByUserId(Integer id);
}
