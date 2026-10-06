package defpackage;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.os.Build;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.InputFilter;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.swiftapps.sba.SbaArchiveNative;
import com.swiftapps.sba.SbaLibaegisCryptoNative;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.function.Supplier;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tu0 {
    public static final int[] a = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};
    public static final int[] b = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};
    public static final int[] c = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};
    public static final int[] d = {R.attr.name, R.attr.pathData, R.attr.fillType};
    public static final int[] e = {R.attr.drawable};
    public static final int[] f = {R.attr.name, R.attr.animation};
    public static final hx0 g = new hx0(6);
    public static final byte[] h = new byte[0];
    public static final ma2 i = new ma2(23);
    public static boolean j = false;
    public static Method k = null;
    public static boolean l = false;
    public static Field m;

    public static qy6 A(long[] jArr, long j2) {
        if (jArr.length >= 9) {
            return new qy6(jArr[0], jArr[1], jArr[2], jArr[3], jArr[4], jArr[5], jArr[6], jArr[7], jArr[8], j2);
        }
        f6.g(fz5.j(jArr.length, "Invalid native SBA create result length: "));
        return null;
    }

    public static z17 B(SbaTarEntryInfo sbaTarEntryInfo) {
        c27 c27Var;
        String strK0 = sbaTarEntryInfo.getEntryType() == b27.Directory ? nq7.K0(sbaTarEntryInfo.getName(), '/') : sbaTarEntryInfo.getName();
        switch (dy6.a[sbaTarEntryInfo.getEntryType().ordinal()]) {
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

    public static void C(String str) {
        Locale locale = Locale.US;
        String strQ = dj7.q(locale, str, locale);
        if (nq7.j0(str)) {
            c6.f("Blank APKS archive entry");
            return;
        }
        if (uq7.V(str, "/", false) || uq7.V(str, "\\", false) || (str.length() >= 2 && str.charAt(1) == ':' && Character.isLetter(str.charAt(0)))) {
            f6.g("Absolute APKS archive entry is not allowed: ".concat(str));
            return;
        }
        if (nq7.a0(str, '/')) {
            f6.g("Nested APKS archive entry is not allowed: ".concat(str));
            return;
        }
        if (nq7.a0(str, '\\')) {
            f6.g("Nested APKS archive entry is not allowed: ".concat(str));
            return;
        }
        if (nq7.Z(str, "..", false)) {
            f6.g("Unsafe APKS archive entry is not allowed: ".concat(str));
        } else {
            if (uq7.O(strQ, ".apk", false) || n(strQ) || strQ.equals("icon.png")) {
                return;
            }
            f6.g("Unsupported APKS archive entry: ".concat(str));
        }
    }

    public static final Object D(long j2, qt3 qt3Var, kv1 kv1Var) {
        if (j2 <= 0) {
            throw new g48("Timed out immediately", null);
        }
        h48 h48Var = new h48(j2, kv1Var);
        sz8.G(h48Var, true, new kn2(yc9.u(h48Var.f.getContext()).b(h48Var.k, h48Var, h48Var.e)));
        return xx3.A(h48Var, false, h48Var, qt3Var);
    }

    public static int E(String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= 2048) {
                try {
                    int length2 = str.length();
                    int i4 = 0;
                    while (i2 < length2) {
                        char cCharAt2 = str.charAt(i2);
                        if (cCharAt2 < 2048) {
                            i4 += (127 - cCharAt2) >>> 31;
                        } else {
                            i4 += 2;
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                                if (Character.codePointAt(str, i2) < 65536) {
                                    throw new r89("Unpaired surrogate at index " + i2 + " of " + length2);
                                }
                                i2++;
                            }
                        }
                        i2++;
                    }
                    i3 += i4;
                    break;
                } catch (r89 unused) {
                    return str.getBytes(StandardCharsets.UTF_8).length;
                }
            }
            i3 += (127 - cCharAt) >>> 31;
            i2++;
        }
        if (i3 >= length) {
            return i3;
        }
        c6.f(u48.l(((long) i3) + 4294967296L, "UTF-8 length does not fit in int: "));
        return 0;
    }

    public static int F(String str, byte[] bArr, int i2, int i3) {
        int i4;
        int length;
        int i5;
        char cCharAt;
        int length2 = str.length();
        int i6 = i2 + i3;
        int i7 = 0;
        while (i7 < length2 && (i5 = i7 + i2) < i6 && (cCharAt = str.charAt(i7)) < 128) {
            bArr[i5] = (byte) cCharAt;
            i7++;
        }
        if (i7 == length2) {
            return i2 + length2;
        }
        int i8 = i2 + i7;
        while (i7 < length2) {
            char cCharAt2 = str.charAt(i7);
            if (cCharAt2 < 128 && i8 < i6) {
                bArr[i8] = (byte) cCharAt2;
                i8++;
            } else if (cCharAt2 < 2048 && i8 <= i6 - 2) {
                int i9 = i8 + 1;
                bArr[i8] = (byte) ((cCharAt2 >>> 6) | 960);
                i8 += 2;
                bArr[i9] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i8 > i6 - 3) {
                    if (i8 <= i6 - 4) {
                        i7++;
                        if (i7 != str.length()) {
                            char cCharAt3 = str.charAt(i7);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i8 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i10 = i8 + 3;
                                bArr[i8 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i8 += 4;
                                bArr[i10] = (byte) ((codePoint & 63) | 128);
                            }
                        }
                        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                        if (bytes.length - i2 > i3) {
                            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                        }
                        System.arraycopy(bytes, 0, bArr, i2, bytes.length);
                        length = bytes.length;
                    } else {
                        if (55296 > cCharAt2 || cCharAt2 > 57343 || ((i4 = i7 + 1) != str.length() && Character.isSurrogatePair(cCharAt2, str.charAt(i4)))) {
                            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                        }
                        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
                        if (bytes2.length - i2 > i3) {
                            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                        }
                        System.arraycopy(bytes2, 0, bArr, i2, bytes2.length);
                        length = bytes2.length;
                    }
                    return i2 + length;
                }
                bArr[i8] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i11 = i8 + 2;
                bArr[i8 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i8 += 3;
                bArr[i11] = (byte) ((cCharAt2 & '?') | 128);
            }
            i7++;
        }
        return i8;
    }

    public static String G(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return "";
        }
        if ((i2 | i3 | ((bArr.length - i2) - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        int i4 = i2 + i3;
        char[] cArr = new char[i3];
        int i5 = 0;
        while (i2 < i4) {
            byte b2 = bArr[i2];
            if (b2 < 0) {
                break;
            }
            i2++;
            cArr[i5] = (char) b2;
            i5++;
        }
        while (i2 < i4) {
            int i6 = i2 + 1;
            byte b3 = bArr[i2];
            if (b3 >= 0) {
                int i7 = i5 + 1;
                cArr[i5] = (char) b3;
                while (i6 < i4) {
                    byte b4 = bArr[i6];
                    if (b4 < 0) {
                        break;
                    }
                    i6++;
                    cArr[i7] = (char) b4;
                    i7++;
                }
                i5 = i7;
                i2 = i6;
            } else if (b3 < -32) {
                if (i6 >= i4) {
                    throw p79.c();
                }
                i2 += 2;
                byte b5 = bArr[i6];
                int i8 = i5 + 1;
                if (b3 < -62 || cy0.M(b5)) {
                    throw p79.c();
                }
                cArr[i5] = (char) ((b5 & 63) | ((b3 & 31) << 6));
                i5 = i8;
            } else {
                if (b3 >= -16) {
                    if (i6 >= i4 - 2) {
                        throw p79.c();
                    }
                    byte b6 = bArr[i6];
                    int i9 = i2 + 3;
                    byte b7 = bArr[i2 + 2];
                    i2 += 4;
                    byte b8 = bArr[i9];
                    int i10 = i5 + 1;
                    if (!cy0.M(b6)) {
                        if ((((b6 + 112) + (b3 << 28)) >> 30) == 0 && !cy0.M(b7) && !cy0.M(b8)) {
                            int i11 = ((b6 & 63) << 12) | ((b3 & 7) << 18) | ((b7 & 63) << 6) | (b8 & 63);
                            cArr[i5] = (char) ((i11 >>> 10) + 55232);
                            cArr[i10] = (char) ((i11 & 1023) + 56320);
                            i5 += 2;
                        }
                    }
                    throw p79.c();
                }
                if (i6 >= i4 - 1) {
                    throw p79.c();
                }
                int i12 = i2 + 2;
                byte b9 = bArr[i6];
                i2 += 3;
                byte b10 = bArr[i12];
                int i13 = i5 + 1;
                if (cy0.M(b9) || ((b3 == -32 && b9 < -96) || ((b3 == -19 && b9 >= -96) || cy0.M(b10)))) {
                    throw p79.c();
                }
                cArr[i5] = (char) (((b9 & 63) << 6) | ((b3 & 15) << 12) | (b10 & 63));
                i5 = i13;
            }
        }
        return new String(cArr, 0, i5);
    }

    public static final rm9 H(vm9 vm9Var) throws dm9 {
        try {
            sm9 sm9VarH = vm9Var.h();
            if (sm9VarH == null) {
                throw new dm9("Parser being asked to parse an empty input stream");
            }
            try {
                byte b2 = sm9VarH.b;
                byte b3 = sm9VarH.a;
                int i2 = 0;
                if (b3 == -128) {
                    long jA = vm9Var.a();
                    if (jA > 1000) {
                        throw new dm9("Parser being asked to read a large CBOR array");
                    }
                    J(b2, jA);
                    rm9[] rm9VarArr = new rm9[(int) jA];
                    while (i2 < jA) {
                        rm9VarArr[i2] = H(vm9Var);
                        i2++;
                    }
                    return new vl9(ib9.C(rm9VarArr));
                }
                try {
                    if (b3 != -96) {
                        if (b3 == -64) {
                            throw new dm9("Tags are currently unsupported");
                        }
                        if (b3 == -32) {
                            return new xl9(vm9Var.j());
                        }
                        if (b3 == 0 || b3 == 32) {
                            long jB = vm9Var.b();
                            J(b2, jB > 0 ? jB : ~jB);
                            return new gm9(jB);
                        }
                        if (b3 == 64) {
                            vm9Var.q((byte) 64);
                            byte[] bArrU = vm9Var.u();
                            int length = bArrU.length;
                            J(b2, length);
                            return new am9(wk9.l(bArrU, length));
                        }
                        if (b3 != 96) {
                            throw new dm9("Unidentifiable major type: " + ((b3 >> 5) & 7));
                        }
                        vm9Var.q((byte) 96);
                        String str = new String(vm9Var.u(), StandardCharsets.UTF_8);
                        J(b2, str.length());
                        return new mm9(str);
                    }
                    long jG = vm9Var.g();
                    if (jG > 1000) {
                        throw new dm9("Parser being asked to read a large CBOR map");
                    }
                    J(b2, jG);
                    int i3 = (int) jG;
                    ib[] ibVarArr = new ib[i3];
                    rm9 rm9Var = null;
                    int i4 = 0;
                    while (i4 < jG) {
                        rm9 rm9VarH = H(vm9Var);
                        if (rm9Var != null && rm9VarH.compareTo(rm9Var) <= 0) {
                            throw new rl9("Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: " + rm9Var.toString() + "\nCurrent key: " + rm9VarH.toString());
                        }
                        ibVarArr[i4] = new ib(17, rm9VarH, H(vm9Var));
                        i4++;
                        rm9Var = rm9VarH;
                    }
                    TreeMap treeMap = new TreeMap();
                    while (i2 < i3) {
                        ib ibVar = ibVarArr[i2];
                        if (treeMap.containsKey((rm9) ibVar.b)) {
                            throw new rl9("Attempted to add duplicate key to canonical CBOR Map.");
                        }
                        treeMap.put((rm9) ibVar.b, (rm9) ibVar.c);
                        i2++;
                    }
                    return new km9(dc9.b(treeMap));
                } catch (RuntimeException e2) {
                    e = e2;
                    throw new dm9(e);
                }
            } catch (IOException | RuntimeException e3) {
                e = e3;
            }
        } catch (IOException e4) {
            throw new dm9(e4);
        }
    }

    public static boolean I(byte[] bArr, int i2, int i3) {
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        if (i2 >= i3) {
            return true;
        }
        while (i2 < i3) {
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                i2 = i4;
            } else if (b2 < -32) {
                if (i4 >= i3 || b2 < -62) {
                    return false;
                }
                i2 += 2;
                if (bArr[i4] > -65) {
                    return false;
                }
            } else if (b2 < -16) {
                if (i4 >= i3 - 1) {
                    return false;
                }
                int i5 = i2 + 2;
                byte b3 = bArr[i4];
                if (b3 > -65) {
                    return false;
                }
                if (b2 == -32 && b3 < -96) {
                    return false;
                }
                if (b2 == -19 && b3 >= -96) {
                    return false;
                }
                i2 += 3;
                if (bArr[i5] > -65) {
                    return false;
                }
            } else {
                if (i4 >= i3 - 2) {
                    return false;
                }
                int i6 = i2 + 2;
                byte b4 = bArr[i4];
                if (b4 > -65) {
                    return false;
                }
                if ((((b4 + 112) + (b2 << 28)) >> 30) != 0) {
                    return false;
                }
                int i7 = i2 + 3;
                if (bArr[i6] > -65) {
                    return false;
                }
                i2 += 4;
                if (bArr[i7] > -65) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final void J(byte b2, long j2) throws rl9 {
        switch (b2) {
            case 24:
                if (j2 < 24) {
                    throw new rl9(fz5.m("Integer value ", " after add info could have been represented in 0 additional bytes, but used 1", j2));
                }
                return;
            case 25:
                if (j2 < 256) {
                    throw new rl9(fz5.m("Integer value ", " after add info could have been represented in 0-1 additional bytes, but used 2", j2));
                }
                return;
            case 26:
                if (j2 < 65536) {
                    throw new rl9(fz5.m("Integer value ", " after add info could have been represented in 0-2 additional bytes, but used 4", j2));
                }
                return;
            case 27:
                if (j2 < 4294967296L) {
                    throw new rl9(fz5.m("Integer value ", " after add info could have been represented in 0-4 additional bytes, but used 8", j2));
                }
                return;
            default:
                return;
        }
    }

    public static Object a(Class cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(tu0.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    /* JADX WARN: Code duplicated, block: B:50:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void b(File file, File file2) throws Throwable {
        FileDescriptor fileDescriptorOpen;
        ErrnoException e2;
        File absoluteFile = file2.getAbsoluteFile();
        if (!file.renameTo(absoluteFile)) {
            file.delete();
            y5.m(xs1.j("Failed to move temporary SBA archive to final path: ", absoluteFile.getPath()));
            return;
        }
        File parentFile = absoluteFile.getParentFile();
        if (parentFile == null) {
            y5.m(xs1.j("SBA output path has no parent: ", file2.getPath()));
            return;
        }
        if (!parentFile.isDirectory()) {
            y5.m(xs1.j("SBA output parent is not a directory: ", parentFile.getPath()));
            return;
        }
        FileDescriptor fileDescriptor = null;
        iOException = null;
        IOException iOException = null;
        try {
            fileDescriptorOpen = Os.open(parentFile.getAbsolutePath(), OsConstants.O_RDONLY, 0);
            try {
                try {
                    Os.fsync(fileDescriptorOpen);
                    if (fileDescriptorOpen != null) {
                        try {
                            Os.close(fileDescriptorOpen);
                        } catch (ErrnoException e3) {
                            iOException = new IOException(xs1.j("Failed to close SBA output parent directory: ", parentFile.getPath()), e3);
                        }
                    }
                } catch (ErrnoException e4) {
                    e2 = e4;
                    IOException iOException2 = new IOException("Failed to sync SBA output parent directory: " + parentFile.getPath(), e2);
                    if (fileDescriptorOpen != null) {
                        try {
                            Os.close(fileDescriptorOpen);
                        } catch (ErrnoException e5) {
                            yc9.a(iOException2, new IOException(xs1.j("Failed to close SBA output parent directory: ", parentFile.getPath()), e5));
                        }
                    }
                    iOException = iOException2;
                }
            } catch (Throwable th) {
                th = th;
                fileDescriptor = fileDescriptorOpen;
                if (fileDescriptor != null) {
                    try {
                        Os.close(fileDescriptor);
                    } catch (ErrnoException e6) {
                        new IOException(xs1.j("Failed to close SBA output parent directory: ", parentFile.getPath()), e6);
                    }
                }
                throw th;
            }
        } catch (ErrnoException e7) {
            fileDescriptorOpen = null;
            e2 = e7;
        } catch (Throwable th2) {
            th = th2;
            if (fileDescriptor != null) {
                Os.close(fileDescriptor);
            }
            throw th;
        }
        if (iOException != null) {
            throw iOException;
        }
    }

    public static int c(Context context, int i2) {
        return Math.round(TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics()));
    }

    public static ky6 d(File file, ArrayList arrayList, f27 f27Var, cy0 cy0Var, zv1 zv1Var, String str, long j2, ny6 ny6Var, h07 h07Var, mt3 mt3Var, boolean z) {
        char[] cArrCopyOf;
        f27Var.getClass();
        cy0Var.getClass();
        zv1Var.getClass();
        ny6Var.getClass();
        File fileG = null;
        if (j2 < 0) {
            f6.g(u48.l(j2, "SBA progress update interval must be >= 0 ms: "));
            return null;
        }
        if (zv1Var.equals(vy6.m)) {
            cArrCopyOf = null;
        } else {
            if (!(zv1Var instanceof uy6)) {
                q.j();
                return null;
            }
            char[] cArr = ((uy6) zv1Var).m;
            cArrCopyOf = Arrays.copyOf(cArr, cArr.length);
        }
        try {
            if ((zv1Var instanceof uy6) && !SbaLibaegisCryptoNative.a.isAvailable()) {
                throw new IllegalArgumentException("SBA AEGIS encryption backend is not available");
            }
            fileG = g(file);
            f(fileG, arrayList, f27Var, cy0Var, zv1Var, cArrCopyOf, str == null ? "" : str, z, ny6Var, j2, h07Var, mt3Var);
            z07 z07Var = new z07(fileG);
            try {
                ky6 ky6VarA = z07Var.A();
                z07Var.close();
                b(fileG, file);
                if (cArrCopyOf != null) {
                    Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                }
                return ky6VarA;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(z07Var, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            if (fileG != null) {
                fileG.delete();
            }
            if (cArrCopyOf == null) {
                throw th3;
            }
            Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
            throw th3;
        }
    }

    public static n60 e(PrivateKeyInfo privateKeyInfo) throws IOException {
        wv6 wv6Var;
        r45 r45Var;
        Object objB;
        ty0 ty0Var = null;
        j1VarX = null;
        j1 j1VarX = null;
        j1VarX = null;
        j1 j1VarX2 = null;
        if (privateKeyInfo == null) {
            c6.f("keyInfo array null");
            return null;
        }
        j1 j1Var = privateKeyInfo.c;
        u uVar = privateKeyInfo.e;
        ya yaVar = privateKeyInfo.b;
        f1 f1Var = yaVar.a;
        b0 b0Var = yaVar.b;
        if (f1Var.s(bw5.a)) {
            return new dw6(fi8.e(tv6.k(b0Var)), j1.x(privateKeyInfo.l()).a);
        }
        if (f1Var.s(bw5.b)) {
            byte[] bArr = j1.x(privateKeyInfo.l()).a;
            int length = bArr.length / 2;
            short[] sArr = new short[length];
            for (int i2 = 0; i2 != length; i2++) {
                int i3 = i2 * 2;
                sArr[i2] = (short) (((bArr[i3 + 1] & 255) << 8) | (bArr[i3] & 255));
            }
            return new nj5(sArr);
        }
        if (f1Var.s(tv5.a)) {
            byte[] bArr2 = j1Var.a;
            j1 p82Var = new p82(bArr2);
            if (bArr2.length != 64) {
                if (!fi8.b(bArr2) && bArr2[0] == 4) {
                    j1VarX = j1.x(bArr2);
                }
                if (j1VarX != null) {
                    p82Var = j1.x(j1VarX);
                }
            }
            byte[] bArr3 = p82Var.a;
            if (uVar == null) {
                return m24.a(ms8.t(bArr3, 4, bArr3.length));
            }
            byte[] bArrC = uVar.C();
            m24 m24VarA = m24.a(ms8.t(bArr3, 4, bArr3.length));
            n24.a(bArrC);
            m24VarA.getClass();
            return m24VarA;
        }
        if (f1Var.F(vg0.d) || f1Var.F(vg0.O)) {
            aw6 aw6Var = (aw6) fi8.p.get(f1Var);
            q1 q1VarL = privateKeyInfo.l();
            if (!(q1VarL instanceof v1)) {
                return new bw6(aw6Var, j1.x(q1VarL).a);
            }
            v1 v1VarB = v1.B(q1VarL);
            vv6 vv6Var = new vv6();
            int iC = t0.x(v1VarB.C(0)).C();
            vv6Var.a = iC;
            if (iC != 0) {
                c6.f("unrecognized version");
                return null;
            }
            vv6Var.b = ms8.k(j1.x(v1VarB.C(1)).a);
            vv6Var.c = ms8.k(j1.x(v1VarB.C(2)).a);
            if (v1VarB.size() == 4) {
                b0 b0VarC = v1VarB.C(3);
                if (b0VarC instanceof wv6) {
                    wv6Var = (wv6) b0VarC;
                } else if (b0VarC != null) {
                    v1 v1VarB2 = v1.B(b0VarC);
                    wv6 wv6Var2 = new wv6();
                    wv6Var2.a = ms8.k(j1.x(v1VarB2.C(0)).a);
                    wv6Var2.b = ms8.k(j1.x(v1VarB2.C(1)).a);
                    wv6Var = wv6Var2;
                } else {
                    wv6Var = null;
                }
                vv6Var.d = wv6Var;
            }
            wv6 wv6Var3 = vv6Var.d;
            return new bw6(aw6Var, ms8.k(vv6Var.b), ms8.k(vv6Var.c), ms8.k(wv6Var3.a), ms8.k(wv6Var3.b));
        }
        HashMap map = fi8.L;
        if (map.containsKey(f1Var)) {
            rr6 rr6Var = (rr6) map.get(f1Var);
            byte[] bArr4 = j1Var.a;
            j1 p82Var2 = new p82(bArr4);
            if (bArr4.length != rr6Var.a.getN() * 4) {
                if (!fi8.b(bArr4) && bArr4[0] == 4) {
                    j1VarX2 = j1.x(bArr4);
                }
                if (j1VarX2 != null) {
                    p82Var2 = j1.x(j1VarX2);
                }
            }
            return new sr6(rr6Var, p82Var2.a);
        }
        if (f1Var.F(vg0.b0)) {
            return new h06((g06) fi8.h.get(f1Var), j1.x(privateKeyInfo.l()).a);
        }
        if (f1Var.F(vg0.H0)) {
            q1 q1VarL2 = privateKeyInfo.l();
            if (q1VarL2 != null) {
                v1 v1VarB3 = v1.B(q1VarL2);
                ty0 ty0Var2 = new ty0();
                int iC2 = t0.x(v1VarB3.C(0)).C();
                ty0Var2.a = iC2;
                if (iC2 != 0) {
                    c6.f("unrecognized version");
                    return null;
                }
                ty0Var2.b = ms8.k(j1.x(v1VarB3.C(1)).a);
                ty0Var2.c = ms8.k(j1.x(v1VarB3.C(2)).a);
                ty0Var2.d = ms8.k(j1.x(v1VarB3.C(3)).a);
                ty0Var2.e = ms8.k(j1.x(v1VarB3.C(4)).a);
                ty0Var2.f = ms8.k(j1.x(v1VarB3.C(5)).a);
                if (v1VarB3.size() == 7) {
                    ty0Var2.k = vy0.k(v1VarB3.C(6));
                }
                ty0Var = ty0Var2;
            }
            return new uy0((sy0) fi8.n.get(f1Var), ms8.k(ty0Var.b), ms8.k(ty0Var.c), ms8.k(ty0Var.d), ms8.k(ty0Var.e), ms8.k(ty0Var.f));
        }
        if (f1Var.F(vg0.S0)) {
            byte[] bArr5 = j1.x(privateKeyInfo.l()).a;
            rs3 rs3Var = new rs3((qs3) fi8.j.get(f1Var), true);
            rs3Var.c = ms8.k(bArr5);
            return rs3Var;
        }
        if (f1Var.F(vg0.Z0)) {
            byte[] bArr6 = j1.x(privateKeyInfo.l()).a;
            cr6 cr6Var = new cr6((br6) fi8.l.get(f1Var), true);
            cr6Var.c = ms8.k(bArr6);
            return cr6Var;
        }
        if (f1Var.F(vg0.s1)) {
            return new yj5((xj5) fi8.r.get(f1Var), j1.x(privateKeyInfo.l()).a);
        }
        if (f1Var.s(pj5.L) || f1Var.s(pj5.M) || f1Var.s(pj5.N)) {
            byte[] bArr7 = j1Var.a;
            p82 p82Var3 = new p82(bArr7);
            Object objB2 = p82Var3;
            if (bArr7.length != 64) {
                q1 q1VarC = fi8.c(bArr7);
                if (q1VarC instanceof j1) {
                    objB2 = j1.x(q1VarC);
                } else if (q1VarC instanceof v1) {
                    objB2 = p82Var3;
                    objB2 = v1.B(q1VarC);
                }
            }
            objB2 = p82Var3;
            o45 o45Var = (o45) fi8.H.get(f1Var);
            if (uVar != null) {
                try {
                    q1 q1VarT = q1.t(uVar.C());
                    if (q1VarT instanceof v1) {
                        v1 v1VarB4 = v1.B(q1VarT);
                        r45Var = new r45(o45Var, j1.x(v1VarB4.C(0)).a, j1.x(v1VarB4.C(1)).a);
                    } else {
                        r45Var = new r45(o45Var, j1.x(q1VarT).a);
                    }
                } catch (Exception unused) {
                    r45Var = new r45(o45Var, uVar.C());
                }
            } else {
                r45Var = null;
            }
            if (objB2 instanceof j1) {
                return new p45(o45Var, ((j1) objB2).a, r45Var);
            }
            if (!(objB2 instanceof v1)) {
                c6.f(dj7.n(new StringBuilder("invalid "), o45Var.a, " private key"));
                return null;
            }
            v1 v1Var = (v1) objB2;
            byte[] bArr8 = j1.x(v1Var.C(0)).a;
            byte[] bArr9 = j1.x(v1Var.C(1)).a;
            p45 p45Var = new p45(o45Var, bArr8, r45Var);
            if (ms8.r(p45Var.getEncoded(), bArr9)) {
                return p45Var;
            }
            c6.f(dj7.n(new StringBuilder("inconsistent "), o45Var.a, " private key"));
            return null;
        }
        if (f1Var.F(vg0.C1)) {
            v1 v1VarB5 = v1.B(privateKeyInfo.l());
            return new vj5((uj5) fi8.v.get(f1Var), j1.x(v1VarB5.C(0)).a, j1.x(v1VarB5.C(1)).a, j1.x(v1VarB5.C(2)).a, j1.x(v1VarB5.C(3)).a);
        }
        if (f1Var.F(vg0.J1)) {
            v1 v1VarB6 = v1.B(privateKeyInfo.l());
            return new pv6((ov6) fi8.x.get(f1Var), j1.x(v1VarB6.C(0)).a, j1.x(v1VarB6.C(1)).a, j1.x(v1VarB6.C(2)).a, j1.x(v1VarB6.C(3)).a, j1.x(v1VarB6.C(4)).a);
        }
        HashMap map2 = fi8.J;
        if (map2.containsKey(f1Var)) {
            byte[] bArr10 = j1Var.a;
            p82 p82Var4 = new p82(bArr10);
            if (bArr10.length != 32) {
                q1 q1VarC2 = fi8.c(bArr10);
                if (q1VarC2 instanceof j1) {
                    objB = p82Var4;
                    objB = j1.x(q1VarC2);
                } else if (q1VarC2 instanceof v1) {
                    objB = p82Var4;
                    objB = p82Var4;
                    objB = v1.B(q1VarC2);
                }
            }
            objB = p82Var4;
            objB = p82Var4;
            objB = p82Var4;
            h45 h45Var = (h45) map2.get(f1Var);
            j45 j45VarB = uVar != null ? fb6.b(h45Var, uVar) : null;
            if (objB instanceof j1) {
                return new i45(h45Var, ((j1) objB).a, j45VarB);
            }
            if (!(objB instanceof v1)) {
                c6.f(dj7.n(new StringBuilder("invalid "), h45Var.b, " private key"));
                return null;
            }
            v1 v1Var2 = (v1) objB;
            byte[] bArr11 = j1.x(v1Var2.C(0)).a;
            byte[] bArr12 = j1.x(v1Var2.C(1)).a;
            i45 i45Var = new i45(h45Var, bArr11, j45VarB);
            if (ms8.r(i45Var.getEncoded(), bArr12)) {
                return i45Var;
            }
            c6.f(dj7.n(new StringBuilder("inconsistent "), h45Var.b, " private key"));
            return null;
        }
        if (f1Var.s(vg0.t0) || f1Var.s(vg0.u0) || f1Var.s(vg0.v0)) {
            q1 q1VarL3 = privateKeyInfo.l();
            ol2 ol2Var = (ol2) fi8.z.get(f1Var);
            if (!(q1VarL3 instanceof v1)) {
                if (q1VarL3 instanceof p82) {
                    byte[] bArr13 = j1.x(q1VarL3).a;
                    return uVar != null ? new pl2(ol2Var, bArr13, ab6.b(ol2Var, uVar)) : new pl2(ol2Var, bArr13, null);
                }
                y5.m("not supported");
                return null;
            }
            v1 v1VarB7 = v1.B(q1VarL3);
            int iC3 = t0.x(v1VarB7.C(0)).C();
            if (iC3 != 0) {
                y5.m(fz5.j(iC3, "unknown private key version: "));
                return null;
            }
            if (uVar != null) {
                return new pl2(ol2Var, u.B(v1VarB7.C(1)).C(), u.B(v1VarB7.C(2)).C(), u.B(v1VarB7.C(3)).C(), u.B(v1VarB7.C(4)).C(), u.B(v1VarB7.C(5)).C(), u.B(v1VarB7.C(6)).C(), ms8.k(ab6.b(ol2Var, uVar).d));
            }
            return new pl2(ol2Var, u.B(v1VarB7.C(1)).C(), u.B(v1VarB7.C(2)).C(), u.B(v1VarB7.C(3)).C(), u.B(v1VarB7.C(4)).C(), u.B(v1VarB7.C(5)).C(), u.B(v1VarB7.C(6)).C(), null);
        }
        if (f1Var.s(vg0.r0) || f1Var.s(vg0.s0)) {
            l33 l33VarK = l33.k(privateKeyInfo.l());
            return new m33((k33) fi8.t.get(f1Var), ms8.k(l33VarK.b), ms8.k(l33VarK.c), ms8.k(l33VarK.d), l33VarK.e.a);
        }
        if (f1Var.s(vg0.p0) || f1Var.s(vg0.q0)) {
            l33 l33VarK2 = l33.k(privateKeyInfo.l());
            return new m33((k33) fi8.t.get(f1Var), ms8.k(l33VarK2.b), ms8.k(l33VarK2.c), ms8.k(l33VarK2.d), l33VarK2.e.a);
        }
        if (f1Var.F(vg0.Q1)) {
            byte[] bArr14 = j1.x(privateKeyInfo.l()).a;
            fi0 fi0Var = (fi0) fi8.B.get(f1Var);
            int i4 = fi0Var.b;
            int i5 = fi0Var.b;
            byte[] bArrT = ms8.t(bArr14, 0, (i4 + 7) / 8);
            byte[] bArrT2 = ms8.t(bArr14, (i5 + 7) / 8, ((i5 + 7) / 8) * 2);
            byte[] bArrT3 = ms8.t(bArr14, ((i5 + 7) / 8) * 2, bArr14.length);
            gi0 gi0Var = new gi0(fi0Var, true);
            gi0Var.c = ms8.k(bArrT);
            gi0Var.d = ms8.k(bArrT2);
            gi0Var.e = ms8.k(bArrT3);
            return gi0Var;
        }
        if (f1Var.F(vg0.U1)) {
            return new k24((j24) fi8.D.get(f1Var), j1.x(privateKeyInfo.l()).a);
        }
        if (f1Var.F(vg0.z0)) {
            return new se6((re6) fi8.F.get(f1Var), j1.x(privateKeyInfo.l()).a);
        }
        if (f1Var.s(bw5.c)) {
            hx8 hx8VarK = hx8.k(b0Var);
            f1 f1Var2 = hx8VarK.c.a;
            q1 q1VarL4 = privateKeyInfo.l();
            sx8 sx8Var = q1VarL4 != null ? new sx8(v1.B(q1VarL4)) : null;
            try {
                vg6 vg6Var = new vg6(new rx8(hx8VarK.b, fi8.a(f1Var2)));
                int i6 = sx8Var.b;
                byte[] bArr15 = sx8Var.n;
                vg6Var.a = i6;
                vg6Var.d = jd4.g(ms8.k(sx8Var.c));
                vg6Var.e = jd4.g(ms8.k(sx8Var.d));
                vg6Var.f = jd4.g(ms8.k(sx8Var.e));
                vg6Var.g = jd4.g(ms8.k(sx8Var.f));
                if (sx8Var.a != 0) {
                    vg6Var.b = sx8Var.k;
                }
                if (ms8.k(bArr15) != null) {
                    lh0 lh0Var = (lh0) jd4.l(ms8.k(bArr15), lh0.class);
                    lh0Var.getClass();
                    vg6Var.h = new lh0(lh0Var, f1Var2);
                }
                return new tx8(vg6Var);
            } catch (ClassNotFoundException e2) {
                c6.k(e2.getMessage(), "ClassNotFoundException processing BDS state: ");
                return null;
            }
        }
        if (!f1Var.s(bw5.d)) {
            if (f1Var.F(vg0.Y1)) {
                return new n95((m95) fi8.N.get(f1Var), j1.x(privateKeyInfo.l()).a);
            }
            if (f1Var.F(vg0.d2)) {
                return new ui7((ti7) fi8.P.get(f1Var), j1.x(privateKeyInfo.l()).a);
            }
            g84.h("algorithm identifier in private key not recognised");
            return null;
        }
        jx8 jx8VarK = jx8.k(b0Var);
        f1 f1Var3 = jx8VarK.d.a;
        try {
            q1 q1VarL5 = privateKeyInfo.l();
            lx8 lx8Var = q1VarL5 != null ? new lx8(v1.B(q1VarL5)) : null;
            int i7 = jx8VarK.b;
            mx8 mx8Var = new mx8(new kx8(i7, jx8VarK.c, fi8.a(f1Var3)));
            long j2 = lx8Var.b;
            byte[] bArr16 = lx8Var.n;
            mx8Var.b = j2;
            mx8Var.d = jd4.g(ms8.k(lx8Var.d));
            mx8Var.e = jd4.g(ms8.k(lx8Var.e));
            mx8Var.f = jd4.g(ms8.k(lx8Var.f));
            mx8Var.g = jd4.g(ms8.k(lx8Var.k));
            if (lx8Var.a != 0) {
                mx8Var.c = lx8Var.c;
            }
            if (ms8.k(bArr16) != null) {
                mh0 mh0VarA = ((mh0) jd4.l(ms8.k(bArr16), mh0.class)).a(f1Var3);
                if (mh0VarA.b == 0) {
                    mx8Var.h = new mh0(mh0VarA, (1 << i7) - 1);
                } else {
                    mx8Var.h = mh0VarA;
                }
            }
            return new nx8(mx8Var);
        } catch (ClassNotFoundException e3) {
            c6.k(e3.getMessage(), "ClassNotFoundException processing BDS state: ");
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:177:0x0330  */
    /* JADX WARN: Code duplicated, block: B:178:0x0336  */
    /* JADX WARN: Code duplicated, block: B:180:0x0339  */
    public static void f(File file, final ArrayList arrayList, f27 f27Var, final cy0 cy0Var, zv1 zv1Var, char[] cArr, String str, boolean z, ny6 ny6Var, long j2, h07 h07Var, mt3 mt3Var) throws Throwable {
        int i2;
        int i3;
        byte[] bArrA;
        byte[] bArrD;
        byte b2;
        long jElapsedRealtime;
        final cy6 cy6Var;
        File file2;
        int i4;
        int i5;
        int i6;
        int i7;
        e27 e27Var;
        byte[] bytes = str.getBytes(f51.a);
        bytes.getClass();
        if (bytes.length > 1048576) {
            f6.g(xs1.h(bytes.length, "SBA archive metadata too large: ", " bytes"));
            return;
        }
        int size = arrayList.size();
        String[] strArr = new String[size];
        int i8 = 0;
        while (i8 < size) {
            String str2 = ((ey6) arrayList.get(i8)).a;
            iz1.A(str2);
            byte[] bytes2 = str2.getBytes(f51.a);
            bytes2.getClass();
            String[] strArr2 = strArr;
            if (bytes2.length > 65535) {
                f6.g(xs1.h(bytes2.length, "Entry name too large: ", " bytes"));
                return;
            } else {
                strArr2[i8] = str2;
                i8++;
                strArr = strArr2;
            }
        }
        String[] strArr3 = strArr;
        if (x50.A0(strArr3).size() != size) {
            c6.f("Duplicate SBA entry name");
            return;
        }
        int size2 = arrayList.size();
        byte[][] bArr = new byte[size2][];
        for (int i9 = 0; i9 < size2; i9++) {
            byte[] bytes3 = strArr3[i9].getBytes(f51.a);
            bytes3.getClass();
            bArr[i9] = bytes3;
        }
        int size3 = arrayList.size();
        String[] strArr4 = new String[size3];
        for (int i10 = 0; i10 < size3; i10++) {
            File file3 = ((ey6) arrayList.get(i10)).b;
            if (!z && !file3.exists()) {
                f6.g(xs1.j("Source path does not exist: ", file3.getPath()));
                return;
            }
            strArr4[i10] = file3.getAbsolutePath();
        }
        int size4 = arrayList.size();
        int[] iArr = new int[size4];
        int i11 = 0;
        while (i11 < size4) {
            boolean z2 = ((ey6) arrayList.get(i11)).c;
            f27Var.getClass();
            int i12 = size4;
            int i13 = b07.a[f27Var.ordinal()];
            if (i13 == 1) {
                e27Var = new e27(z2, false, false, z);
            } else {
                if (i13 != 2 && i13 != 3) {
                    q.j();
                    return;
                }
                e27Var = new e27(z2, true, true, z);
            }
            int i14 = e27Var.a ? 8 : 0;
            if (e27Var.b) {
                i14 |= 1;
            }
            if (e27Var.c) {
                i14 |= 4;
            }
            if (e27Var.d) {
                i14 |= 16;
            }
            iArr[i11] = i14;
            i11++;
            size4 = i12;
        }
        int size5 = arrayList.size();
        String[][] strArr5 = new String[size5][];
        int i15 = 0;
        while (i15 < size5) {
            List list = ((ey6) arrayList.get(i15)).d;
            int i16 = size5;
            strArr5[i15] = list != null ? (String[]) list.toArray(new String[0]) : null;
            i15++;
            size5 = i16;
        }
        int size6 = arrayList.size();
        String[][] strArr6 = new String[size6][];
        int i17 = 0;
        while (i17 < size6) {
            List list2 = ((ey6) arrayList.get(i17)).e;
            int i18 = size6;
            String[][] strArr7 = strArr5;
            strArr6[i17] = list2 != null ? (String[]) list2.toArray(new String[0]) : null;
            i17++;
            size6 = i18;
            strArr5 = strArr7;
        }
        String[][] strArr8 = strArr5;
        oy6 oy6Var = oy6.j;
        if (pe4.d(cy0Var, oy6Var)) {
            i2 = 0;
        } else {
            if (!(cy0Var instanceof py6)) {
                q.j();
                return;
            }
            i2 = 1;
        }
        if (pe4.d(cy0Var, oy6Var)) {
            i3 = 0;
        } else {
            if (!(cy0Var instanceof py6)) {
                q.j();
                return;
            }
            i3 = ((py6) cy0Var).j;
        }
        if (pe4.d(zv1Var, vy6.m)) {
            jElapsedRealtime = 0;
            cy6Var = null;
        } else {
            if (!(zv1Var instanceof uy6)) {
                q.j();
                return;
            }
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            if (cArr == null) {
                c6.f("Required value was null.");
                return;
            }
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[16];
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextBytes(bArr2);
            secureRandom.nextBytes(bArr3);
            try {
                bArrA = sy6.a(cArr, bArr2, 3, 16384, 1, 32);
                try {
                    bArrD = sy6.d(l27.Aegis256, bArrA, bArr2, bArr3);
                    try {
                        cy6 cy6Var2 = new cy6(bArrA, bArrD, bArr2, bArr3);
                        jElapsedRealtime = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        cy6Var = cy6Var2;
                    } catch (Throwable th) {
                        th = th;
                        if (bArrA != null) {
                            b2 = 0;
                            Arrays.fill(bArrA, 0, bArrA.length, (byte) 0);
                        } else {
                            b2 = 0;
                        }
                        if (bArrD != null) {
                            Arrays.fill(bArrD, (int) b2, bArrD.length, b2);
                        }
                        Arrays.fill(bArr2, (int) b2, 16, b2);
                        Arrays.fill(bArr3, (int) b2, 16, b2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bArrD = null;
                    if (bArrA != null) {
                        b2 = 0;
                        Arrays.fill(bArrA, 0, bArrA.length, (byte) 0);
                    } else {
                        b2 = 0;
                    }
                    if (bArrD != null) {
                        Arrays.fill(bArrD, (int) b2, bArrD.length, b2);
                    }
                    Arrays.fill(bArr2, (int) b2, 16, b2);
                    Arrays.fill(bArr3, (int) b2, 16, b2);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bArr2 = bArr2;
                bArrA = null;
            }
        }
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        x13.S(ny6Var, "before native SBA create");
        h07 g27Var = (h07Var == null || j2 <= 0) ? h07Var : new g27(h07Var, j2);
        i07 i07Var = i07.Create;
        l07 l07Var = l07.Entry;
        x13.l(g27Var, i07Var, l07Var, m07.Started, null, 0L, null, 56);
        h07 h07Var2 = g27Var;
        try {
            try {
                SbaArchiveNative sbaArchiveNative = SbaArchiveNative.a;
                int i19 = cy6Var != null ? 2 : 1;
                String absolutePath = file.getAbsolutePath();
                absolutePath.getClass();
                if (cy6Var != null) {
                    i5 = 4;
                    i4 = 1;
                } else {
                    i4 = 1;
                    i5 = 0;
                }
                int i20 = i4;
                if (cy6Var == null) {
                    i4 = 0;
                }
                if (cy6Var != null) {
                    i7 = 3;
                    i6 = i20;
                } else {
                    i6 = i20;
                    i7 = 0;
                }
                int i21 = cy6Var != null ? 16384 : 0;
                int i22 = cy6Var != null ? i6 : 0;
                int i23 = i6;
                int i24 = cy6Var != null ? 1048576 : 0;
                if (cy6Var == null) {
                    i23 = 0;
                }
                long[] jArrCreateArchive = sbaArchiveNative.createArchive(i19, absolutePath, bytes, bArr, strArr4, iArr, strArr8, strArr6, i2, i3, i5, i4, i7, i21, i22, i24, i23, cy6Var != null ? 32 : 0, cy6Var != null ? (byte[]) cy6Var.b : null, cy6Var != null ? (byte[]) cy6Var.c : null, cy6Var != null ? (byte[]) cy6Var.d : null, cy6Var != null ? (byte[]) cy6Var.e : null, x13.Q(h07Var2, ny6Var, new rt3() { // from class: by6
                    @Override // defpackage.rt3
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        l07 l07Var2;
                        h07 h07Var3 = (h07) obj;
                        long jLongValue = ((Long) obj2).longValue();
                        ((Long) obj3).getClass();
                        h07Var3.getClass();
                        if (jLongValue >= 0) {
                            i07 i07Var2 = i07.Create;
                            if (cy6Var != null) {
                                l07Var2 = l07.Encryption;
                            } else {
                                l07Var2 = pe4.d(cy0Var, oy6.j) ? l07.Tar : l07.Compression;
                            }
                            l07 l07Var3 = l07Var2;
                            m07 m07Var = m07.Progress;
                            ey6 ey6Var = (ey6) el1.l1(arrayList);
                            x13.k(h07Var3, i07Var2, l07Var3, m07Var, ey6Var != null ? ey6Var.a : null, jLongValue, null);
                        }
                        return be8.a;
                    }
                }));
                if (cy6Var != null) {
                    file2 = file;
                    try {
                        cy6Var.h(file2);
                    } catch (IOException e2) {
                        e = e2;
                        throw w13.t(e, "Failed to create native SBA archive '" + file2.getPath() + "'");
                    }
                } else {
                    file2 = file;
                }
                mt3Var.invoke(A(jArrCreateArchive, jElapsedRealtime));
                if (cy6Var != null) {
                    cy6Var.e();
                }
                m07 m07Var = m07.Completed;
                x13.l(h07Var2, i07Var, l07Var, m07Var, null, file2.length(), Long.valueOf(file2.length()), 8);
                x13.l(h07Var2, i07Var, l07.Finalize, m07Var, null, 0L, null, 56);
            } catch (Throwable th4) {
                if (cy6Var != null) {
                    cy6Var.e();
                }
                throw th4;
            }
        } catch (IOException e3) {
            e = e3;
            file2 = file;
        }
    }

    public static File g(File file) throws IOException {
        File absoluteFile = file.getAbsoluteFile();
        File parentFile = absoluteFile.getParentFile();
        if (parentFile == null) {
            y5.m(xs1.j("SBA output path has no parent: ", file.getPath()));
            return null;
        }
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            y5.m(xs1.j("Failed to create SBA output parent directory: ", parentFile.getPath()));
            return null;
        }
        if (!parentFile.isDirectory()) {
            y5.m(xs1.j("SBA output parent is not a directory: ", parentFile.getPath()));
            return null;
        }
        for (int i2 = 0; i2 < 100; i2++) {
            String name = absoluteFile.getName();
            long jNanoTime = System.nanoTime();
            int iIdentityHashCode = System.identityHashCode(Thread.currentThread());
            StringBuilder sbO = u48.o(".", name, jNanoTime, ".tmp-");
            sbO.append("-");
            sbO.append(iIdentityHashCode);
            sbO.append("-");
            sbO.append(i2);
            File file2 = new File(parentFile, sbO.toString());
            if (file2.createNewFile()) {
                return file2;
            }
        }
        y5.m(xs1.j("Failed to allocate temporary SBA output file beside ", absoluteFile.getPath()));
        return null;
    }

    public static boolean h(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int iIndexOfKey;
        WeakHashMap weakHashMap = dl8.a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList2 = cl8.d;
            cl8 cl8Var = (cl8) view.getTag(org.swiftapps.swiftbackup.R.id.tag_unhandled_key_event_manager);
            WeakReference weakReference = null;
            if (cl8Var == null) {
                cl8Var = new cl8();
                cl8Var.a = null;
                cl8Var.b = null;
                cl8Var.c = null;
                view.setTag(org.swiftapps.swiftbackup.R.id.tag_unhandled_key_event_manager, cl8Var);
            }
            WeakReference weakReference2 = cl8Var.c;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                cl8Var.c = new WeakReference(keyEvent);
                if (cl8Var.b == null) {
                    cl8Var.b = new SparseArray();
                }
                SparseArray sparseArray = cl8Var.b;
                if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = (WeakReference) sparseArray.valueAt(iIndexOfKey);
                    sparseArray.removeAt(iIndexOfKey);
                }
                if (weakReference == null) {
                    weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = (View) weakReference.get();
                    if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(org.swiftapps.swiftbackup.R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
                        return true;
                    }
                    arrayList.get(size).getClass();
                    e6.d();
                    return false;
                }
            }
        }
        return false;
    }

    public static boolean i(mo4 mo4Var, View view, Window.Callback callback, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener;
        boolean zBooleanValue = false;
        if (mo4Var != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                return mo4Var.superDispatchKeyEvent(keyEvent);
            }
            if (callback instanceof Activity) {
                Activity activity = (Activity) callback;
                activity.onUserInteraction();
                Window window = activity.getWindow();
                if (window.hasFeature(8)) {
                    ActionBar actionBar = activity.getActionBar();
                    if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                        if (!j) {
                            try {
                                k = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                            } catch (NoSuchMethodException unused) {
                            }
                            j = true;
                        }
                        Method method = k;
                        if (method != null) {
                            try {
                                Object objInvoke = method.invoke(actionBar, keyEvent);
                                if (objInvoke != null) {
                                    zBooleanValue = ((Boolean) objInvoke).booleanValue();
                                }
                            } catch (IllegalAccessException | InvocationTargetException unused2) {
                            }
                        }
                        if (zBooleanValue) {
                            return true;
                        }
                    }
                }
                if (window.superDispatchKeyEvent(keyEvent)) {
                    return true;
                }
                View decorView = window.getDecorView();
                if (dl8.c(decorView, keyEvent)) {
                    return true;
                }
                return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
            }
            if (callback instanceof Dialog) {
                Dialog dialog = (Dialog) callback;
                if (!l) {
                    try {
                        Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                        m = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException unused3) {
                    }
                    l = true;
                }
                Field field = m;
                if (field != null) {
                    try {
                        onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
                    } catch (IllegalAccessException unused4) {
                        onKeyListener = null;
                    }
                } else {
                    onKeyListener = null;
                }
                if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                    return true;
                }
                Window window2 = dialog.getWindow();
                if (window2.superDispatchKeyEvent(keyEvent)) {
                    return true;
                }
                View decorView2 = window2.getDecorView();
                if (dl8.c(decorView2, keyEvent)) {
                    return true;
                }
                return keyEvent.dispatch(dialog, decorView2 != null ? decorView2.getKeyDispatcherState() : null, dialog);
            }
            if ((view != null && dl8.c(view, keyEvent)) || mo4Var.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
        }
        return false;
    }

    public static int j(Context context, float f2) {
        return (int) TypedValue.applyDimension(1, f2, context.getResources().getDisplayMetrics());
    }

    public static void k(File file, File file2, String str, f27 f27Var, char[] cArr, List list, long j2, ny6 ny6Var, h07 h07Var, mt3 mt3Var, boolean z) {
        f27Var.getClass();
        ny6Var.getClass();
        char[] cArrCopyOf = cArr != null ? Arrays.copyOf(cArr, cArr.length) : null;
        try {
            z07 z07Var = new z07(file, new b17(f27Var, cArrCopyOf, h07Var, j2, ny6Var, z));
            if (str == null) {
                try {
                    ArrayList arrayListJ = z07Var.j();
                    if (arrayListJ.size() != 1) {
                        throw new qz6("SBA entryName is required when archive contains " + arrayListJ.size() + " entries: " + file.getPath(), null);
                    }
                    str = ((xy6) el1.k1(arrayListJ)).a;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(z07Var, th);
                        throw th2;
                    }
                }
            }
            mt3Var.invoke(z07Var.h(str, file2, list));
            z07Var.close();
            if (cArrCopyOf != null) {
                Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
            }
        } catch (Throwable th3) {
            if (cArrCopyOf == null) {
                throw th3;
            }
            Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
            throw th3;
        }
    }

    public static long l(ZipFile zipFile, ZipEntry zipEntry, q63 q63Var) throws IOException {
        long j2 = 0;
        if (zipEntry.getSize() > 4294967296L) {
            f6.g(xs1.j("APKS archive entry is too large: ", zipEntry.getName()));
            return 0L;
        }
        byte[] bArr = new byte[262144];
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        try {
            boolean z = q63.d;
            OutputStream outputStreamF = q63Var.F(true);
            while (true) {
                try {
                    int i2 = inputStream.read(bArr);
                    if (i2 < 0) {
                        outputStreamF.close();
                        inputStream.close();
                        return j2;
                    }
                    j2 += (long) i2;
                    if (j2 > 4294967296L) {
                        throw new IllegalArgumentException(("APKS archive entry is too large: " + zipEntry.getName()).toString());
                    }
                    outputStreamF.write(bArr, 0, i2);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(outputStreamF, th);
                        throw th2;
                    }
                }
                try {
                    throw th;
                } catch (Throwable th3) {
                    rs9.c(inputStream, th);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public static Field m(Class cls, String str) {
        boolean z;
        int i2 = jq7.a;
        int length = str.length();
        if (length == 0) {
            z = true;
            break;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                z = true;
                break;
            }
            if (!Character.isWhitespace(str.charAt(i3))) {
                z = false;
                break;
            }
            i3++;
        }
        Object[] objArr = new Object[0];
        if (z) {
            throw new IllegalArgumentException(od2.o(objArr) ? "The field name must not be blank/empty" : String.format("The field name must not be blank/empty", objArr));
        }
        for (Class superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!(declaredField != null && Modifier.isPublic(declaredField.getModifiers()))) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        HashMap map = x81.a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        x81.a(cls, linkedHashSet);
        Iterator it = new ArrayList(linkedHashSet).iterator();
        Field field = null;
        while (it.hasNext()) {
            try {
                Field field2 = ((Class) it.next()).getField(str);
                String str2 = "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.";
                Object[] objArr2 = {str, cls};
                if (!(field == null)) {
                    if (!od2.o(objArr2)) {
                        str2 = String.format("Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.", objArr2);
                    }
                    throw new IllegalArgumentException(str2);
                }
                field = field2;
            } catch (NoSuchFieldException unused2) {
            }
        }
        return field;
    }

    public static boolean n(String str) {
        Locale locale = Locale.US;
        String strQ = dj7.q(locale, str, locale);
        return strQ.equals("meta.sai_v2.json") || strQ.equals("meta.swiftbackup_v1.json");
    }

    public static boolean o(char c2) {
        return c2 == ' ' || c2 == '\t' || c2 == '\r' || c2 == '\n';
    }

    public static String p(XmlPullParser xmlPullParser) {
        String name = xmlPullParser.getName();
        name.getClass();
        int iG0 = nq7.g0(':', 0, 6, name);
        return iG0 == -1 ? name : name.substring(iG0 + 1, name.length());
    }

    public static Long q(String str) {
        Object bn6Var;
        Object bn6Var2;
        Object bn6Var3;
        String string = nq7.H0(str).toString();
        if (string.length() == 0) {
            return null;
        }
        try {
            bn6Var = Long.valueOf(Instant.parse(string).toEpochMilli());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (en6.a(bn6Var) != null) {
            try {
                bn6Var2 = Long.valueOf(OffsetDateTime.parse(string).toInstant().toEpochMilli());
            } catch (Throwable th2) {
                bn6Var2 = new bn6(th2);
            }
            if (en6.a(bn6Var2) != null) {
                try {
                    bn6Var3 = Long.valueOf(ZonedDateTime.parse(string, DateTimeFormatter.RFC_1123_DATE_TIME).toInstant().toEpochMilli());
                } catch (Throwable th3) {
                    bn6Var3 = new bn6(th3);
                }
                bn6Var2 = (Long) (bn6Var3 instanceof bn6 ? null : bn6Var3);
            }
            bn6Var = (Long) bn6Var2;
        }
        return (Long) bn6Var;
    }

    public static ni1 r(String str) throws XmlPullParserException {
        str.getClass();
        Long lValueOf = null;
        if (nq7.j0(str)) {
            return new ni1(null, null);
        }
        XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
        xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        boolean z = false;
        Long lY = null;
        Long lY2 = null;
        while (xmlPullParserNewPullParser.next() != 1) {
            int eventType = xmlPullParserNewPullParser.getEventType();
            if (eventType == 2) {
                String strP = p(xmlPullParserNewPullParser);
                int iHashCode = strP.hashCode();
                if (iHashCode != -1189760238) {
                    if (iHashCode != -197971760) {
                        if (iHashCode == 3449699 && strP.equals("prop")) {
                            z = true;
                        }
                    } else if (strP.equals("quota-used-bytes") && z && ((lY = uq7.Y(t(xmlPullParserNewPullParser))) == null || lY.longValue() < 0)) {
                        lY = null;
                    }
                } else if (strP.equals("quota-available-bytes") && z && ((lY2 = uq7.Y(t(xmlPullParserNewPullParser))) == null || lY2.longValue() < 0)) {
                    lY2 = null;
                }
            } else if (eventType == 3 && p(xmlPullParserNewPullParser).equals("prop")) {
                z = false;
            }
        }
        if (lY != null && lY2 != null) {
            lValueOf = Long.valueOf(lY2.longValue() + lY.longValue());
        }
        return new ni1(lY, lValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static List s(String str) throws XmlPullParserException, UnsupportedEncodingException {
        qq8 qq8Var;
        String str2;
        String str3;
        str.getClass();
        if (nq7.j0(str)) {
            return ov2.a;
        }
        XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
        xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        wq8 wq8Var = null;
        xq8 xq8Var = null;
        while (xmlPullParserNewPullParser.next() != 1) {
            int eventType = xmlPullParserNewPullParser.getEventType();
            if (eventType == 2) {
                String strP = p(xmlPullParserNewPullParser);
                switch (strP.hashCode()) {
                    case -1741312354:
                        if (strP.equals("collection") && z && wq8Var != null) {
                            wq8Var.b = true;
                        }
                        break;
                    case -1541341943:
                        if (strP.equals("getcontentlength") && z && wq8Var != null) {
                            wq8Var.c = uq7.Y(t(xmlPullParserNewPullParser));
                        }
                        break;
                    case -992722889:
                        if (strP.equals("propstat")) {
                            wq8Var = new wq8();
                            wq8Var.a = null;
                            wq8Var.b = false;
                            wq8Var.c = null;
                            wq8Var.d = null;
                            wq8Var.e = null;
                        }
                        break;
                    case -938418763:
                        if (strP.equals("getlastmodified") && z && wq8Var != null) {
                            wq8Var.e = q(t(xmlPullParserNewPullParser));
                        }
                        break;
                    case -892481550:
                        if (strP.equals("status") && wq8Var != null) {
                            wq8Var.a = t(xmlPullParserNewPullParser);
                        }
                        break;
                    case -340323263:
                        if (strP.equals("response")) {
                            xq8Var = new xq8();
                            xq8Var.a = null;
                            xq8Var.b = false;
                            xq8Var.c = null;
                            xq8Var.d = null;
                            xq8Var.e = null;
                        }
                        break;
                    case 3211051:
                        if (strP.equals("href") && xq8Var != null) {
                            xq8Var.a = t(xmlPullParserNewPullParser);
                        }
                        break;
                    case 3449699:
                        if (strP.equals("prop")) {
                            z = true;
                        }
                        break;
                    case 1586485005:
                        if (strP.equals("creationdate") && z && wq8Var != null) {
                            wq8Var.d = q(t(xmlPullParserNewPullParser));
                        }
                        break;
                }
            } else if (eventType == 3) {
                String strP2 = p(xmlPullParserNewPullParser);
                int iHashCode = strP2.hashCode();
                if (iHashCode != -992722889) {
                    if (iHashCode != -340323263) {
                        if (iHashCode == 3449699 && strP2.equals("prop")) {
                            z = false;
                        }
                    } else if (strP2.equals("response")) {
                        if (xq8Var != null) {
                            String str4 = xq8Var.a;
                            if (str4 == null) {
                                qq8Var = null;
                            } else {
                                String str5 = !nq7.j0(str4) ? str4 : null;
                                if (str5 == null) {
                                    qq8Var = null;
                                } else {
                                    String strK0 = nq7.K0(nq7.D0(str5, '?'), '/');
                                    String strB0 = nq7.B0(strK0, '/');
                                    if (strB0.length() <= 0) {
                                        strB0 = null;
                                    }
                                    if (strB0 != null) {
                                        strK0 = strB0;
                                    }
                                    String strDecode = URLDecoder.decode(uq7.T(strK0, "+", "%2B"), StandardCharsets.UTF_8.name());
                                    strDecode.getClass();
                                    qq8Var = new qq8(str5, strDecode, xq8Var.b, xq8Var.c, xq8Var.d, xq8Var.e);
                                }
                            }
                            if (qq8Var != null) {
                                arrayList.add(qq8Var);
                            }
                        }
                        xq8Var = null;
                    }
                } else if (strP2.equals("propstat")) {
                    if (wq8Var != null && (((str2 = wq8Var.a) == null || nq7.Z(str2, " 200 ", false) || ((str3 = wq8Var.a) != null && uq7.O(str3, " 200 OK", false))) && xq8Var != null)) {
                        xq8Var.b = xq8Var.b || wq8Var.b;
                        Long l2 = wq8Var.c;
                        if (l2 == null) {
                            l2 = xq8Var.c;
                        }
                        xq8Var.c = l2;
                        Long l3 = wq8Var.d;
                        if (l3 == null) {
                            l3 = xq8Var.d;
                        }
                        xq8Var.d = l3;
                        Long l4 = wq8Var.e;
                        if (l4 == null) {
                            l4 = xq8Var.e;
                        }
                        xq8Var.e = l4;
                    }
                    wq8Var = null;
                }
            }
        }
        return arrayList;
    }

    public static String t(XmlPullParser xmlPullParser) throws XmlPullParserException {
        int depth = xmlPullParser.getDepth();
        StringBuilder sb = new StringBuilder();
        while (xmlPullParser.next() != 1) {
            int eventType = xmlPullParser.getEventType();
            if (eventType != 3) {
                if (eventType == 4 || eventType == 5) {
                    sb.append(xmlPullParser.getText());
                }
            } else if (xmlPullParser.getDepth() == depth) {
                return nq7.H0(sb.toString()).toString();
            }
        }
        return nq7.H0(sb.toString()).toString();
    }

    public static Object u(String str) {
        Field fieldM = m(ActivityManager.class, str);
        final Object[] objArr = {str, ActivityManager.class};
        Objects.requireNonNull(fieldM, (Supplier<String>) new Supplier() { // from class: ri8
            @Override // java.util.function.Supplier
            public final Object get() {
                Object[] objArr2 = objArr;
                return od2.o(objArr2) ? "Cannot locate field '%s' on %s" : String.format("Cannot locate field '%s' on %s", objArr2);
            }
        });
        boolean zIsStatic = Modifier.isStatic(fieldM.getModifiers());
        Object[] objArr2 = {fieldM.getName()};
        if (!zIsStatic) {
            throw new IllegalArgumentException(od2.o(objArr2) ? "The field '%s' is not static" : String.format("The field '%s' is not static", objArr2));
        }
        if (!fieldM.isAccessible() && !fieldM.isAccessible() && Modifier.isPublic(fieldM.getModifiers()) && (fieldM.getDeclaringClass().getModifiers() & 7) == 0) {
            try {
                fieldM.setAccessible(true);
            } catch (SecurityException unused) {
            }
        }
        return fieldM.get(null);
    }

    public static int v(float f2) {
        if (!Float.isNaN(f2)) {
            return Math.round(f2);
        }
        c6.f("Cannot round NaN value.");
        return 0;
    }

    public static long w(double d2) {
        if (!Double.isNaN(d2)) {
            return Math.round(d2);
        }
        c6.f("Cannot round NaN value.");
        return 0L;
    }

    public static Activity x(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return x(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void y(il0 il0Var, final String str, final mt3 mt3Var) {
        String string;
        String string2;
        if (!V.INSTANCE.getA()) {
            int i2 = PremiumActivity.V;
            rs9.u(il0Var);
            return;
        }
        final j75 j75Var = new j75(il0Var);
        TextInputEditText textInputEditText = (TextInputEditText) j75Var.d;
        if (str == null || (string2 = nq7.H0(str).toString()) == null || (string = nq7.H0(nq7.G0(30, string2)).toString()) == null || string.length() <= 0 || nq7.j0(string)) {
            string = null;
        }
        TextInputLayout textInputLayout = (TextInputLayout) j75Var.c;
        textInputLayout.setCounterMaxLength(30);
        textInputLayout.setEndIconMode(2);
        textInputEditText.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(30)});
        if (string != null && string.length() != 0) {
            textInputEditText.setText(string);
        }
        ((TextView) j75Var.b).setText((string == null || string.length() == 0) ? org.swiftapps.swiftbackup.R.string.add_note : org.swiftapps.swiftbackup.R.string.edit_note);
        s35 s35Var = new s35(il0Var, org.swiftapps.swiftbackup.R.style.M3AlertDialogTheme, new hv1(il0Var, org.swiftapps.swiftbackup.R.style.M3AlertDialogTheme), null);
        ((ra) s35Var.b).s = (NestedScrollView) ((ke) j75Var.a).b;
        final wa waVarM = s35Var.m();
        ((MaterialButton) j75Var.e).setOnClickListener(new View.OnClickListener() { // from class: ko5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j75 j75Var2 = j75Var;
                if (!pe4.d(str, j75Var2.a())) {
                    mt3Var.invoke(j75Var2.a());
                }
                sz8.m(waVarM);
            }
        });
        j75.b(str, j75Var);
        textInputEditText.addTextChangedListener(new m52(1, str, j75Var));
        ((MaterialButton) j75Var.f).setOnClickListener(new m51(4, mt3Var, waVarM));
        ((ImageView) j75Var.k).setOnClickListener(new h00(waVarM, 8));
    }

    public static l22 z(int i2, c33 c33Var) {
        return new l22(new f36(i2), c33Var, g, 2, false);
    }
}
