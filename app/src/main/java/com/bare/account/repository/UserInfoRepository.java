package com.bare.account.repository;

import com.bare.account.data.UserInfo;

/** Provider-neutral boundary for Reference users/{uid}/userInfo. */
public interface UserInfoRepository {
    UserInfo load(String uid);
    void save(UserInfo userInfo);
}
