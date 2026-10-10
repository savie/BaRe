package com.bareapps.barebackup.common;

import org.junit.Test;
import static org.junit.Assert.*;

public class BackupPathPolicyTest {
    @Test public void acceptsNormalNestedRelativePath() {
        assertEquals("photos/2026/image.jpg",
                BackupPathPolicy.requireSafeRelativePath("photos/2026/image.jpg"));
    }

    @Test public void rejectsTraversalAndAbsolutePaths() {
        String[] unsafe = {"../secret", "photos/../../secret", "/absolute", "photos//image.jpg",
                "photos/./image.jpg", "photos\\secret", "", "photos/"};
        for (String path : unsafe) {
            try {
                BackupPathPolicy.requireSafeRelativePath(path);
                fail("Expected unsafe path to be rejected: " + path);
            } catch (IllegalArgumentException expected) {
                // expected
            }
        }
    }

    @Test public void sha256MatchesKnownVector() {
        assertEquals("ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad",
                BackupPathPolicy.sha256("abc".getBytes(java.nio.charset.StandardCharsets.UTF_8)));
    }
}
