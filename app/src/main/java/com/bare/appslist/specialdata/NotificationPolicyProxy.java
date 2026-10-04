package com.bare.appslist.specialdata;

import android.os.IBinder;

import java.nio.ByteBuffer;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

/**
 * Reference NotificationPolicyProxy port. It intentionally uses the platform
 * notification binder through reflection; no alternate shell policy grammar is
 * invented.
 */
public final class NotificationPolicyProxy {
    private static final int MAX_FULL_PAYLOAD_BYTES = 4194304;
    private static final int MAX_PACKAGE_PAYLOAD_BYTES = 524288;
    private static final String PACKAGE_CLOSE_TAG = "</package>";

    private NotificationPolicyProxy() {}

    public static String backup(int userId, String packageName) throws Exception {
        byte[] payload = getBackupPayload(userId);
        if (payload == null || payload.length == 0 || payload.length > MAX_FULL_PAYLOAD_BYTES) return null;
        String xml = decodeUtf8(payload);
        String packagePayload = createPackagePayload(xml, packageName);
        if (packagePayload == null) return null;
        byte[] result = packagePayload.getBytes(StandardCharsets.UTF_8);
        if (result.length > MAX_PACKAGE_PAYLOAD_BYTES) return null;
        return packagePayload;
    }

    public static void restore(int userId, String packageName, String packagePayload) throws Exception {
        if (packagePayload == null || packagePayload.getBytes(StandardCharsets.UTF_8).length == 0
                || packagePayload.getBytes(StandardCharsets.UTF_8).length > MAX_PACKAGE_PAYLOAD_BYTES) {
            return;
        }
        String rebuilt = createPackagePayload(packagePayload, packageName);
        if (rebuilt == null) throw new IllegalArgumentException("Notification policy payload does not contain package");
        getNotificationService().getClass()
                .getMethod("applyRestore", byte[].class, Integer.TYPE)
                .invoke(getNotificationService(), rebuilt.getBytes(StandardCharsets.UTF_8), userId);
    }

    private static byte[] getBackupPayload(int userId) throws Exception {
        Object service = getNotificationService();
        return (byte[]) service.getClass()
                .getMethod("getBackupPayload", Integer.TYPE)
                .invoke(service, userId);
    }

    private static Object getNotificationService() throws Exception {
        Object binder = Class.forName("android.os.ServiceManager")
                .getDeclaredMethod("getService", String.class)
                .invoke(null, "notification");
        if (!(binder instanceof IBinder)) throw new IllegalStateException("Notification service unavailable");
        Object service = Class.forName("android.app.INotificationManager$Stub")
                .getMethod("asInterface", IBinder.class)
                .invoke(null, binder);
        if (service == null) throw new IllegalStateException("Notification service proxy unavailable");
        return service;
    }

    private static String createPackagePayload(String xml, String packageName) {
        if (xml == null || packageName == null || !xml.contains("<notification-policy")) return null;
        int ranking = xml.indexOf("<ranking");
        if (ranking < 0) return null;
        int rankingEnd = xml.indexOf('>', ranking);
        if (rankingEnd <= ranking) return null;
        if (xml.charAt(rankingEnd - 1) == '/') return null;

        String escaped = packageName.replace("&","&amp;").replace(""","&quot;")
                .replace("<","&lt;").replace(">","&gt;");
        int packageStart = xml.indexOf("<package name="" + escaped + """, rankingEnd + 1);
        if (packageStart < 0) return null;
        int packageTagEnd = xml.indexOf('>', packageStart);
        if (packageTagEnd <= packageStart) return null;
        String packageBlock;
        if (xml.charAt(packageTagEnd - 1) == '/') {
            packageBlock = xml.substring(packageStart, packageTagEnd + 1);
        } else {
            int packageEnd = xml.indexOf(PACKAGE_CLOSE_TAG, packageTagEnd + 1);
            if (packageEnd <= packageTagEnd) return null;
            packageBlock = xml.substring(packageStart, packageEnd + PACKAGE_CLOSE_TAG.length());
        }
        return "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>\n"
                + "<notification-policy version=\"1\">\n"
                + xml.substring(ranking, rankingEnd + 1) + "\n"
                + packageBlock.trim() + "\n</ranking>\n</notification-policy>\n";
    }

    private static String decodeUtf8(byte[] bytes) {
        java.nio.charset.CharsetDecoder decoder = StandardCharsets.UTF_8.newDecoder()
                .onMalformedInput(CodingErrorAction.REPORT)
                .onUnmappableCharacter(CodingErrorAction.REPORT);
        try { return decoder.decode(ByteBuffer.wrap(bytes)).toString(); }
        catch (Exception e) { throw new IllegalArgumentException("Invalid notification policy payload", e); }
    }
}
