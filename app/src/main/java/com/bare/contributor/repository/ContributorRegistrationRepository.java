package com.bare.contributor.repository;

import com.bare.contributor.data.ContributorRegistrationData;

/** ContributorDetails/{uid-prefix} provider-neutral repository. */
public interface ContributorRegistrationRepository {
    ContributorRegistrationData load(String uidPrefix);
    boolean isRegistered(String uidPrefix);
}
