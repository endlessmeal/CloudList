package com.perfectlogic.cloudlist.repos;

import com.perfectlogic.cloudlist.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
    //User findById(Integer id);
}
