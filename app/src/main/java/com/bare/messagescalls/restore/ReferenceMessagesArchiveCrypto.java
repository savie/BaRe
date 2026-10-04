package com.bare.messagescalls.restore;

import android.content.Context;

import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.settings.PasswordStrategy;
import com.bare.settings.PasswordStrategyRepository;
import com.bare.core.state.SecureLocalState;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;

/**
 * Reference y32/x32 + mz6/Packer reader for the Messages restore path.
 *
 * The inner conversations artifact is always the Reference AES-GCM envelope:
 * version=1, cipher=2, 12-byte IV, AAD=(1,2,"SwiftBackup_Entity").
 * The 32-byte key is the UTF-8 hex MD5("SwiftBackup") value returned by ne6.
 */
public final class ReferenceMessagesArchiveCrypto {
    private static final byte VERSION = 1;
    private static final byte CIPHER_ID = 2;
    private static final byte[] AAD_SUFFIX = new byte[] {
            83,119,105,102,116,66,97,99,107,117,112,95,69,110,116,105,116,121
    };
    private static final byte[] INNER_KEY = md5Hex(
            new String(AAD_SUFFIX, 0, 10, StandardCharsets.UTF_8)).getBytes(StandardCharsets.UTF_8);

    private final Context context;

    public ReferenceMessagesArchiveCrypto(Context context) {
        this.context = context.getApplicationContext();
    }

    /**
     * Extract every archive entry by basename. Reference MMS backup stores binary
     * MMS parts alongside the encrypted conversations artifact; cachedFileName is
     * a transient field on xg5 but is serialized by the message payload.
     */
    public java.util.Map<String, byte[]> readArchiveEntries(File backupFile) throws Exception {
        java.util.Map<String, byte[]> result = new java.util.LinkedHashMap<>();
        if (backupFile == null || !backupFile.isFile()) return result;
        byte[] direct = Files.readAllBytes(backupFile.toPath());
        if (isEncryptedEnvelope(direct)) return result;
        if (ReferenceSbaArchiveReader.isSba(backupFile)) {
            try {
                return ReferenceSbaArchiveReader.readEntries(backupFile);
            } catch (Exception referenceReaderFailure) {
                Exception last = referenceReaderFailure;
                try {
                    return ReferenceSbaNativeRestoreOrchestrator.readEntries(backupFile, null);
                } catch (Exception nativeUnencryptedFailure) {
                    last = nativeUnencryptedFailure;
                }
                for (char[] candidate : passwordCandidates()) {
                    try {
                        return ReferenceSbaNativeRestoreOrchestrator.readEntries(
                                backupFile, new String(candidate));
                    } catch (Exception nativeFailure) {
                        last = nativeFailure;
                    } finally {
                        java.util.Arrays.fill(candidate, (char) 0);
                    }
                }
                throw last;
            }
        }

        try (ZipFile zip = new ZipFile(backupFile)) {
            java.util.Enumeration<? extends ZipEntry> entries = zip.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                if (entry.isDirectory()) continue;
                try (java.io.InputStream in = zip.getInputStream(entry)) {
                    result.put(basename(entry.getName()), readAll(in));
                }
            }
            if (!result.isEmpty()) return result;
        } catch (java.util.zip.ZipException ignored) {
            // Fall through to Reference-compatible 7z handling.
        }

