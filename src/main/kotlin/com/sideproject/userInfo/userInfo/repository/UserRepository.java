package com.sideproject.userInfo.userInfo.repository;

import com.sideproject.userInfo.userInfo.data.entity.UsersEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UsersEntity,Long> {
}
