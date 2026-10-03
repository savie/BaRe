package com.bare.contributor.repository;

import com.bare.contributor.data.ContributorRegistrationData;

/** Account-owned remote contributor registration boundary. */
public interface RemoteContributorRegistrationRepository {
    ContributorRegistrationData load(String uidPrefix);
    boolean isRegistered(String uidPrefix);
}
