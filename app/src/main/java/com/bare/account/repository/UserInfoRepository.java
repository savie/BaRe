package com.bare.account.repository;

import com.bare.account.data.UserInfo;

/** Provider-neutral boundary for Reference user-info semantics; not a Supabase schema. */
public interface UserInfoRepository {
    UserInfo load(String uid);
    void save(UserInfo userInfo);
}