        Exception last = null;
        for (char[] password : passwordCandidates()) {
            try (SevenZFile sevenZ = new SevenZFile(backupFile, password)) {
                SevenZArchiveEntry entry;
                byte[] buffer = new byte[8192];
                while ((entry = sevenZ.getNextEntry()) != null) {
                    if (entry.isDirectory()) continue;
                    ByteArrayOutputStream out = new ByteArrayOutputStream(
                            entry.getSize() > 0 && entry.getSize() < Integer.MAX_VALUE
                                    ? (int) entry.getSize() : 8192);
                    int read;
                    while ((read = sevenZ.read(buffer)) != -1) out.write(buffer, 0, read);
                    result.put(basename(entry.getName()), out.toByteArray());
                }
                return result;
            } catch (Exception e) {
                last = e;
            }
        }
        if (last != null) throw last;
        return result;
    }

    private static String basename(String name) {
        if (name == null) return "";
        String normalized = name.replace('\\\\', '/');
        int slash = normalized.lastIndexOf('/');
        return slash >= 0 ? normalized.substring(slash + 1) : normalized;
    }


    /**
     * Reference y32 writer: version/cipher framing, random 12-byte IV and
     * AES-GCM with the exact entity AAD. This is the app-side producer paired
     * with readConversations().
     */
    public static byte[] encryptConversations(byte[] plaintext) throws Exception {
        if (plaintext == null) throw new IllegalArgumentException("plaintext");
        byte[] iv = new byte[12];
        new java.security.SecureRandom().nextBytes(iv);
        byte[] aad = new byte[2 + AAD_SUFFIX.length];
        aad[0] = VERSION;
        aad[1] = CIPHER_ID;
        System.arraycopy(AAD_SUFFIX, 0, aad, 2, AAD_SUFFIX.length);

        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(
                Cipher.ENCRYPT_MODE,
                new SecretKeySpec(INNER_KEY, "AES"),
                new GCMParameterSpec(128, iv));
        cipher.updateAAD(aad);
        byte[] ciphertext = cipher.doFinal(plaintext);

        byte[] result = new byte[2 + iv.length + ciphertext.length];
        result[0] = VERSION;
        result[1] = CIPHER_ID;
        System.arraycopy(iv, 0, result, 2, iv.length);
        System.arraycopy(ciphertext, 0, result, 14, ciphertext.length);
        java.util.Arrays.fill(iv, (byte) 0);
        java.util.Arrays.fill(aad, (byte) 0);
        return result;
    }

    public byte[] readConversations(File backupFile) throws Exception {
        if (backupFile == null || !backupFile.isFile()) {
            throw new IOException("Backup file does not exist");
        }

        byte[] direct = Files.readAllBytes(backupFile.toPath());
        if (isEncryptedEnvelope(direct)) {
            return decryptEnvelope(direct);
        }
        if (ReferenceSbaArchiveReader.isSba(backupFile)) {
            java.util.Map<String, byte[]> entries = null;
            Exception last = null;
            try {
                entries = ReferenceSbaArchiveReader.readEntries(backupFile);
            } catch (Exception referenceReaderFailure) {
                last = referenceReaderFailure;
                try {
                    entries = ReferenceSbaNativeRestoreOrchestrator.readEntries(backupFile, null);
                } catch (Exception nativeUnencryptedFailure) {
                    last = nativeUnencryptedFailure;
                }
                if (entries == null) {
                    for (char[] candidate : passwordCandidates()) {
                        try {
                            entries = ReferenceSbaNativeRestoreOrchestrator.readEntries(
                                    backupFile, new String(candidate));
                            break;
                        } catch (Exception nativeFailure) {
                            last = nativeFailure;
                        } finally {
                            java.util.Arrays.fill(candidate, (char) 0);
                        }
                    }
                }
            }
            if (entries == null) {
                if (last != null) throw last;
                throw new IOException("Unable to read Reference SBA archive");
            }
            byte[] conversations = findEntry(entries, "conversations");
            if (!isEncryptedEnvelope(conversations)) {
                throw new IOException("Reference SBA1 conversations artifact not found");
            }
            return decryptEnvelope(conversations);
        }

        byte[] conversations = extractConversations(backupFile);
        if (!isEncryptedEnvelope(conversations)) {
            throw new IOException("Reference conversations artifact not found");
        }
        return decryptEnvelope(conversations);
    }

    private byte[] extractConversations(File archive) throws Exception {
        byte[] zip = extractZipEntry(archive);
        if (zip != null) return zip;

        List<char[]> passwords = passwordCandidates();
        Exception last = null;
        for (char[] password : passwords) {
            try (SevenZFile sevenZ = new SevenZFile(archive, password)) {
                SevenZArchiveEntry entry;
                byte[] found = null;
                byte[] buffer = new byte[8192];
                while ((entry = sevenZ.getNextEntry()) != null) {
                    if (entry.isDirectory()) continue;
                    String name = entry.getName();
                    if (!isConversationsEntry(name)) {
                        drain(sevenZ, buffer);
                        continue;
                    }
                    ByteArrayOutputStream out = new ByteArrayOutputStream(
                            entry.getSize() > 0 && entry.getSize() < Integer.MAX_VALUE
                                    ? (int) entry.getSize() : 8192);
                    int read;
                    while ((read = sevenZ.read(buffer)) != -1) out.write(buffer, 0, read);
                    found = out.toByteArray();
                    break;
                }
                if (found != null) return found;
            } catch (Exception e) {
                last = e;
            }
        }
        if (last != null) throw last;
        throw new IOException("Unable to extract Reference Messages conversations entry");
    }

    private static byte[] extractZipEntry(File archive) throws IOException {
        try (ZipFile zip = new ZipFile(archive)) {
            java.util.Enumeration<? extends ZipEntry> entries = zip.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                if (entry.isDirectory() || !isConversationsEntry(entry.getName())) continue;
                try (java.io.InputStream in = zip.getInputStream(entry)) {
                    return readAll(in);
                }
            }
        } catch (java.util.zip.ZipException notZip) {
            return null;
        }
        return null;
    }

    private static byte[] findEntry(java.util.Map<String, byte[]> entries, String name) {
        if (entries == null || name == null) return null;
        byte[] direct = entries.get(name);
        if (direct != null) return direct;
        for (java.util.Map.Entry<String, byte[]> entry : entries.entrySet()) {
            if (entry.getKey() != null && entry.getKey().endsWith("/" + name)) {
                return entry.getValue();
            }
        }
        return null;
    }

    private static boolean isConversationsEntry(String name) {
        if (name == null) return false;
        String normalized = name.replace('\\', '/');
        return normalized.equals("conversations")
                || normalized.endsWith("/conversations")
                || normalized.endsWith("messages_backup/conversations")
                || normalized.endsWith("messages_backup/conversations/");
    }

    private static void drain(java.io.InputStream in, byte[] buffer) throws IOException {
        while (in.read(buffer) != -1) { }
    }

    private static byte[] readAll(java.io.InputStream in) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[8192];
        int read;
        while ((read = in.read(buffer)) != -1) out.write(buffer, 0, read);
        return out.toByteArray();
    }

    private static boolean isEncryptedEnvelope(byte[] value) {
        return value != null && value.length >= 30
                && value[0] == VERSION && value[1] == CIPHER_ID;
    }

    private static byte[] decryptEnvelope(byte[] encrypted) throws Exception {
        byte[] iv = new byte[12];
        System.arraycopy(encrypted, 2, iv, 0, 12);
        byte[] cipherTextAndTag = new byte[encrypted.length - 14];
        System.arraycopy(encrypted, 14, cipherTextAndTag, 0, cipherTextAndTag.length);

        byte[] aad = new byte[2 + AAD_SUFFIX.length];
        aad[0] = VERSION;
        aad[1] = CIPHER_ID;
        System.arraycopy(AAD_SUFFIX, 0, aad, 2, AAD_SUFFIX.length);

        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(
                Cipher.DECRYPT_MODE,
                new SecretKeySpec(INNER_KEY, "AES"),
                new GCMParameterSpec(128, iv));
        cipher.updateAAD(aad);
        return cipher.doFinal(cipherTextAndTag);
    }

    private List<char[]> passwordCandidates() {
        LinkedHashSet<String> values = new LinkedHashSet<>();
        String uid = new AnonymousIdentityStore(context).getOrCreateUid();
        String base = referenceHash(reverse(uid));
        values.add(base);

        SecureLocalState secure = new PreferenceSecureLocalState(context);
        PasswordStrategyRepository passwords = new PasswordStrategyRepository(secure);
        String userPassword = passwords.readUserPassword();
        if (passwords.read() == PasswordStrategy.USER_PASSWORD && userPassword != null
                && !userPassword.isEmpty()) {
            values.add(base + referenceHash(userPassword));
        }
        for (String old : passwords.readOldUserPasswords()) {
            values.add(base + referenceHash(old));
        }

        List<char[]> result = new ArrayList<>();
        for (String value : values) result.add(value.toCharArray());
        return result;
    }

    private static String reverse(String value) {
        return new StringBuilder(value == null ? "" : value).reverse().toString();
    }

    private static String md5Hex(String value) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5")
                    .digest(value.getBytes(StandardCharsets.UTF_8));
            StringBuilder out = new StringBuilder(32);
            for (byte b : digest) out.append(String.format(java.util.Locale.ROOT, "%02x", b & 0xff));
            return out.toString();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /** Exact Reference sz8.E() 128-bit hash implementation. */
    private static String referenceHash(String value) {
        byte[] bytes = value.getBytes(StandardCharsets.UTF_8);
        int length = bytes.length & -16;
        long h1 = 0L;
        long h2 = 0L;
        for (int i = 0; i < length; i += 16) {
            long v1 = littleEndianLong(bytes, i);
            long v2 = littleEndianLong(bytes, i + 8);
            long r1 = (Long.rotateLeft((Long.rotateLeft(v1 * -8663945395140668459L, 31)
                    * 5545529020109919103L) ^ h1, 27) + h2) * 5 + 1390208809L;
            long r2 = (Long.rotateLeft((Long.rotateLeft(v2 * 5545529020109919103L, 33)
                    * -8663945395140668459L) ^ h2, 31) + r1) * 5 + 944331445L;
            h1 = r1;
            h2 = r2;
        }
        int tail = bytes.length - length;
        int first = Math.min(tail, 8);
        long k1 = 0L;
        for (int i = 0; i < first; i++) k1 |= ((long) bytes[length + i] & 255L) << (i * 8);
        long k2 = 0L;
        for (int i = 8; i < tail; i++) k2 |= ((long) bytes[length + i] & 255L) << ((i - 8) * 8);
        if (tail > 8) h2 ^= Long.rotateLeft(k2 * 5545529020109919103L, 33)
                * -8663945395140668459L;
        if (tail > 0) h1 ^= Long.rotateLeft(k1 * -8663945395140668459L, 31)
                * 5545529020109919103L;

        long l1 = bytes.length ^ h1;
        long l2 = bytes.length ^ h2;
        long sum = l1 + l2;
        long sum2 = l2 + sum;
        long x = (sum ^ (sum >>> 33)) * -49064778989728563L;
        x = (x ^ (x >>> 33)) * -4265267296055464877L;
        long y = (sum2 ^ (sum2 >>> 33)) * -49064778989728563L;
        y = (y ^ (y >>> 33)) * -4265267296055464877L;
        long fy = y ^ (y >>> 33);
        long fx = (x ^ (x >>> 33)) + fy;
        return String.format(java.util.Locale.ROOT, "%016x%016x", fy + fx, fx);
    }

    private static long littleEndianLong(byte[] bytes, int offset) {
        long value = 0L;
        for (int i = 0; i < 8; i++) value |= ((long) bytes[offset + i] & 255L) << (i * 8);
        return value;
    }

    private static final class PreferenceSecureLocalState implements SecureLocalState {
        private final android.content.SharedPreferences prefs;
        PreferenceSecureLocalState(Context context) {
            prefs = context.getSharedPreferences(
                    context.getPackageName() + "_preferences",
                    Context.MODE_PRIVATE);
        }
        @Override public boolean contains(String key) { return prefs.contains(key); }
        @Override public boolean getBoolean(String key, boolean d) { return prefs.getBoolean(key, d); }
        @Override public void putBoolean(String key, boolean value) { prefs.edit().putBoolean(key, value).apply(); }
        @Override public int getInt(String key, int d) { return prefs.getInt(key, d); }
        @Override public void putInt(String key, int value) { prefs.edit().putInt(key, value).apply(); }
        @Override public String getString(String key, String d) { return prefs.getString(key, d); }
        @Override public void putString(String key, String value) { prefs.edit().putString(key, value).apply(); }
        @Override public void remove(String key) { prefs.edit().remove(key).apply(); }
    }
}
