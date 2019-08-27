package com.social.sweater.repos;

import com.social.sweater.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {

    User findByUsername(String username);

    public User findByActivationCode(String code);

}
