package com.bareapps.barebackup.vault;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.charset.StandardCharsets;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/**
 * Dependency-free encrypted local-account vault engine.
 *
 * The caller owns Android storage permission checks, recovery-secret UX, provider
 * selection, and optional Android Keystore convenience wrapping.
 */
public final class LocalAccountVault {
    private static final int MAGIC = 0x42415245; // BARE
    private static final short VERSION = 1;
    private static final int SALT_BYTES = 16;
    private static final int NONCE_BYTES = 12;
    private static final int DEK_BYTES = 32;
    private static final int TAG_BITS = 128;
    private static final int MAX_PAYLOAD_BYTES = 16 * 1024 * 1024;
    private static final int MAX_ENVELOPE_BYTES = MAX_PAYLOAD_BYTES + 4096;
    private static final int MIN_ITERATIONS = 100_000;
    private static final int MAX_ITERATIONS = 2_000_000;
    private static final SecureRandom RANDOM = new SecureRandom();
    private static final ConcurrentHashMap<String, ReentrantLock> JVM_LOCKS =
            new ConcurrentHashMap<String, ReentrantLock>();

    private LocalAccountVault() { }

    public enum State { ABSENT, PRESENT_MATCHING_DEVICE, DEVICE_MISMATCH, CORRUPT }

    public static final class Inspection {
        public final State state;
        public final String localAccountId;
        public final String legacyUid;

        private Inspection(State state, String localAccountId, String legacyUid) {
            this.state = state;
            this.localAccountId = localAccountId;
            this.legacyUid = legacyUid;
        }
    }

    public static final class VaultData {
        public final String localAccountId;
        public final String legacyUid;
        public final byte[] payload;

        private VaultData(String localAccountId, String legacyUid, byte[] payload) {
            this.localAccountId = localAccountId;
            this.legacyUid = legacyUid;
            this.payload = payload.clone();
        }
    }

    public static final class VaultException extends Exception {
        public VaultException(String message) { super(message); }
        public VaultException(String message, Throwable cause) { super(message, cause); }
    }

    public static final class DeviceBindingMismatchException extends VaultException {
        public DeviceBindingMismatchException() {
            super("Vault belongs to a different device context; explicit transfer is required.");
        }
    }

    /** Generate a user-held 256-bit recovery secret. Never save it beside the vault. */
    public static String generateRecoverySecret() {
        byte[] secret = new byte[DEK_BYTES];
        RANDOM.nextBytes(secret);
        return toHex(secret);
    }

