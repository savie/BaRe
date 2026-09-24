package defpackage;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Base64;
import android.util.Log;
import com.nimbusds.jose.HeaderParameterNames;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class va7 {
    public static final /* synthetic */ int l = 0;
    public final Object b;
    public final v45 c;
    public final ArrayMap f;
    public final int g;
    public final File h;
    public int i;
    public boolean j;
    public long k;
    public final Object a = new Object();
    public final ArrayMap d = new ArrayMap();
    public final ArrayMap e = new ArrayMap();

    static {
        new ArraySet();
    }

    public va7(Context context, Object obj, File file, int i, Looper looper) {
        new ta7(this, null, null, false, null);
        this.i = -1;
        this.b = obj;
        this.h = file;
        this.c = new v45(this, looper);
        if (i == 20000) {
            this.g = i;
            this.f = new ArrayMap();
        } else {
            this.g = i;
            this.f = null;
        }
        synchronized (obj) {
            try {
                try {
                    f(pe4.x(file));
                } catch (IOException | XmlPullParserException unused) {
                    throw new RuntimeException("Parsing failed for file=" + file.getPath());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean d(String str) {
        str.getClass();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < ' ' || cCharAt > 55295) && (cCharAt < 57344 || cCharAt > 65533)) {
                return true;
            }
        }
        return false;
    }

    public static int e(int i) {
        return i | 805306368;
    }

    public static void g(String str, String str2, int i, br0 br0Var, String str3) {
        if (i < 121) {
            if (str3 == null) {
                br0Var.attribute(null, str, "null");
                return;
            } else {
                br0Var.attribute(null, str, str3);
                return;
            }
        }
        if (str3 == null) {
            return;
        }
        if (!d(str3)) {
            br0Var.attribute(null, str, str3);
            return;
        }
        byte[] bArr = new byte[str3.length() * 2];
        int i2 = 0;
        for (int i3 = 0; i3 < str3.length(); i3++) {
            char cCharAt = str3.charAt(i3);
            int i4 = i2 + 1;
            bArr[i2] = (byte) (cCharAt >> '\b');
            i2 += 2;
            bArr[i4] = (byte) cCharAt;
        }
        br0Var.attribute(null, str2, Base64.encodeToString(bArr, 2));
    }

    public static void h(int i, br0 br0Var, String str, String str2, String str3, String str4, String str5, String str6, boolean z, boolean z2) {
        if (str == null || d(str) || str2 == null || d(str2) || str5 == null || d(str5)) {
            return;
        }
        br0Var.startTag(null, "setting");
        br0Var.attribute(null, "id", str);
        br0Var.attribute(null, "name", str2);
        g("value", "valueBase64", i, br0Var, str3);
        br0Var.attribute(null, "package", str5);
        if (str4 != null) {
            g("defaultValue", "defaultValueBase64", i, br0Var, str4);
            br0Var.a("defaultSysSet", z);
            g(HeaderParameterNames.AUTHENTICATION_TAG, "tagBase64", i, br0Var, str6);
        }
        if (z2) {
            br0Var.a("preserve_in_restore", true);
        }
        br0Var.endTag(null, "setting");
    }

    public final void a() {
        int i;
        ArrayMap arrayMap;
        ArrayMap arrayMap2;
        boolean z;
        synchronized (this.b) {
            i = this.i;
            arrayMap = new ArrayMap(this.d);
            arrayMap2 = new ArrayMap(this.e);
            this.j = false;
        }
        synchronized (this.a) {
            try {
                AtomicFile atomicFile = new AtomicFile(this.h);
                FileOutputStream fileOutputStream = null;
                try {
                    FileOutputStream fileOutputStreamStartWrite = atomicFile.startWrite();
                    try {
                        br0 br0Var = new br0();
                        br0Var.b = 0;
                        br0Var.setOutput(fileOutputStreamStartWrite, StandardCharsets.UTF_8.name());
                        br0Var.startDocument(null, Boolean.TRUE);
                        br0Var.startTag(null, "settings");
                        br0Var.a.writeByte(111);
                        br0Var.a.b("version");
                        br0Var.a.writeInt(i);
                        int size = arrayMap.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            ua7 ua7Var = (ua7) arrayMap.valueAt(i2);
                            h(this.i, br0Var, ua7Var.e, ua7Var.a, ua7Var.b, ua7Var.c, ua7Var.d, ua7Var.f, ua7Var.g, ua7Var.h);
                        }
                        br0Var.endTag(null, "settings");
                        br0Var.startTag(null, "namespaceHashes");
                        for (int i3 = 0; i3 < arrayMap2.size(); i3++) {
                            String str = (String) arrayMap2.keyAt(i3);
                            String str2 = (String) arrayMap2.get(str);
                            if (str != null && str2 != null) {
                                br0Var.startTag(null, "namespaceHash");
                                br0Var.attribute(null, "namespace", str);
                                br0Var.attribute(null, "bannedHash", str2);
                                br0Var.endTag(null, "namespaceHash");
                            }
                        }
                        br0Var.endTag(null, "namespaceHashes");
                        br0Var.endDocument();
                        atomicFile.finishWrite(fileOutputStreamStartWrite);
                        n84.b(fileOutputStreamStartWrite);
                        z = true;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStreamStartWrite;
                        try {
                            Log.wtf("SettingsState", "Failed to write settings, restoring backup", th);
                            atomicFile.failWrite(fileOutputStream);
                            n84.b(fileOutputStream);
                            z = false;
                        } catch (Throwable th2) {
                            n84.b(fileOutputStream);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        if (z) {
            synchronized (this.b) {
            }
        }
    }

    public final String b(uc8 uc8Var, String str, String str2) {
        if (this.i >= 121) {
            String attributeValue = uc8Var.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            String attributeValue2 = uc8Var.getAttributeValue(null, str2);
            if (attributeValue2 != null) {
                byte[] bArrDecode = Base64.decode(attributeValue2, 0);
                StringBuilder sb = new StringBuilder(bArrDecode.length / 2);
                int length = bArrDecode.length - 1;
                for (int i = 0; i < length; i += 2) {
                    sb.append((char) (((bArrDecode[i] & 255) << 8) | (bArrDecode[i + 1] & 255)));
                }
                return sb.toString();
            }
        } else {
            String attributeValue3 = uc8Var.getAttributeValue(null, str);
            if (!"null".equals(attributeValue3)) {
                return attributeValue3;
            }
        }
        return null;
    }

    public final boolean c(String str, String str2, String str3) {
        va7 va7Var;
        String str4;
        String str5;
        if (!TextUtils.isEmpty(str)) {
            ArrayMap arrayMap = this.d;
            ua7 ua7Var = (ua7) arrayMap.get(str);
            Log.d("SettingsState", "Settings changed: Old = " + ua7Var);
            String str6 = ua7Var != null ? ua7Var.b : null;
            String str7 = ua7Var != null ? ua7Var.c : null;
            if (ua7Var == null) {
                va7Var = this;
                str4 = str2;
                str5 = str3;
                ua7 ua7Var2 = new ua7(va7Var, str, str4, true, str5);
                arrayMap.put(str, ua7Var2);
                ua7Var = ua7Var2;
            } else if (ua7Var.a(str2, str3, false, true)) {
                va7Var = this;
                str4 = str2;
                str5 = str3;
            }
            Log.d("SettingsState", "Settings changed: New = " + ua7Var);
            String str8 = ua7Var.c;
            int i = va7Var.g;
            if (i != -1 && !"android".equals(str5)) {
                int length = (((str4 != null ? str4.length() : 0) + (str8 != null ? str8.length() : 0)) - (str6 != null ? str6.length() : 0)) - (str7 != null ? str7.length() : 0);
                ArrayMap arrayMap2 = va7Var.f;
                Integer num = (Integer) arrayMap2.get(str5);
                if (num != null) {
                    length += num.intValue();
                }
                int iMax = Math.max(length, 0);
                if (iMax > i) {
                    l0.e(xs1.j("You are adding too many system settings. You should stop using system settings for app specific data package: ", str5));
                    return false;
                }
                arrayMap2.put(str5, Integer.valueOf(iMax));
            }
            if (!va7Var.j) {
                va7Var.j = true;
                va7Var.c.removeMessages(1);
                va7Var.a();
            }
            return true;
        }
        return false;
    }

    public final void f(uc8 uc8Var) throws XmlPullParserException, IOException {
        int i;
        boolean zC;
        String strB;
        boolean zC2;
        int depth = uc8Var.getDepth();
        while (true) {
            int next = uc8Var.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && uc8Var.getDepth() <= depth) {
                return;
            }
            if (next != 3 && next != 4) {
                String name = uc8Var.getName();
                String str = null;
                if (name.equals("settings")) {
                    int iA = uc8Var.a(null, "version");
                    int i2 = -1;
                    if (iA == -1) {
                        throw new XmlPullParserException("Missing attribute version");
                    }
                    this.i = uc8Var.b(iA);
                    int depth2 = uc8Var.getDepth();
                    while (true) {
                        int next2 = uc8Var.next();
                        if (next2 == 1 || (next2 == 3 && uc8Var.getDepth() <= depth2)) {
                            break;
                        }
                        if (next2 != 3) {
                            if (next2 != 4) {
                                if (uc8Var.getName().equals("setting")) {
                                    String attributeValue = uc8Var.getAttributeValue(str, "id");
                                    String attributeValue2 = uc8Var.getAttributeValue(str, "name");
                                    String strB2 = b(uc8Var, "value", "valueBase64");
                                    String attributeValue3 = uc8Var.getAttributeValue(str, "package");
                                    String strB3 = b(uc8Var, "defaultValue", "defaultValueBase64");
                                    int iA2 = uc8Var.a(str, "preserve_in_restore");
                                    if (iA2 == i2) {
                                        zC = false;
                                    } else {
                                        try {
                                            zC = uc8Var.c(iA2);
                                        } catch (Exception unused) {
                                            zC = false;
                                        }
                                    }
                                    if (strB3 != null) {
                                        int iA3 = uc8Var.a(str, "defaultSysSet");
                                        if (iA3 == i2) {
                                            zC2 = false;
                                        } else {
                                            try {
                                                zC2 = uc8Var.c(iA3);
                                            } catch (Exception unused2) {
                                                zC2 = false;
                                            }
                                        }
                                        strB = b(uc8Var, HeaderParameterNames.AUTHENTICATION_TAG, "tagBase64");
                                    } else {
                                        strB = null;
                                        zC2 = false;
                                    }
                                    i = -1;
                                    this.d.put(attributeValue2, new ua7(this, attributeValue2, strB2, strB3, attributeValue3, strB, zC2, attributeValue, zC));
                                } else {
                                    i = i2;
                                }
                                depth2 = depth2;
                                i2 = i;
                            }
                        }
                        str = null;
                    }
                } else if (name.equals("namespaceHashes")) {
                    int depth3 = uc8Var.getDepth();
                    while (true) {
                        int next3 = uc8Var.next();
                        if (next3 == 1 || (next3 == 3 && uc8Var.getDepth() <= depth3)) {
                            break;
                        }
                        if (next3 != 3 && next3 != 4 && uc8Var.getName().equals("namespaceHash")) {
                            this.e.put(uc8Var.getAttributeValue(null, "namespace"), uc8Var.getAttributeValue(null, "bannedHash"));
                        }
                    }
                }
            }
        }
    }
}
