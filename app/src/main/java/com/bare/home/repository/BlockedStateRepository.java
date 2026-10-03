package com.bare.home.repository;

/** Read-only client view of backend-controlled account blocking state. */
public interface BlockedStateRepository {
    boolean isBlocked();
}
