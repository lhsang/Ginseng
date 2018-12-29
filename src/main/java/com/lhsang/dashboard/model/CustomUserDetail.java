package com.lhsang.dashboard.model;

import java.util.Collection;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomUserDetail implements UserDetails{

    private static final long serialVersionUID = 1L;
    private User user;

    Set<GrantedAuthority> authorities=null;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    public void setAuthorities(Set<GrantedAuthority> authorities)
    {
        this.authorities=authorities;
    }

    public String getPassword() {
        return user.getPassword();
    }

    public String getUsername() {
        return user.getUserName();
    }

    public boolean isAccountNonExpired() {
        return user.getStatus()==1;
    }

    public boolean isAccountNonLocked() {
        return user.getStatus()!=0;
    }

    public boolean isCredentialsNonExpired() {
        return user.getStatus()!=0;
    }

    public boolean isEnabled() {
        return user.getStatus()==0;
    }

}