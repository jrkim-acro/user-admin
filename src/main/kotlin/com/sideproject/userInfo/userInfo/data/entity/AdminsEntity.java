package com.sideproject.userInfo.userInfo.data.entity;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalTime;

@Entity
@NoArgsConstructor
@Getter
@Table(name="ADMINS")
public class AdminsEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    public String userName;
    public String nickName;
    public String email;
    public String password;
    public LocalTime createdAt;
    public LocalTime deletedAt;
}
