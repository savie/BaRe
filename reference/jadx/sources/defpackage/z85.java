package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.TypedValue;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.swiftapps.sba.SbaSwiftTarNative;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.nio.ByteBuffer;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.folders.data.FolderState;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z85 {
    public static final double[][] a = {new double[]{0.41233895d, 0.35762064d, 0.18051042d}, new double[]{0.2126d, 0.7152d, 0.0722d}, new double[]{0.01932141d, 0.11916382d, 0.95034478d}};
    public static final double[] b = {95.047d, 100.0d, 108.883d};
    public static final Object c = new Object();
    public static final pb8 d = new pb8(false);
    public static final pb8 e = new pb8(true);
    public static boolean f;

    public static final String A(String str) {
        if (str == null) {
            str = "";
        }
        return nq7.I0(nq7.H0(str).toString(), '/');
    }

    public static byte[] B(zq8 zq8Var, g45 g45Var) {
        byte[] bArr = new byte[g45Var.g - 32];
        for (int i = 0; i < g45Var.c; i++) {
            l22 l22Var = ((l22[]) zq8Var.b)[i];
            byte[] bArr2 = new byte[320];
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = i2 * 5;
                int[] iArr = (int[]) l22Var.b;
                int i4 = i2 * 4;
                int i5 = iArr[i4];
                bArr2[i3] = (byte) i5;
                int i6 = iArr[i4 + 1];
                bArr2[i3 + 1] = (byte) ((i5 >> 8) | (i6 << 2));
                int i7 = i6 >> 6;
                int i8 = iArr[i4 + 2];
                bArr2[i3 + 2] = (byte) (i7 | (i8 << 4));
                int i9 = iArr[i4 + 3];
                bArr2[i3 + 3] = (byte) ((i9 << 6) | (i8 >> 4));
                bArr2[i3 + 4] = (byte) (i9 >> 2);
            }
            l22Var.getClass();
            System.arraycopy(bArr2, 0, bArr, i * 320, 320);
        }
        return bArr;
    }

    public static int C(Context context, TypedValue typedValue) {
        int i = typedValue.resourceId;
        return i != 0 ? context.getColor(i) : typedValue.data;
    }

    public static final boolean D(FolderState folderState, Set set, Set set2, Map map, q63 q63Var, String str) {
        if (folderState == null) {
            return q63Var.J(str).j();
        }
        if (set.contains(str)) {
            if (set2 == null) {
                set2 = sv2.a;
            }
            return set2.contains(str);
        }
        if (map == null) {
            map = pv2.a;
        }
        return map.containsKey(str);
    }

    public static void E(sa1 sa1Var, q63 q63Var) {
        q63Var.getClass();
        g00 g00Var = g00.a;
        if (g00.r().hasSystemFeature("android.hardware.telephony")) {
            Intent intentPutExtra = new Intent(sa1Var, (Class<?>) CallsBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var.v());
            intentPutExtra.getClass();
            sa1Var.startActivity(intentPutExtra);
        } else {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, "Feature not supported on this device");
        }
    }

    public static int F(Duration duration) {
        long millis = duration.toMillis();
        return (int) (millis > 0 ? Math.min(millis, 2147483647L) : Math.max(millis, -2147483648L));
    }

    public static z17 G(SbaTarEntryInfo sbaTarEntryInfo) {
        c27 c27Var;
        String strK0 = sbaTarEntryInfo.getEntryType() == b27.Directory ? nq7.K0(sbaTarEntryInfo.getName(), '/') : sbaTarEntryInfo.getName();
        switch (x17.a[sbaTarEntryInfo.getEntryType().ordinal()]) {
            case 1:
                c27Var = c27.File;
                break;
            case 2:
                c27Var = c27.Directory;
                break;
            case 3:
                c27Var = c27.SymbolicLink;
                break;
            case 4:
                c27Var = c27.Hardlink;
                break;
            case 5:
                c27Var = c27.Fifo;
                break;
            case 6:
                c27Var = c27.CharacterDevice;
                break;
            case 7:
                c27Var = c27.BlockDevice;
                break;
            case 8:
                c27Var = c27.Other;
                break;
            default:
                q.j();
                return null;
        }
        return new z17(strK0, c27Var, sbaTarEntryInfo.getLinkName(), sbaTarEntryInfo.getMode(), sbaTarEntryInfo.getSize(), sbaTarEntryInfo.getRealSize(), sbaTarEntryInfo.getMtimeMs(), sbaTarEntryInfo.getSparse(), x50.z0(sbaTarEntryInfo.getXattrNames()));
    }

    public static final String H(byte b2) {
        if (b2 == 1) {
            return "quotation mark '\"'";
        }
        if (b2 == 2) {
            return "string escape sequence '\\'";
        }
        if (b2 == 4) {
            return "comma ','";
        }
        if (b2 == 5) {
            return "colon ':'";
        }
        if (b2 == 6) {
            return "start of the object '{'";
        }
        if (b2 == 7) {
            return "end of the object '}'";
        }
        if (b2 == 8) {
            return "start of the array '['";
        }
        if (b2 == 9) {
            return "end of the array ']'";
        }
        if (b2 == 10) {
            return "end of the input";
        }
        return b2 == 127 ? "invalid token" : "valid token";
    }

    public static double I(double d2) {
        double d3 = (d2 + 16.0d) / 116.0d;
        double d4 = d3 * d3 * d3;
        if (d4 <= 0.008856451679035631d) {
            d4 = ((d3 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        return d4 * 100.0d;
    }

    public static void J(Object obj, Object obj2) {
        if (obj == null) {
            f6.n("null key in entry: null=".concat(String.valueOf(obj2)));
        } else {
            if (obj2 != null) {
                return;
            }
            f6.n(eq3.k("null value in entry: ", obj.toString(), "=null"));
        }
    }

    public static final void K(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i) {
        if (i < 0 || byteBuffer2.remaining() < i || byteBuffer3.remaining() < i || byteBuffer.remaining() < i) {
            c6.f("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
        }
    }

    public static final byte[] L(byte[] bArr, byte[] bArr2) {
        if (bArr.length == bArr2.length) {
            return M(bArr, bArr2, 0, bArr.length);
        }
        c6.f("The lengths of x and y should match.");
        return null;
    }

    public static final byte[] M(byte[] bArr, byte[] bArr2, int i, int i2) {
        if (i2 < 0 || bArr.length - i2 < i || bArr2.length - i2 < 0) {
            c6.f("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
            return null;
        }
        byte[] bArr3 = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr3[i3] = (byte) (bArr[i3 + i] ^ bArr2[i3]);
        }
        return bArr3;
    }

    public static byte[] N(byte[]... bArr) {
        int length = 0;
        for (byte[] bArr2 : bArr) {
            if (length > Integer.MAX_VALUE - bArr2.length) {
                m0.h("exceeded size limit");
                return null;
            }
            length += bArr2.length;
        }
        byte[] bArr3 = new byte[length];
        int length2 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
            length2 += bArr4.length;
        }
        return bArr3;
    }

    public static final na1 a(CloudCredentials cloudCredentials) {
        try {
            URI uriCreate = URI.create(cloudCredentials.getBaseUrl(false));
            String host = uriCreate.getHost();
            if (host != null) {
                Locale locale = Locale.ROOT;
                locale.getClass();
                String lowerCase = host.toLowerCase(locale);
                lowerCase.getClass();
                int port = uriCreate.getPort();
                Integer numValueOf = Integer.valueOf(port);
                if (port <= 0) {
                    numValueOf = null;
                }
                return new na1(lowerCase, numValueOf != null ? numValueOf.intValue() : cloudCredentials.getProtocol().getDefPort(), A(uriCreate.getPath()));
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static final byte b(char c2) {
        if (c2 < '~') {
            return w41.b[c2];
        }
        return (byte) 0;
    }

    public static int c(int i, int i2) {
        return xl1.g(i, (Color.alpha(i) * i2) / 255);
    }

    public static ww4 d(String str, Set set, boolean z, boolean z2) {
        set.getClass();
        Uri uri = Uri.parse("package:".concat(str));
        ww4 ww4VarP = nc8.p();
        if (set.contains("com.android.permission.GET_INSTALLED_APPS") && z) {
            Intent intentPutExtra = new Intent("miui.intent.action.APP_PERM_EDITOR").putExtra("extra_pkgname", str);
            intentPutExtra.getClass();
            ww4VarP.add(intentPutExtra);
        }
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", uri);
        if (set.contains("com.android.permission.GET_INSTALLED_APPS") && z2) {
            intent.putStringArrayListExtra("permissionList", fl1.x0("com.android.permission.GET_INSTALLED_APPS"));
            intent.putExtra("isGetPermission", true);
        }
        ww4VarP.add(intent);
        ww4VarP.add(new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS"));
        ww4VarP.add(new Intent("android.settings.APPLICATION_SETTINGS"));
        ww4VarP.add(new Intent("android.settings.SETTINGS"));
        return nc8.h(ww4VarP);
    }

    public static int f(double d2) {
        double d3 = d2 / 100.0d;
        int iRound = (int) Math.round((d3 <= 0.0031308d ? d3 * 12.92d : (Math.pow(d3, 0.4166666666666667d) * 1.055d) - 0.055d) * 255.0d);
        if (iRound < 0) {
            return 0;
        }
        if (iRound > 255) {
            return 255;
        }
        return iRound;
    }

    public static d27 h(File file, File file2, f27 f27Var, List list, long j, ny6 ny6Var, h07 h07Var) throws yy6 {
        f27 f27Var2;
        az6 az6Var;
        f27Var.getClass();
        String[] strArr = null;
        if (!file.isFile()) {
            f6.g(xs1.j("Tar file does not exist: ", file.getPath()));
            return null;
        }
        if (j < 0) {
            f6.g(u48.l(j, "SBA tar progress update interval must be >= 0 ms: "));
            return null;
        }
        if (file2.exists()) {
            if (!file2.isDirectory()) {
                f6.g(xs1.j("Tar extraction target is not a directory: ", file2.getPath()));
                return null;
            }
        } else if (!file2.mkdirs()) {
            f6.g(xs1.j("Failed to create tar extraction target: ", file2.getPath()));
            return null;
        }
        final long length = file.length();
        h07 g27Var = (h07Var == null || j <= 0) ? h07Var : new g27(h07Var, j);
        vq vqVarQ = x13.Q(g27Var, ny6Var, new rt3() { // from class: w17
            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                h07 h07Var2 = (h07) obj;
                long jLongValue = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                h07Var2.getClass();
                i07 i07Var = i07.Extract;
                l07 l07Var = l07.Extraction;
                m07 m07Var = m07.Progress;
                long j2 = length;
                x13.l(h07Var2, i07Var, l07Var, m07Var, null, l73.i(jLongValue, 0L, j2), Long.valueOf(j2), 8);
                return be8.a;
            }
        });
        i07 i07Var = i07.Extract;
        l07 l07Var = l07.Extraction;
        x13.l(g27Var, i07Var, l07Var, m07.Started, null, 0L, Long.valueOf(length), 24);
        if ((62 & 1) != 0) {
            try {
                f27Var2 = f27.Basic;
            } catch (IOException e2) {
                throw w13.t(e2, "Failed to extract tar file '" + file.getPath() + "'");
            }
        } else {
            f27Var2 = f27Var;
        }
        l0 l0Var = (62 & 16) != 0 ? lv1.e : null;
        f27Var2.getClass();
        l0Var.getClass();
        if (2000 < 0) {
            throw new IllegalArgumentException(("SBA progress update interval must be >= 0 ms: 2000").toString());
        }
        int i = a17.a[f27Var2.ordinal()];
        if (i == 1) {
            az6Var = new az6(511);
        } else if (i == 2) {
            az6Var = new az6(468);
        } else {
            if (i != 3) {
                throw new mn5();
            }
            az6Var = new az6(384);
        }
        int iS = w13.s(az6Var);
        if (list != null) {
            List list2 = !list.isEmpty() ? list : null;
            if (list2 != null) {
                strArr = (String[]) list2.toArray(new String[0]);
            }
        }
        ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
        try {
            SbaSwiftTarNative sbaSwiftTarNative = SbaSwiftTarNative.a;
            FileDescriptor fileDescriptor = parcelFileDescriptorOpen.getFileDescriptor();
            fileDescriptor.getClass();
            String canonicalPath = file2.getCanonicalPath();
            canonicalPath.getClass();
            ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
            try {
                long[] jArrA = SbaSwiftTarNative.a(length, canonicalPath, iS, strArr, vqVarQ, parcelFileDescriptorDup.getFd());
                parcelFileDescriptorDup.close();
                v17 v17VarK = vm4.k(jArrA);
                d27 d27Var = new d27(v17VarK.a, v17VarK.b, v17VarK.c, v17VarK.d, v17VarK.e, v17VarK.f, v17VarK.g, v17VarK.h, v17VarK.i);
                parcelFileDescriptorOpen.close();
                x13.l(g27Var, i07Var, l07Var, m07.Completed, null, length, Long.valueOf(length), 8);
                return d27Var;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(parcelFileDescriptorDup, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(parcelFileDescriptorOpen, th3);
                throw th4;
            }
        }
    }

    public static String i(String str, String str2, String str3) {
        Object next;
        List<String> listX0 = nq7.x0(str, new String[]{"\n"}, 6);
        String strK = eq3.k("<", str2, ">");
        String strK2 = eq3.k("</", str2, ">");
        boolean z = false;
        for (String str4 : listX0) {
            if (nq7.Z(str4, strK, false)) {
                z = true;
            }
            if (z) {
                if (nq7.Z(str4, "name=\"" + str3 + "\"", false)) {
                    if (nq7.Z(str4, "<string", false)) {
                        return jq7.a(str4, "\">", "</");
                    }
                    if (nq7.Z(str4, "<int", false)) {
                        Iterator it = nq7.x0(nq7.H0(str4).toString(), new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6).iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!uq7.V((String) next, "value=", false));
                        String str5 = (String) next;
                        if (str5 != null && str5.length() != 0) {
                            return jq7.a(str5, "\"", "\"");
                        }
                    }
                }
            }
            if (nq7.Z(str4, strK2, false)) {
                break;
            }
        }
        return null;
    }

    public static h80 j(dd1 dd1Var) {
        dd1Var.getClass();
        int i = wi1.a[dd1Var.ordinal()];
        int i2 = 3;
        String str = null;
        if (i == 1) {
            fd1 fd1Var = fd1.SMB;
            return new h80((Object) dd1Var, (Object) fl1.A0(new xi1(fd1Var.getDefPort(), fd1Var, null), new xi1(1445, fd1Var, null), new xi1(1446, fd1Var, null), new xi1(24450, fd1Var, null), new xi1(24451, fd1Var, null), new xi1(24452, fd1Var, null)), 3, false);
        }
        if (i == 2) {
            fd1 fd1Var2 = fd1.SFTP;
            return new h80((Object) dd1Var, (Object) fl1.A0(new xi1(fd1Var2.getDefPort(), fd1Var2, null), new xi1(2222, fd1Var2, null)), 3, false);
        }
        if (i == 3) {
            fd1 fd1Var3 = fd1.FTP;
            xi1 xi1Var = new xi1(fd1Var3.getDefPort(), fd1Var3, null);
            xi1 xi1Var2 = new xi1(2021, fd1Var3, null);
            xi1 xi1Var3 = new xi1(2121, fd1Var3, null);
            xi1 xi1Var4 = new xi1(2100, fd1Var3, null);
            fd1 fd1Var4 = fd1.FTPS_EXPLICIT;
            xi1 xi1Var5 = new xi1(fd1Var4.getDefPort(), fd1Var4, null);
            xi1 xi1Var6 = new xi1(21230, fd1Var4, null);
            xi1 xi1Var7 = new xi1(21330, fd1Var4, null);
            xi1 xi1Var8 = new xi1(21430, fd1Var4, null);
            xi1 xi1Var9 = new xi1(21530, fd1Var4, null);
            fd1 fd1Var5 = fd1.FTPS_IMPLICIT;
            return new h80((Object) dd1Var, (Object) fl1.A0(xi1Var, xi1Var2, xi1Var3, xi1Var4, xi1Var5, xi1Var6, xi1Var7, xi1Var8, xi1Var9, new xi1(fd1Var5.getDefPort(), fd1Var5, null), new xi1(21250, fd1Var5, null), new xi1(2990, fd1Var5, null)), 3, false);
        }
        if (i != 4) {
            return null;
        }
        List listA0 = fl1.A0(5005, Integer.valueOf(fd1.HTTP.getDefPort()), 8080, 8081, 8888);
        ArrayList arrayList = new ArrayList();
        Iterator it = listA0.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            fd1 fd1Var6 = fd1.HTTP;
            el1.K0(fl1.A0(new xi1(iIntValue, fd1Var6, null), new xi1(iIntValue, fd1Var6, "dav"), new xi1(iIntValue, fd1Var6, "webdav"), new xi1(iIntValue, fd1Var6, "remote.php/dav/files"), new xi1(iIntValue, fd1Var6, "remote.php/webdav")), arrayList);
        }
        List listA1 = fl1.A0(5006, Integer.valueOf(fd1.HTTPS.getDefPort()), 8443);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = listA1.iterator();
        while (it2.hasNext()) {
            int iIntValue2 = ((Number) it2.next()).intValue();
            fd1 fd1Var7 = fd1.HTTPS;
            el1.K0(fl1.A0(new xi1(iIntValue2, fd1Var7, str), new xi1(iIntValue2, fd1Var7, "dav"), new xi1(iIntValue2, fd1Var7, "webdav"), new xi1(iIntValue2, fd1Var7, "remote.php/dav/files"), new xi1(iIntValue2, fd1Var7, "remote.php/webdav")), arrayList2);
            str = null;
        }
        return new h80((Object) dd1Var, (Object) el1.g1(arrayList, arrayList2), i2, false);
    }

    public static Class k(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (!(type instanceof GenericArrayType)) {
            return Object.class;
        }
        Class clsK = k(((GenericArrayType) type).getGenericComponentType());
        if (clsK != null) {
            return Array.newInstance((Class<?>) clsK, 0).getClass();
        }
        return null;
    }

    public static Class[] l(ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Class[] clsArr = new Class[actualTypeArguments.length];
        for (int i = 0; i < actualTypeArguments.length; i++) {
            clsArr[i] = k(actualTypeArguments[i]);
        }
        return clsArr;
    }

    public static int m(int i, Context context, String str) {
        return C(context, jm1.T(i, context, str));
    }

    public static Integer n(Context context, int i) {
        TypedValue typedValueP = jm1.P(context.getTheme(), i);
        if (typedValueP != null) {
            return Integer.valueOf(C(context, typedValueP));
        }
        return null;
    }

    public static int o(int i, int i2) {
        b34 b34Var = new b34(i);
        b34Var.a(y13.F(b34Var.a, b34Var.b, i2));
        return b34Var.d;
    }

    public static vl1 p(Context context, int i) {
        if (jm1.Q(context, R.attr.isLightTheme, true)) {
            int iO = o(i, 40);
            o(i, 100);
            return new vl1(iO, o(i, 90), o(i, 10));
        }
        int iO2 = o(i, 80);
        o(i, 20);
        return new vl1(iO2, o(i, 30), o(i, 90));
    }

    public static ColorStateList q(Context context, int i) {
        TypedValue typedValueP = jm1.P(context.getTheme(), i);
        if (typedValueP == null) {
            return null;
        }
        int i2 = typedValueP.resourceId;
        if (i2 != 0) {
            return zh8.q(context, i2);
        }
        int i3 = typedValueP.data;
        if (i3 != 0) {
            return ColorStateList.valueOf(i3);
        }
        return null;
    }

    public static xp1 r() {
        xp1 xp1Var = null;
        int i = -1;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("compression_level_app_data", -1);
            xp1.Companion.getClass();
            xp1[] xp1VarArrA = wp1.a();
            for (int i2 = 0; i2 < 2; i2++) {
                xp1 xp1Var2 = xp1VarArrA[i2];
                if (xp1Var2.getLevel() == i) {
                    xp1Var = xp1Var2;
                    break;
                }
            }
            if (xp1Var != null) {
                return xp1Var;
            }
            xp1.Companion.getClass();
            return xp1.DEFAULT;
        } catch (ClassCastException unused) {
        }
    }

    public static xp1 s() {
        xp1 xp1Var = null;
        int i = -1;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("compression_level_msgs", -1);
            xp1.Companion.getClass();
            xp1[] xp1VarArrA = wp1.a();
            for (int i2 = 0; i2 < 2; i2++) {
                xp1 xp1Var2 = xp1VarArrA[i2];
                if (xp1Var2.getLevel() == i) {
                    xp1Var = xp1Var2;
                    break;
                }
            }
            if (xp1Var != null) {
                return xp1Var;
            }
            xp1.Companion.getClass();
            return xp1.DEFAULT;
        } catch (ClassCastException unused) {
        }
    }

    public static final xt4 t(fu4 fu4Var) {
        fu4Var.getClass();
        hu4 lifecycle = fu4Var.getLifecycle();
        lifecycle.getClass();
        fu fuVar = lifecycle.a;
        while (true) {
            xt4 xt4Var = (xt4) ((AtomicReference) fuVar.a).get();
            if (xt4Var != null) {
                return xt4Var;
            }
            fs7 fs7VarA = zm5.a();
            rf2 rf2Var = cn2.a;
            xt4 xt4Var2 = new xt4(lifecycle, od2.u(fs7VarA, i55.a.e));
            AtomicReference atomicReference = (AtomicReference) fuVar.a;
            do {
                if (atomicReference.compareAndSet(null, xt4Var2)) {
                    rf2 rf2Var2 = cn2.a;
                    l73.v(xt4Var2, i55.a.e, new a11(xt4Var2, null), 2);
                    return xt4Var2;
                }
            } while (atomicReference.get() == null);
        }
    }

    public static Integer u() {
        int i = -1;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("max_sms_backups", -1);
            if (i > 0) {
                return Integer.valueOf(i);
            }
            return null;
        } catch (ClassCastException unused) {
        }
    }

    public static String v(String str) {
        if (str.length() <= 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        char c2 = charArray[0];
        if (!((charArray.length >= 2 && Character.isUpperCase(c2)) ? Character.isUpperCase(charArray[1]) : false)) {
            charArray[0] = Character.toLowerCase(c2);
        }
        return new String(charArray);
    }

    public static boolean w() {
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("KEY_BACKUP_APP_CACHE", false);
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 != null) {
                    return sharedPreferences2.getBoolean("backup_app_cache", z);
                }
                pe4.F("prefs");
                throw null;
            } catch (ClassCastException unused) {
                return z;
            }
        } catch (ClassCastException unused2) {
        }
    }

    public static int x(float f2, int i, int i2) {
        return xl1.e(xl1.g(i2, Math.round(Color.alpha(i2) * f2)), i);
    }

    public static double y(int i) {
        double d2 = ((double) i) / 255.0d;
        return (d2 <= 0.040449936d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d)) * 100.0d;
    }

    public static ArrayList z(File file) throws yy6 {
        if (!file.isFile()) {
            f6.g(xs1.j("Tar file does not exist: ", file.getPath()));
            return null;
        }
        long length = file.length();
        try {
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
            try {
                SbaSwiftTarNative sbaSwiftTarNative = SbaSwiftTarNative.a;
                FileDescriptor fileDescriptor = parcelFileDescriptorOpen.getFileDescriptor();
                fileDescriptor.getClass();
                SbaTarEntryInfo[] sbaTarEntryInfoArrD = SbaSwiftTarNative.d(fileDescriptor, length);
                ArrayList arrayList = new ArrayList(sbaTarEntryInfoArrD.length);
                for (SbaTarEntryInfo sbaTarEntryInfo : sbaTarEntryInfoArrD) {
                    arrayList.add(G(sbaTarEntryInfo));
                }
                parcelFileDescriptorOpen.close();
                return arrayList;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(parcelFileDescriptorOpen, th);
                    throw th2;
                }
            }
        } catch (IOException e2) {
            throw w13.t(e2, "Failed to list tar file '" + file.getPath() + "'");
        }
    }

    public abstract String e(byte[] bArr, int i, int i2);

    public abstract int g(String str, byte[] bArr, int i, int i2);
}
