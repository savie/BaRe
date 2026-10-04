package com.bare.compat;

import java.nio.charset.StandardCharsets;

public final class ReferenceCompatibilityIdentifiers {
    public static final byte[] BARE_ENTITY_AAD = "BaRe_Entity".getBytes(StandardCharsets.UTF_8);
    public static final byte[] BARE_APP_DATA_METADATA = "bare.app-data".getBytes(StandardCharsets.UTF_8);
    public static final byte[] BARE_FOLDER_METADATA = "bare.folder.v1".getBytes(StandardCharsets.UTF_8);
    public static final byte[] BARE_CALLS_METADATA = "bare.calls.v3".getBytes(StandardCharsets.UTF_8);
    private static final byte[] LEGACY_ENTITY_AAD = {83,119,105,102,116,66,97,99,107,117,112,95,69,110,116,105,116,121};
    private ReferenceCompatibilityIdentifiers() {}
    public static byte[] legacyEntityAad() { return LEGACY_ENTITY_AAD.clone(); }
}
