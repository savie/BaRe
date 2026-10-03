package com.bare.blacklist.repository;

import com.bare.blacklist.data.BlacklistData;

/** Account-scoped remote boundary for the normalized blacklist snapshot. */
public interface RemoteBlacklistRepository {
    BlacklistData load();
    void save(BlacklistData data);
    void delete();
}
