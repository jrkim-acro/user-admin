package com.sideproject.userInfo.userInfo.data.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalTime;

@Entity
@NoArgsConstructor
@Getter
@Table(name="USERS")
public class UsersEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    public String userName;
    public String nickName;
    public String gender;
    public Boolean active;
    public String userType;
    public String password;
    public LocalTime createdAt;
    public LocalTime updatedAt;
    public LocalTime deletedAt;

}
