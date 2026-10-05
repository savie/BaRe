package org.swiftapps.swiftbackup.apptasks.notifications;

import android.os.IBinder;
import defpackage.bn6;
import defpackage.c6;
import defpackage.dj7;
import defpackage.en6;
import defpackage.eq3;
import defpackage.f51;
import defpackage.f6;
import defpackage.fz5;
import defpackage.jx2;
import defpackage.ly8;
import defpackage.mn5;
import defpackage.nc3;
import defpackage.nq7;
import defpackage.u48;
import defpackage.uq7;
import defpackage.xs1;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NotificationPolicyProxy {
    public static final NotificationPolicyProxy INSTANCE = new NotificationPolicyProxy();
    private static final int MAX_FULL_PAYLOAD_BYTES = 4194304;
    private static final int MAX_PACKAGE_PAYLOAD_BYTES = 524288;
    private static final String PACKAGE_CLOSE_TAG = "</package>";
    private static final String PREFIX = "SB_NOTIFICATION_POLICY";

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        Backup,
        Restore;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    private NotificationPolicyProxy() {
    }

    private final void applyRestore(byte[] bArr, int i) throws IllegalAccessException, InvocationTargetException {
        Object notificationService = getNotificationService();
        notificationService.getClass().getMethod("applyRestore", byte[].class, Integer.TYPE).invoke(notificationService, bArr, Integer.valueOf(i));
    }

    private final int backup(b bVar) throws IllegalAccessException, IOException, InvocationTargetException {
        int i = bVar.b;
        File file = bVar.d;
        byte[] backupPayload = getBackupPayload(i);
        if (backupPayload.length == 0) {
            c6.f("Empty notification backup payload");
            return 0;
        }
        if (backupPayload.length > MAX_FULL_PAYLOAD_BYTES) {
            f6.g(fz5.j(backupPayload.length, "Notification backup payload too large: "));
            return 0;
        }
        Charset charset = f51.a;
        CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        String string = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(backupPayload)).toString();
        string.getClass();
        String strCreatePackagePayload = createPackagePayload(string, bVar.c);
        if (strCreatePackagePayload == null) {
            System.out.println((Object) "SB_NOTIFICATION_POLICY:MISSING");
            return 0;
        }
        byte[] bytes = strCreatePackagePayload.getBytes(charset);
        bytes.getClass();
        if (bytes.length > MAX_PACKAGE_PAYLOAD_BYTES) {
            f6.g(fz5.j(bytes.length, "Package notification payload too large: "));
            return 0;
        }
        nc3.W(file, bytes);
        file.setReadable(true, false);
        System.out.println((Object) "SB_NOTIFICATION_POLICY:OK");
        return 0;
    }

    private final String createPackagePayload(String str, String str2) {
        if (!nq7.Z(str, "<notification-policy", false)) {
            c6.f("Missing notification-policy root");
            return null;
        }
        String strExtractOpeningTag = extractOpeningTag(str, "ranking");
        if (strExtractOpeningTag != null) {
            if (uq7.O(strExtractOpeningTag, "/>", false)) {
                c6.f("Ranking tag is self-closing");
                return null;
            }
            String strExtractPackageBlock = extractPackageBlock(str, str2);
            if (strExtractPackageBlock != null) {
                return "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>\n<notification-policy version=\"1\">\n" + strExtractOpeningTag + '\n' + nq7.H0(strExtractPackageBlock).toString() + "\n</ranking>\n</notification-policy>\n";
            }
        }
        return null;
    }

    private final String escapeXmlAttribute(String str) {
        return uq7.T(uq7.T(uq7.T(uq7.T(str, "&", "&amp;"), "\"", "&quot;"), "<", "&lt;"), ">", "&gt;");
    }

    private final String extractOpeningTag(String str, String str2) {
        int iH0 = nq7.h0(str, xs1.j("<", str2), 0, false, 6);
        if (iH0 < 0) {
            return null;
        }
        int iG0 = nq7.g0('>', iH0, 4, str);
        if (iG0 > iH0) {
            return str.substring(iH0, iG0 + 1);
        }
        f6.g(eq3.k("Malformed <", str2, "> tag"));
        return null;
    }

    private final String extractPackageBlock(String str, String str2) {
        int iH0 = nq7.h0(str, eq3.k("<package name=\"", escapeXmlAttribute(str2), "\""), 0, false, 6);
        if (iH0 < 0) {
            return null;
        }
        int iG0 = nq7.g0('>', iH0, 4, str);
        if (iG0 <= iH0) {
            f6.g(xs1.j("Malformed package tag for ", str2));
            return null;
        }
        if (str.charAt(iG0 - 1) == '/') {
            return str.substring(iH0, iG0 + 1);
        }
        int iH1 = nq7.h0(str, PACKAGE_CLOSE_TAG, iG0 + 1, false, 4);
        if (iH1 > iG0) {
            return str.substring(iH0, iH1 + 10);
        }
        f6.g(xs1.j("Missing package close tag for ", str2));
        return null;
    }

    private final byte[] getBackupPayload(int i) throws IllegalAccessException, InvocationTargetException {
        Object notificationService = getNotificationService();
        Object objInvoke = notificationService.getClass().getMethod("getBackupPayload", Integer.TYPE).invoke(notificationService, Integer.valueOf(i));
        objInvoke.getClass();
        return (byte[]) objInvoke;
    }

    private final Object getNotificationService() throws IllegalAccessException, InvocationTargetException {
        Object objInvoke = Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class).invoke(null, "notification");
        IBinder iBinder = objInvoke instanceof IBinder ? (IBinder) objInvoke : null;
        if (iBinder == null) {
            c6.f("Notification service unavailable");
            return null;
        }
        Object objInvoke2 = Class.forName("android.app.INotificationManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder);
        if (objInvoke2 != null) {
            return objInvoke2;
        }
        c6.f("Notification service proxy unavailable");
        return null;
    }

    public static final void main(String[] strArr) {
        Object bn6Var;
        int iBackup;
        strArr.getClass();
        NotificationPolicyProxy notificationPolicyProxy = INSTANCE;
        try {
            b bVarA = org.swiftapps.swiftbackup.apptasks.notifications.a.a(strArr);
            int i = c.a[bVarA.a.ordinal()];
            if (i == 1) {
                iBackup = notificationPolicyProxy.backup(bVarA);
            } else {
                if (i != 2) {
                    throw new mn5();
                }
                iBackup = notificationPolicyProxy.restore(bVarA);
            }
            bn6Var = Integer.valueOf(iBackup);
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Throwable thA = en6.a(bn6Var);
        if (thA != null) {
            if (thA instanceof InvocationTargetException) {
                InvocationTargetException invocationTargetException = (InvocationTargetException) thA;
                if (invocationTargetException.getTargetException() != null) {
                    thA = invocationTargetException.getTargetException();
                }
            }
            String simpleName = thA.getClass().getSimpleName();
            String message = thA.getMessage();
            if (message == null) {
                message = "";
            }
            System.out.println((Object) eq3.k("SB_NOTIFICATION_POLICY:ERROR [", dj7.k(simpleName, ": ", message), "]"));
            bn6Var = 1;
        }
        System.exit(((Number) bn6Var).intValue());
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    private final int restore(b bVar) throws IllegalAccessException, IOException, InvocationTargetException {
        File file = bVar.d;
        String str = bVar.c;
        boolean zIsFile = file.isFile();
        File file2 = bVar.d;
        if (!zIsFile) {
            f6.g(xs1.j("Payload file not found: ", file2.getAbsolutePath()));
            return 0;
        }
        long length = file2.length();
        if (1 > length || length >= 524289) {
            f6.g(u48.l(file2.length(), "Invalid notification payload size: "));
            return 0;
        }
        byte[] bArrS = nc3.S(file2);
        Charset charset = f51.a;
        CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        String string = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArrS)).toString();
        string.getClass();
        String strCreatePackagePayload = createPackagePayload(string, str);
        if (strCreatePackagePayload == null) {
            f6.g("Payload does not contain package ".concat(str));
            return 0;
        }
        byte[] bytes = strCreatePackagePayload.getBytes(charset);
        bytes.getClass();
        applyRestore(bytes, bVar.b);
        System.out.println((Object) "SB_NOTIFICATION_POLICY:OK");
        return 0;
    }
}