    /**
     * A continuity fingerprint, not a secret and not hardware attestation.
     * androidId should be the app-scoped identifier supplied by the Android adapter.
     */
    public static byte[] deviceFingerprint(String androidId, String packageName, byte[] vaultSalt)
            throws VaultException {
        if (isBlank(androidId) || isBlank(packageName) || vaultSalt == null || vaultSalt.length < 16) {
            throw new VaultException("Device fingerprint inputs are incomplete.");
        }
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.update(packageName.getBytes(StandardCharsets.UTF_8));
            digest.update((byte) 0);
            digest.update(androidId.getBytes(StandardCharsets.UTF_8));
            digest.update((byte) 0);
            digest.update(vaultSalt);
            return digest.digest();
        } catch (GeneralSecurityException e) {
            throw new VaultException("SHA-256 is unavailable.", e);
        }
    }

    /** Create a vault only when no vault exists. The payload is UTF-8 JSON. */
    public static void create(Path vault, String localAccountId, String legacyUid,
                              byte[] payload, String recoverySecret,
                              String androidId, String packageName, int pbkdf2Iterations)
            throws VaultException {
        validateInputs(vault, localAccountId, legacyUid, payload, recoverySecret,
                androidId, packageName, pbkdf2Iterations);
        withLock(vault, new LockedOperation<Void>() {
            @Override public Void run() throws Exception {
                if (!isVaultPath(vault) || Files.exists(vault)) {
                    throw new VaultException("Vault path must end in .enc and must not already exist.");
                }
                Path parent = vault.toAbsolutePath().normalize().getParent();
                try (java.nio.file.DirectoryStream<Path> existing = Files.newDirectoryStream(parent, "*.enc")) {
                    if (existing.iterator().hasNext()) {
                        throw new VaultException("An existing vault was found; refusing second enrollment or overwrite.");
                    }
                }
                byte[] salt = randomBytes(SALT_BYTES);
                byte[] binding = deviceFingerprint(androidId, packageName, salt);
                byte[] dek = randomBytes(DEK_BYTES);
                try {
                    byte[] envelope = seal(localAccountId, legacyUid, payload, recoverySecret,
                            binding, salt, dek, pbkdf2Iterations);
                    publish(vault, envelope, localAccountId, legacyUid, payload, recoverySecret, binding);
                } finally {
                    Arrays.fill(dek, (byte) 0);
                }
                return null;
            }
        });
    }

    /** Inspect without creating, overwriting, or treating corruption as a new account. */
    public static Inspection inspect(Path vault, String androidId, String packageName) {
        if (vault == null || !Files.exists(vault)) {
            return new Inspection(State.ABSENT, null, null);
        }
        if (!isVaultPath(vault)) {
            return new Inspection(State.CORRUPT, null, null);
        }
        try {
            Envelope e = read(vault);
            byte[] expectedFingerprint = deviceFingerprint(androidId, packageName, e.salt);
            if (!MessageDigest.isEqual(e.binding, expectedFingerprint)) {
                return new Inspection(State.DEVICE_MISMATCH, e.localAccountId, e.legacyUid);
            }
            return new Inspection(State.PRESENT_MATCHING_DEVICE, e.localAccountId, e.legacyUid);
        } catch (Exception ignored) {
            return new Inspection(State.CORRUPT, null, null);
        }
    }

    /** Unlock is intentionally restricted to the matching device-binding signal. */
    public static VaultData unlock(Path vault, String recoverySecret, String androidId, String packageName)
            throws VaultException {
        if (!isVaultPath(vault) || !isRecoverySecretFormat(recoverySecret)
                || isBlank(androidId) || isBlank(packageName)) {
            throw new VaultException("Vault, recovery secret, Android ID, and package name are required.");
        }
        return withLock(vault, new LockedOperation<VaultData>() {
            @Override public VaultData run() throws Exception {
                Envelope e = read(vault);
                byte[] expectedFingerprint = deviceFingerprint(androidId, packageName, e.salt);
                if (!MessageDigest.isEqual(e.binding, expectedFingerprint)) {
                    throw new DeviceBindingMismatchException();
                }
                return decrypt(e, recoverySecret);
            }
        });
    }

    /**
     * Explicit cross-device transfer. The same IDs and payload are retained.
     * Caller must obtain an affirmative user confirmation before passing true.
     */
    public static void transfer(Path vault, String recoverySecret, String newAndroidId,
                                String packageName, int pbkdf2Iterations, boolean confirmed) throws VaultException {
        if (!confirmed) throw new VaultException("Transfer was not confirmed by the user.");
        if (!isVaultPath(vault) || !isRecoverySecretFormat(recoverySecret)
                || isBlank(newAndroidId) || isBlank(packageName)) {
            throw new VaultException("Transfer inputs are incomplete.");
        }
        validateIterations(pbkdf2Iterations);
        withLock(vault, new LockedOperation<Void>() {
            @Override public Void run() throws Exception {
                Envelope old = read(vault);
                VaultData data = decrypt(old, recoverySecret);
                byte[] newSalt = randomBytes(SALT_BYTES);
                byte[] newFingerprint = deviceFingerprint(newAndroidId, packageName, newSalt);
                byte[] dek = unwrapDek(old, recoverySecret);
                try {
                    byte[] replacement = seal(data.localAccountId, data.legacyUid, data.payload,
                            recoverySecret, newFingerprint, newSalt, dek, pbkdf2Iterations);
                    publish(vault, replacement, data.localAccountId, data.legacyUid,
                            data.payload, recoverySecret, newFingerprint);
                } finally {
                    Arrays.fill(dek, (byte) 0);
                    Arrays.fill(data.payload, (byte) 0);
                }
                return null;
            }
        });
    }

    private static void publish(Path vault, byte[] bytes, String accountId, String uid,
                                byte[] payload, String secret, byte[] binding) throws Exception {
        Path parent = vault.toAbsolutePath().normalize().getParent();
        if (parent == null) throw new VaultException("Vault must have a parent directory.");
        Files.createDirectories(parent);
        Path temp = Files.createTempFile(parent, ".bare-vault-", ".tmp");
        Path backup = parent.resolve(vault.getFileName().toString() + ".previous");
        boolean moved = false;
        try {
            try (FileChannel channel = FileChannel.open(temp, StandardOpenOption.WRITE,
                    StandardOpenOption.TRUNCATE_EXISTING)) {
                ByteBuffer buffer = ByteBuffer.wrap(bytes);
                while (buffer.hasRemaining()) channel.write(buffer);
                channel.force(true);
            }
            // Reopen and authenticate the candidate before it can become the active vault.
            Envelope candidate = read(temp);
            VaultData verified = decrypt(candidate, secret);
            if (!accountId.equals(verified.localAccountId) || !uid.equals(verified.legacyUid)
                    || !Arrays.equals(payload, verified.payload)
                    || !MessageDigest.isEqual(binding, candidate.binding)) {
                throw new VaultException("Candidate vault verification failed.");
            }
            if (Files.exists(vault)) {
                Files.copy(vault, backup, StandardCopyOption.REPLACE_EXISTING);
                try (FileChannel channel = FileChannel.open(backup, StandardOpenOption.WRITE)) {
                    channel.force(true);
                }
            }
            try {
                Files.move(temp, vault, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
            } catch (AtomicMoveNotSupportedException unsupported) {
                // Fail closed: do not silently downgrade to a non-atomic replacement.
                throw new VaultException("Atomic rename is not supported by this storage provider.", unsupported);
            }
            moved = true;
            try (FileChannel directory = FileChannel.open(parent, StandardOpenOption.READ)) {
                directory.force(true);
            } catch (Exception ignored) {
                // Some Android/document providers do not permit opening directories.
                // The file itself was fsynced and atomically renamed.
            }
            Arrays.fill(verified.payload, (byte) 0);
        } finally {
            if (!moved) Files.deleteIfExists(temp);
        }
    }

    private static byte[] seal(String accountId, String uid, byte[] payload, String secret,
                               byte[] binding, byte[] salt, byte[] dek, int iterations)
            throws VaultException {
        try {
            byte[] payloadNonce = randomBytes(NONCE_BYTES);
            byte[] wrapNonce = randomBytes(NONCE_BYTES);
            byte[] payloadCipher = crypt(Cipher.ENCRYPT_MODE, dek, payloadNonce,
                    payloadAad(accountId, uid, binding), payload);
            byte[] wrappingKey = derive(secret, salt, iterations);
            byte[] wrappedDek;
            try {
                wrappedDek = crypt(Cipher.ENCRYPT_MODE, wrappingKey, wrapNonce,
                        wrapAad(accountId, uid, binding, salt, iterations), dek);
            } finally {
                Arrays.fill(wrappingKey, (byte) 0);
            }
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            DataOutputStream out = new DataOutputStream(bytes);
            out.writeInt(MAGIC);
            out.writeShort(VERSION);
            writeString(out, accountId, 128);
            writeString(out, uid, 512);
            out.writeInt(iterations);
            writeBytes(out, salt, SALT_BYTES);
            writeBytes(out, binding, 32);
            writeBytes(out, wrapNonce, NONCE_BYTES);
            writeBytes(out, wrappedDek, DEK_BYTES + 16);
            writeBytes(out, payloadNonce, NONCE_BYTES);
            writeBytes(out, payloadCipher, MAX_PAYLOAD_BYTES + 16);
            out.flush();
            return bytes.toByteArray();
        } catch (Exception e) {
            throw new VaultException("Unable to encrypt vault.", e);
        }
    }

    private static VaultData decrypt(Envelope e, String secret) throws VaultException {
        byte[] dek = unwrapDek(e, secret);
        try {
            byte[] payload = crypt(Cipher.DECRYPT_MODE, dek, e.payloadNonce,
                    payloadAad(e.localAccountId, e.legacyUid, e.binding), e.payloadCipher);
            try {
                return new VaultData(e.localAccountId, e.legacyUid, payload);
            } finally {
                Arrays.fill(payload, (byte) 0);
            }
        } catch (AEADBadTagException badTag) {
            throw new VaultException("Vault authentication failed (wrong secret or modified data).", badTag);
        } catch (Exception ex) {
            throw new VaultException("Unable to decrypt vault payload.", ex);
        } finally {
            Arrays.fill(dek, (byte) 0);
        }
    }

    private static byte[] unwrapDek(Envelope e, String secret) throws VaultException {
        byte[] wrappingKey = null;
        try {
            wrappingKey = derive(secret, e.salt, e.iterations);
            return crypt(Cipher.DECRYPT_MODE, wrappingKey, e.wrapNonce,
                    wrapAad(e.localAccountId, e.legacyUid, e.binding, e.salt, e.iterations), e.wrappedDek);
        } catch (AEADBadTagException badTag) {
            throw new VaultException("Recovery secret is incorrect or vault metadata was modified.", badTag);
        } catch (Exception ex) {
            throw new VaultException("Unable to unwrap vault key.", ex);
        } finally {
            if (wrappingKey != null) Arrays.fill(wrappingKey, (byte) 0);
        }
    }

    private static Envelope read(Path path) throws Exception {
        if (Files.isSymbolicLink(path)) throw new IOException("Symbolic-link vault paths are not accepted.");
        long size = Files.size(path);
        if (size <= 0 || size > MAX_ENVELOPE_BYTES) throw new IOException("Invalid vault size.");
        byte[] bytes = Files.readAllBytes(path);
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(bytes));
        if (in.readInt() != MAGIC || in.readShort() != VERSION) throw new IOException("Unknown vault format.");
        Envelope e = new Envelope();
        e.localAccountId = readString(in, 128);
        e.legacyUid = readString(in, 512);
        e.iterations = in.readInt();
        validateIterations(e.iterations);
        e.salt = readBytes(in, SALT_BYTES, SALT_BYTES);
        e.binding = readBytes(in, 32, 32);
        e.wrapNonce = readBytes(in, NONCE_BYTES, NONCE_BYTES);
        e.wrappedDek = readBytes(in, DEK_BYTES + 16, DEK_BYTES + 16);
        e.payloadNonce = readBytes(in, NONCE_BYTES, NONCE_BYTES);
        e.payloadCipher = readBytes(in, 16, MAX_PAYLOAD_BYTES + 16);
        if (in.available() != 0) throw new IOException("Trailing data in vault envelope.");
        return e;
    }

    private static byte[] derive(String secret, byte[] salt, int iterations) throws Exception {
        validateIterations(iterations);
        if (!isRecoverySecretFormat(secret)) {
            throw new VaultException("Recovery secret must be the 64-character hexadecimal code generated by this vault.");
        }
        PBEKeySpec spec = new PBEKeySpec(secret.toCharArray(), salt, iterations, 256);
        try {
            return SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256").generateSecret(spec).getEncoded();
        } finally {
            spec.clearPassword();
        }
    }

    private static byte[] crypt(int mode, byte[] key, byte[] nonce, byte[] aad, byte[] input)
            throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(mode, new SecretKeySpec(key, "AES"), new GCMParameterSpec(TAG_BITS, nonce));
        cipher.updateAAD(aad);
        return cipher.doFinal(input);
    }

    private static byte[] payloadAad(String accountId, String uid, byte[] binding) {
        return concat("BARE-VAULT-PAYLOAD-v1", accountId, uid, toHex(binding));
    }

    private static byte[] wrapAad(String accountId, String uid, byte[] binding, byte[] salt, int iterations) {
        return concat("BARE-VAULT-DEK-v1", accountId, uid, toHex(binding), toHex(salt), String.valueOf(iterations));
    }

    private static byte[] concat(String... values) {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        for (String value : values) {
            byte[] b = value.getBytes(StandardCharsets.UTF_8);
            out.write(b, 0, b.length);
            out.write(0);
        }
        return out.toByteArray();
    }

    private static void validateInputs(Path vault, String accountId, String uid, byte[] payload,
                                       String secret, String androidId, String packageName, int iterations)
            throws VaultException {
        if (vault == null || isBlank(accountId) || isBlank(uid) || payload == null || payload.length == 0
                || payload.length > MAX_PAYLOAD_BYTES || !isRecoverySecretFormat(secret)
                || isBlank(androidId) || isBlank(packageName)) {
            throw new VaultException("Invalid vault creation input.");
        }
        validateIterations(iterations);
        if (accountId.length() > 128 || uid.length() > 512) throw new VaultException("Account metadata is too large.");
    }

    private static void validateIterations(int iterations) throws VaultException {
        if (iterations < MIN_ITERATIONS || iterations > MAX_ITERATIONS) {
            throw new VaultException("PBKDF2 iteration count must be between " + MIN_ITERATIONS + " and " + MAX_ITERATIONS + ".");
        }
    }

    private interface LockedOperation<T> { T run() throws Exception; }

    private static <T> T withLock(Path vault, LockedOperation<T> operation) throws VaultException {
        try {
            Path parent = vault.toAbsolutePath().normalize().getParent();
            if (parent == null) throw new IOException("Vault parent is missing.");
            Files.createDirectories(parent);
            Path lockPath = parent.resolve(".local-account.lock");
            String lockKey = lockPath.toString();
            ReentrantLock jvm = JVM_LOCKS.get(lockKey);
            if (jvm == null) {
                ReentrantLock fresh = new ReentrantLock();
                ReentrantLock existing = JVM_LOCKS.putIfAbsent(lockKey, fresh);
                jvm = existing == null ? fresh : existing;
            }
            jvm.lock();
            try (FileChannel channel = FileChannel.open(lockPath, StandardOpenOption.CREATE, StandardOpenOption.WRITE);
                 FileLock ignored = channel.lock()) {
                return operation.run();
            } finally {
                jvm.unlock();
            }
        } catch (VaultException e) {
            throw e;
        } catch (Exception e) {
            throw new VaultException("Vault operation failed safely.", e);
        }
    }

    private static byte[] randomBytes(int count) {
        byte[] bytes = new byte[count];
        RANDOM.nextBytes(bytes);
        return bytes;
    }

    private static void writeString(DataOutputStream out, String value, int max) throws IOException {
        byte[] bytes = value.getBytes(StandardCharsets.UTF_8);
        if (bytes.length == 0 || bytes.length > max) throw new IOException("Invalid string length.");
        out.writeShort(bytes.length);
        out.write(bytes);
    }

    private static String readString(DataInputStream in, int max) throws IOException {
        int length = in.readUnsignedShort();
        if (length == 0 || length > max) throw new IOException("Invalid string length.");
        byte[] bytes = new byte[length];
        in.readFully(bytes);
        return new String(bytes, StandardCharsets.UTF_8);
    }

    private static void writeBytes(DataOutputStream out, byte[] value, int max) throws IOException {
        if (value == null || value.length > max) throw new IOException("Invalid byte array.");
        out.writeInt(value.length);
        out.write(value);
    }

    private static byte[] readBytes(DataInputStream in, int min, int max) throws IOException {
        int length = in.readInt();
        if (length < min || length > max) throw new IOException("Invalid byte array length.");
        byte[] bytes = new byte[length];
        in.readFully(bytes);
        return bytes;
    }

    private static String toHex(byte[] bytes) {
        StringBuilder out = new StringBuilder(bytes.length * 2);
        for (byte b : bytes) out.append(String.format("%02x", b & 0xff));
        return out.toString();
    }

    private static boolean isBlank(String value) { return value == null || value.trim().isEmpty(); }

    private static boolean isVaultPath(Path vault) {
        return vault != null && vault.getFileName() != null
                && vault.getFileName().toString().endsWith(".enc");
    }

    private static boolean isRecoverySecretFormat(String secret) {
        return secret != null && secret.matches("(?i)[0-9a-f]{64}");
    }

    private static final class Envelope {
        String localAccountId, legacyUid;
        int iterations;
        byte[] salt, binding, wrapNonce, wrappedDek, payloadNonce, payloadCipher;
    }
}
