package com.PayMyBudy.service;

import com.PayMyBudy.model.Connection;
import com.PayMyBudy.model.User;
import com.PayMyBudy.repository.ConnectionRepository;
import com.PayMyBudy.repository.UserRepository;
import com.PayMyBudy.service.form.AddConnectionForm;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
@Service("ConnectionService")
public class ConnectionService {
    private final ConnectionRepository connectionRepository;
    private final UserRepository userRepository;

    public ConnectionService(ConnectionRepository connectionRepository, UserRepository userRepository) {
        this.connectionRepository = connectionRepository;
        this.userRepository = userRepository;
    }

    public List<String> findConnectionsEmail() {

        org.springframework.security.core.userdetails.User springUser = (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User connectedUser = UserRepository.findUserByMail(springUser.getUsername())
                .orElseThrow(() -> new RuntimeException("user with email  not found"));
        return connectionRepository.findConnectionsByUser1Email(connectedUser.getEmail()).stream().map(Connection::getUser2).map(User::getEmail).collect(Collectors.toList());

    }

    public void addConnection(final AddConnectionForm form) {

        User user = UserRepository
                .findUserByMail(form.getEmail())
                .orElseThrow(() -> new RuntimeException("user with email " + form.getEmail() + " not found"));
        org.springframework.security.core.userdetails.User springUser = (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User connectedUser = UserRepository.findUserByMail(springUser.getUsername())
                .orElseThrow(() -> new RuntimeException("user with email  not found"));
        Connection connection = new Connection();
        connection.setUser1(connectedUser);
        connection.setUser2(user);
        connectionRepository.save(connection);
    }
}
