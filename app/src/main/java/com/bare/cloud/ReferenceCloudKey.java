package com.bare.cloud;

/** Reference re3.m(): removes Firebase-illegal path characters from cloud directory names. */
public final class ReferenceCloudKey {
    private ReferenceCloudKey() {}

    public static String sanitizeCloudDirectory(String value) {
        if (value == null) throw new NullPointerException("value");
        StringBuilder out = new StringBuilder(value.length());
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (c != '/' && c != '.' && c != '#' && c != '$' && c != '[' && c != ']') out.append(c);
        }
        return out.toString();
    }

    /** Reference AppCloudBackups uses the package name with dots removed for the apps child key. */
    public static String packageKey(String packageName) {
        if (packageName == null) throw new NullPointerException("packageName");
        return packageName.replace(".", "");
    }
}
