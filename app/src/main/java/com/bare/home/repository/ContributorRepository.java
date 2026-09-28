package com.bare.home.repository;

/** Backend-neutral contributor state. Remote listener implementation is provider-specific. */
public interface ContributorRepository {
    boolean isRegistered();
    void start(Listener listener);
    void stop();

    interface Listener { void onChanged(boolean registered); }
}
