package com.bare.folders.data;

import java.io.Serializable;
import java.util.Objects;

/**
 * Serializable folder-selection value passed across the folder picker boundary.
 * Keeps the UI contract semantic instead of exposing the Reference's obfuscated q63 type.
 */
public final class FolderSelection implements Serializable {
    private final String path;

    public FolderSelection(String path) {
        this.path = path == null || path.trim().isEmpty() ? "/" : path;
    }

    public String path() { return path; }

    @Override public boolean equals(Object other) {
        return other instanceof FolderSelection && path.equals(((FolderSelection) other).path);
    }

    @Override public int hashCode() { return Objects.hash(path); }
}
