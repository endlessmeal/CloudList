package com.perfectlogic.cloudlist.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, ADMIN;

    @Override
    public String getAuthority() {
        return name(); //name() means that it will be string value of USER
    }
}
