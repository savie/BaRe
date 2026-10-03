package com.bare.appslist.restore;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Restore preflight boundary. It deliberately contains no filesystem mutation,
 * package installation, provider access, or backend access.
 *
 * The recovered Reference lifecycle requires validation before mutation and
 * installed-UID resolution before data mutation. Concrete validators and
 * platform UID resolution belong to downstream adapters.
 */
public final class RestorePreflight {
    public interface MetadataValidator {
        boolean isValid(LocalRestoreIdentity identity);
    }

    public interface PartValidator {
        boolean isRestorable(String partId, LocalRestoreIdentity identity);
    }

    public interface InstalledUidResolver {
        Resolution resolve(String packageName);
    }

    public static final class Resolution {
        private final boolean available;
        private final long uid;

        private Resolution(boolean available, long uid) {
            this.available = available;
            this.uid = uid;
        }

        public static Resolution available(long uid) {
            if (uid < 0) throw new IllegalArgumentException("uid");
            return new Resolution(true, uid);
        }

        public static Resolution unavailable() {
            return new Resolution(false, -1L);
        }

        public boolean isAvailable() { return available; }
        public long getUid() { return uid; }
    }

    public static final class Request {
        private final LocalRestoreIdentity identity;
        private final List<String> selectedParts;

        public Request(LocalRestoreIdentity identity, List<String> selectedParts) {
            if (identity == null) throw new IllegalArgumentException("identity");
            List<String> copy = new ArrayList<>();
            if (selectedParts != null) {
                for (String part : selectedParts) {
                    if (part != null && !part.isEmpty() && !copy.contains(part)) copy.add(part);
                }
            }
            this.identity = identity;
            this.selectedParts = Collections.unmodifiableList(copy);
        }

        public LocalRestoreIdentity getIdentity() { return identity; }
        public List<String> getSelectedParts() { return selectedParts; }
    }

    public static final class Result {
        private final boolean metadataValid;
        private final List<String> validParts;
        private final List<String> invalidParts;
        private final Resolution installedUid;

        private Result(boolean metadataValid, List<String> validParts,
                       List<String> invalidParts, Resolution installedUid) {
            this.metadataValid = metadataValid;
            this.validParts = Collections.unmodifiableList(new ArrayList<>(validParts));
            this.invalidParts = Collections.unmodifiableList(new ArrayList<>(invalidParts));
            this.installedUid = installedUid;
        }

        public boolean isMetadataValid() { return metadataValid; }
        public List<String> getValidParts() { return validParts; }
        public List<String> getInvalidParts() { return invalidParts; }
        public Resolution getInstalledUid() { return installedUid; }
        public boolean canMutate() {
            return metadataValid && installedUid != null && installedUid.isAvailable() && !validParts.isEmpty();
        }
    }

    public Result validate(
            Request request,
            MetadataValidator metadataValidator,
            PartValidator partValidator,
            InstalledUidResolver uidResolver) {
        if (request == null) throw new IllegalArgumentException("request");
        if (metadataValidator == null) throw new IllegalArgumentException("metadataValidator");
        if (partValidator == null) throw new IllegalArgumentException("partValidator");
        if (uidResolver == null) throw new IllegalArgumentException("uidResolver");

        boolean metadataValid = metadataValidator.isValid(request.getIdentity());
        List<String> valid = new ArrayList<>();
        List<String> invalid = new ArrayList<>();

        if (metadataValid) {
            for (String part : request.getSelectedParts()) {
                if (partValidator.isRestorable(part, request.getIdentity())) valid.add(part);
                else invalid.add(part);
            }
        } else {
            invalid.addAll(request.getSelectedParts());
        }

        // Reference xw resolves the installed UID only when data restore can proceed;
        // do not probe the platform for an invalid/empty restore selection.
        Resolution uid = Resolution.unavailable();
        if (metadataValid && !valid.isEmpty()) {
            uid = uidResolver.resolve(request.getIdentity().getPackageName());
        }
        return new Result(metadataValid, valid, invalid, uid);
    }
}
