package com.bareapps.barebackup.appslist.data;

/** Catalog filter options. */
public enum AppFilter {
    ALL("All apps"),
    USER("User apps"),
    SYSTEM("System apps");

    private final String label;

    AppFilter(String label) { this.label = label; }

    @Override public String toString() { return label; }
}
