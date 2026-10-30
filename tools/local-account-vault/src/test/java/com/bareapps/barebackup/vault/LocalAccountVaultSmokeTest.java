package com.bareapps.barebackup.vault;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

/** Manual smoke test; intentionally not wired to CI. */
public final class LocalAccountVaultSmokeTest {
    public static void main(String[] args) throws Exception {
        Path dir = Files.createTempDirectory("bare-vault-test");
        Path vault = dir.resolve("local-account-test.enc");
        String recovery = LocalAccountVault.generateRecoverySecret();
        String androidId = "test-android-id";
        String packageName = "com.bareapps.barebackup";
        byte[] payload = "{\"uid\":\"legacy-uid-123\",\"providerId\":\"anonymous\"}"
                .getBytes(StandardCharsets.UTF_8);

        LocalAccountVault.create(vault, "local-account-test", "legacy-uid-123",
                payload, recovery, androidId, packageName, 100_000);

        LocalAccountVault.Inspection sameDevice =
                LocalAccountVault.inspect(vault, androidId, packageName);
        check(sameDevice.state == LocalAccountVault.State.PRESENT_MATCHING_DEVICE, "new vault should be valid");
        check("legacy-uid-123".equals(sameDevice.legacyUid), "legacy UID must be retained");

        boolean duplicateRejected = false;
        try {
            LocalAccountVault.create(vault, "second-account", "second-uid", payload,
                    recovery, androidId, packageName, 100_000);
        } catch (LocalAccountVault.VaultException expected) {
            duplicateRejected = true;
        }
        check(duplicateRejected, "second enrollment must not overwrite the existing vault");

        boolean wrongSecretRejected = false;
        try {
            LocalAccountVault.unlock(vault, "0000000000000000000000000000000000000000000000000000000000000000", androidId, packageName);
        } catch (LocalAccountVault.VaultException expected) {
            wrongSecretRejected = true;
        }
        check(wrongSecretRejected, "wrong recovery secret must fail authentication");

        LocalAccountVault.VaultData restored =
                LocalAccountVault.unlock(vault, recovery, androidId, packageName);
        check("local-account-test".equals(restored.localAccountId), "LocalAccountId must survive");
        check("legacy-uid-123".equals(restored.legacyUid), "LegacyUid must survive");
        check(java.util.Arrays.equals(payload, restored.payload), "payload must round-trip");

        LocalAccountVault.Inspection otherDevice =
                LocalAccountVault.inspect(vault, "other-device", packageName);
        check(otherDevice.state == LocalAccountVault.State.DEVICE_MISMATCH,
                "different device must require transfer");

        boolean rejected = false;
        try {
            LocalAccountVault.transfer(vault, recovery, "other-device", packageName, 100_000, false);
        } catch (LocalAccountVault.VaultException expected) {
            rejected = true;
        }
        check(rejected, "unconfirmed transfer must be rejected");

        LocalAccountVault.transfer(vault, recovery, "other-device", packageName, 100_000, true);
        LocalAccountVault.VaultData transferred =
                LocalAccountVault.unlock(vault, recovery, "other-device", packageName);
        check("local-account-test".equals(transferred.localAccountId), "transfer must preserve account ID");
        check("legacy-uid-123".equals(transferred.legacyUid), "transfer must preserve legacy UID");

        byte[] damaged = Files.readAllBytes(vault);
        damaged[damaged.length - 1] ^= 0x01;
        Files.write(vault, damaged);
        check(LocalAccountVault.inspect(vault, "other-device", packageName).state
                        == LocalAccountVault.State.PRESENT_MATCHING_DEVICE,
                "inspection reports structure and binding only; authentication happens at unlock");
        boolean tamperRejected = false;
        try {
            LocalAccountVault.unlock(vault, recovery, "other-device", packageName);
        } catch (LocalAccountVault.VaultException expected) {
            tamperRejected = true;
        }
        check(tamperRejected, "tampered ciphertext must fail authentication");

        System.out.println("LocalAccountVault smoke tests passed.");
    }

    private static void check(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }
}
