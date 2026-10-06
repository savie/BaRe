package defpackage;

import android.content.Context;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spanned;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.jcraft.jsch.SftpATTRS;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.math.RoundingMode;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yc9 {
    public static volatile ve9 a;
    public static final byte[] b = {83, 105, 103, 69, 100, 52, 52, 56};
    public static final int[] c = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    public static final int[] d = {118276190, 40534716, 9670182, 135141552, 85017403, 259173222, 68333082, 171784774, 174973732, 15824510, 73756743, 57518561, 94773951, 248652241, 107736333, 82941708};
    public static final int[] e = {36764180, 8885695, 130592152, 20104429, 163904957, 30304195, 121295871, 5901357, 125344798, 171541512, 175338348, 209069246, 3626697, 38307682, 24032956, 110359655};
    public static final int[] f = {110141154, 30892124, 160820362, 264558960, 217232225, 47722141, 19029845, 8326902, 183409749, 170134547, 90340180, 222600478, 61097333, 7431335, 198491505, 102372861};
    public static final int[] g = {221945828, 50763449, 132637478, 109250759, 216053960, 61612587, 50649998, 138339097, 98949899, 248139835, 186410297, 126520782, 47339196, 78164062, 198835543, 169622712};
    public static final Object h = new Object();
    public static l39[] i = null;
    public static l39[] j = null;
    public static int[] k = null;
    public static final byte[] l = {112, 114, 111, 0};
    public static final byte[] m = {112, 114, 109, 0};
    public static final Object n = new Object();
    public static boolean o;
    public static int p;

    public static int A0(int i2, int i3) {
        RoundingMode roundingMode = RoundingMode.CEILING;
        roundingMode.getClass();
        if (i3 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i4 = i2 / i3;
        int i5 = i2 - (i3 * i4);
        if (i5 == 0) {
            return i4;
        }
        int i6 = ((i2 ^ i3) >> 31) | 1;
        switch (ek9.a[roundingMode.ordinal()]) {
            case 1:
                throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
            case 2:
                return i4;
            case 3:
                if (i6 >= 0) {
                    return i4;
                }
                break;
            case 4:
                break;
            case 5:
                if (i6 <= 0) {
                    return i4;
                }
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i5);
                int iAbs2 = iAbs - (Math.abs(i3) - iAbs);
                if (iAbs2 == 0) {
                    RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                    RoundingMode roundingMode3 = RoundingMode.HALF_EVEN;
                    return i4;
                }
                if (iAbs2 <= 0) {
                    return i4;
                }
                break;
            default:
                d6.n();
                return 0;
        }
        return i4 + i6;
    }

    public static final Bundle B0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("com.google.android.libraries.identity.googleid.siwg.BUNDLE_KEY_SERVER_CLIENT_ID", str);
        bundle.putString("com.google.android.libraries.identity.googleid.siwg.BUNDLE_KEY_NONCE", null);
        bundle.putString("com.google.android.libraries.identity.googleid.siwg.BUNDLE_KEY_HOSTED_DOMAIN_FILTER", null);
        bundle.putBoolean("com.google.android.libraries.identity.googleid.siwg.BUNDLE_KEY_AUTO_SELECT_ENABLED", true);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_GOOGLE_ID_TOKEN_SUBTYPE", "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_SIWG_CREDENTIAL");
        return bundle;
    }

    public static void C(File file, InputStream inputStream) throws Throwable {
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int i2 = inputStream.read(bArr);
                    if (i2 <= 0) {
                        gZIPOutputStream2.finish();
                        jm1.i(gZIPOutputStream2);
                        return;
                    }
                    gZIPOutputStream2.write(bArr, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    jm1.i(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static d49 C0(Exception exc, String str, String str2) {
        String message = exc.getMessage();
        StringBuilder sbP = u48.p("Failed to parse ", str, " for string [", str2, "] with exception: ");
        sbP.append(message);
        Log.e(str, sbP.toString());
        return new d49(eq3.l("Failed to parse ", str, " for string [", str2, "]"), exc);
    }

    public static void D(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        e6.e("hardAssert failed: ".concat(String.format(str, objArr)));
    }

    public static void D0(Parcel parcel, int i2, int i3) {
        parcel.writeInt(i2 | (i3 << 16));
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0a83 A[LOOP:9: B:97:0x0a6f->B:102:0x0a83, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:104:0x0a87  */
    /* JADX WARN: Code duplicated, block: B:106:0x0a8b  */
    /* JADX WARN: Code duplicated, block: B:108:0x0a92  */
    /* JADX WARN: Code duplicated, block: B:109:0x0a95  */
    /* JADX WARN: Code duplicated, block: B:113:0x0aa3  */
    /* JADX WARN: Code duplicated, block: B:115:0x0aaa  */
    /* JADX WARN: Code duplicated, block: B:116:0x0aad  */
    /* JADX WARN: Code duplicated, block: B:120:0x0ab9  */
    /* JADX WARN: Code duplicated, block: B:122:0x0ac0  */
    /* JADX WARN: Code duplicated, block: B:123:0x0ac3  */
    /* JADX WARN: Code duplicated, block: B:127:0x0acd  */
    /* JADX WARN: Code duplicated, block: B:129:0x0ad4  */
    /* JADX WARN: Code duplicated, block: B:130:0x0ad7  */
    /* JADX WARN: Code duplicated, block: B:150:0x0b4b A[LOOP:0: B:45:0x0113->B:150:0x0b4b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:153:0x013f A[EDGE_INSN: B:153:0x013f->B:47:0x013f BREAK  A[LOOP:0: B:45:0x0113->B:150:0x0b4b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x0592 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x0572 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0a85 A[EDGE_INSN: B:169:0x0a85->B:174:? BREAK  A[LOOP:9: B:97:0x0a6f->B:102:0x0a83], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x0a85 A[EDGE_INSN: B:170:0x0a85->B:174:? BREAK  A[LOOP:9: B:97:0x0a6f->B:102:0x0a83], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x0add A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:176:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:177:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x006b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0071  */
    /* JADX WARN: Code duplicated, block: B:29:0x0073  */
    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0089 A[LOOP:12: B:30:0x0078->B:36:0x0089, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x0091  */
    /* JADX WARN: Code duplicated, block: B:44:0x009e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0429 A[LOOP:1: B:48:0x0427->B:49:0x0429, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:52:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:53:0x04f3  */
    /* JADX WARN: Code duplicated, block: B:56:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:57:0x0500  */
    /* JADX WARN: Code duplicated, block: B:61:0x053e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0541  */
    /* JADX WARN: Code duplicated, block: B:65:0x0551  */
    /* JADX WARN: Code duplicated, block: B:67:0x055e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0586  */
    /* JADX WARN: Code duplicated, block: B:84:0x05cf A[LOOP:5: B:83:0x05cd->B:84:0x05cf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:87:0x05e6  */
    /* JADX WARN: Code duplicated, block: B:90:0x0a49 A[LOOP:6: B:89:0x0a47->B:90:0x0a49, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x0a58 A[LOOP:7: B:92:0x0a56->B:93:0x0a58, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:96:0x0a67 A[LOOP:8: B:95:0x0a65->B:96:0x0a67, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x0a73  */
    public static boolean E(byte[] bArr, nh nhVar, byte[] bArr2, byte b2, byte[] bArr3, int i2) {
        int i3;
        boolean z;
        boolean z2;
        int[] iArr;
        int i4;
        boolean z3;
        boolean z4;
        int i5;
        int i6;
        l39 l39Var;
        l39 l39Var2;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        int i7;
        long j2;
        int i8;
        int i9;
        int i10;
        int i11;
        l39 l39Var3;
        int i12;
        int[] iArr6;
        int i13;
        int i14;
        int[] iArr7;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        int i15;
        int i16;
        int[] iArr8;
        int[] iArr9;
        boolean z5;
        int[] iArr10;
        int iH0;
        int[] iArr11;
        int i17;
        int[] iArr12;
        int iN;
        int[] iArr13;
        int[] iArr14;
        int[] iArr15;
        int[] iArr16;
        int i18;
        int[] iArr17;
        int[] iArr18;
        long j10;
        long j11;
        int i19;
        int i20;
        bp0 bp0Var;
        byte[] bArr4;
        int i21;
        byte[] bArr5;
        byte[] bArr6;
        bp0[] bp0VarArr;
        bp0[] bp0VarArr2;
        gs2 gs2Var;
        int i22;
        int[] iArr19;
        int i23;
        int i24;
        int[] iArr20;
        int i25;
        int[] iArr21;
        int i26;
        int i27;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        int i28;
        int[] iArr22;
        int[] iArr23;
        int i29;
        int i30;
        int i31;
        int[] iArr24 = od2.e;
        if (bArr2 == null || bArr2.length >= 256) {
            c6.f("ctx");
            return false;
        }
        byte[] bArr7 = new byte[57];
        System.arraycopy(bArr, 0, bArr7, 0, 57);
        byte[] bArr8 = new byte[57];
        System.arraycopy(bArr, 57, bArr8, 0, 57);
        int i32 = 13;
        int i33 = 14;
        if ((bArr7[56] & 127) == 0) {
            int iL = g67.l(bArr7, 52);
            int[] iArr25 = c;
            if (iL != iArr25[13]) {
                z2 = true;
            } else {
                int[] iArr26 = new int[14];
                g67.m(bArr7, 14, iArr26);
                int i34 = 13;
                while (true) {
                    if (i34 >= 0) {
                        int i35 = iArr26[i34];
                        i3 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                        int i36 = i35 ^ SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                        i32 = i32;
                        int i37 = iArr25[i34] ^ SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                        if (i36 < i37) {
                            z = false;
                            break;
                        }
                        if (i36 <= i37) {
                            i34--;
                            i32 = i32;
                        }
                    } else {
                        i32 = i32;
                        i3 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                    }
                    z = true;
                    break;
                }
                z2 = !z;
            }
            if (z2) {
                iArr = new int[14];
                if (bArr8[56] != 0) {
                    z4 = false;
                } else {
                    od2.c(bArr8, iArr);
                    i4 = i32;
                    while (true) {
                        if (i4 < 0) {
                            i5 = iArr[i4] ^ i3;
                            i6 = iArr24[i4] ^ i3;
                            if (i5 < i6) {
                                z3 = false;
                                break;
                            }
                            if (i5 > i6) {
                                i4--;
                            }
                        }
                        z3 = true;
                        break;
                    }
                    z4 = !z3;
                }
                if (z4) {
                    l39Var = new l39(3);
                    if (i(bArr7, true, l39Var)) {
                        l39Var2 = new l39(3);
                        zh8.M(new int[16], (int[]) nhVar.b, (int[]) l39Var2.b);
                        zh8.g(16, 0, (int[]) nhVar.b, (int[]) l39Var2.c);
                        byte[] bArr9 = new byte[57];
                        n(nhVar, bArr9);
                        lr6 lr6Var = new lr6(256);
                        byte[] bArr10 = new byte[114];
                        l(lr6Var, b2, bArr2);
                        lr6Var.update(bArr7, 0, 57);
                        lr6Var.update(bArr9, 0, 57);
                        lr6Var.update(bArr3, 0, i2);
                        lr6Var.l(bArr10, 0, 114);
                        iArr2 = new int[14];
                        od2.c(od2.w(bArr10), iArr2);
                        int[] iArr27 = new int[8];
                        iArr3 = new int[8];
                        iArr4 = new int[28];
                        System.arraycopy(od2.f, 0, iArr4, 0, 28);
                        iArr5 = new int[28];
                        bb9.H(iArr2, iArr5);
                        j2 = ((long) iArr2[7]) & 4294967295L;
                        i8 = 6;
                        i9 = 0;
                        i10 = 14;
                        while (true) {
                            i11 = i8 - 1;
                            l39Var3 = l39Var2;
                            long j12 = ((long) iArr2[i8 + 7]) & 4294967295L;
                            long j13 = j12 * j12;
                            i12 = i33;
                            iArr6 = iArr4;
                            iArr5[i10 + 13] = (i9 << 31) | ((int) (j13 >>> 33));
                            i13 = i10 - 2;
                            iArr5[i10 + 12] = (int) (j13 >>> 1);
                            i14 = (int) j13;
                            if (i11 <= 0) {
                                break;
                            }
                            iArr4 = iArr6;
                            i10 = i13;
                            i9 = i14;
                            i8 = i11;
                            l39Var2 = l39Var3;
                            i33 = i12;
                            j2 = j2;
                        }
                        long j14 = j2 * j2;
                        long j15 = (((long) (i14 << 31)) & 4294967295L) | (j14 >>> 33);
                        iArr5[i12] = (int) j14;
                        long j16 = ((long) iArr2[8]) & 4294967295L;
                        long j17 = ((long) iArr5[16]) & 4294967295L;
                        long j18 = (j16 * j2) + j15;
                        int i38 = (int) j18;
                        iArr5[15] = (i38 << 1) | (((int) (j14 >>> 32)) & 1);
                        long j19 = j17 + (j18 >>> 32);
                        long j20 = ((long) iArr2[9]) & 4294967295L;
                        long j21 = ((long) iArr5[17]) & 4294967295L;
                        long j22 = j2;
                        long j23 = ((long) iArr5[18]) & 4294967295L;
                        long j24 = (j20 * j22) + j19;
                        int i39 = (int) j24;
                        iArr5[16] = (i39 << 1) | (i38 >>> 31);
                        int i40 = i39 >>> 31;
                        long jD = dj7.d(j20, j16, j24 >>> 32, j21);
                        long j25 = j23 + (jD >>> 32);
                        long j26 = ((long) iArr2[10]) & 4294967295L;
                        long j27 = (((long) iArr5[19]) & 4294967295L) + (j25 >>> 32);
                        long j28 = j25 & 4294967295L;
                        long j29 = (((long) iArr5[20]) & 4294967295L) + (j27 >>> 32);
                        long j30 = (j26 * j22) + (jD & 4294967295L);
                        int i41 = (int) j30;
                        iArr5[17] = (i41 << 1) | i40;
                        long jD2 = dj7.d(j26, j16, j30 >>> 32, j28);
                        long jD3 = dj7.d(j26, j20, jD2 >>> 32, j27 & 4294967295L);
                        long j31 = j29 + (jD3 >>> 32);
                        long j32 = jD3 & 4294967295L;
                        long j33 = ((long) iArr2[11]) & 4294967295L;
                        long j34 = (((long) iArr5[21]) & 4294967295L) + (j31 >>> 32);
                        long j35 = j31 & 4294967295L;
                        long j36 = (((long) iArr5[22]) & 4294967295L) + (j34 >>> 32);
                        long j37 = (j33 * j22) + (jD2 & 4294967295L);
                        int i42 = (int) j37;
                        iArr5[18] = (i42 << 1) | (i41 >>> 31);
                        long jD4 = dj7.d(j33, j16, j37 >>> 32, j32);
                        long jD5 = dj7.d(j33, j20, jD4 >>> 32, j35);
                        long jD6 = dj7.d(j33, j26, jD5 >>> 32, j34 & 4294967295L);
                        long j38 = j36 + (jD6 >>> 32);
                        long j39 = jD6 & 4294967295L;
                        long j40 = ((long) iArr2[12]) & 4294967295L;
                        long j41 = (((long) iArr5[23]) & 4294967295L) + (j38 >>> 32);
                        long j42 = j38 & 4294967295L;
                        long j43 = (((long) iArr5[24]) & 4294967295L) + (j41 >>> 32);
                        long j44 = j41 & 4294967295L;
                        long j45 = (j40 * j22) + (jD4 & 4294967295L);
                        int i43 = (int) j45;
                        iArr5[19] = (i43 << 1) | (i42 >>> 31);
                        long jD7 = dj7.d(j40, j16, j45 >>> 32, jD5 & 4294967295L);
                        long jD8 = dj7.d(j40, j20, jD7 >>> 32, j39);
                        long jD9 = dj7.d(j40, j26, jD8 >>> 32, j42);
                        long j46 = jD8 & 4294967295L;
                        long jD10 = dj7.d(j40, j33, jD9 >>> 32, j44);
                        long j47 = j43 + (jD10 >>> 32);
                        long j48 = ((long) iArr2[i32]) & 4294967295L;
                        long j49 = (((long) iArr5[25]) & 4294967295L) + (j47 >>> 32);
                        long j50 = j47 & 4294967295L;
                        long j51 = (((long) iArr5[26]) & 4294967295L) + (j49 >>> 32);
                        long j52 = j49 & 4294967295L;
                        long j53 = (j48 * j22) + (jD7 & 4294967295L);
                        int i44 = (int) j53;
                        iArr5[20] = (i44 << 1) | (i43 >>> 31);
                        long jD11 = dj7.d(j48, j16, j53 >>> 32, j46);
                        long jD12 = dj7.d(j48, j20, jD11 >>> 32, jD9 & 4294967295L);
                        long jD13 = dj7.d(j48, j26, jD12 >>> 32, jD10 & 4294967295L);
                        long jD14 = dj7.d(j48, j33, jD13 >>> 32, j50);
                        long jD15 = dj7.d(j48, j40, jD14 >>> 32, j52);
                        long j54 = j51 + (jD15 >>> 32);
                        int i45 = (int) jD11;
                        iArr5[21] = (i45 << 1) | (i44 >>> 31);
                        int i46 = (int) jD12;
                        iArr5[22] = (i46 << 1) | (i45 >>> 31);
                        int i47 = (int) jD13;
                        iArr5[23] = (i46 >>> 31) | (i47 << 1);
                        int i48 = i47 >>> 31;
                        int i49 = (int) jD14;
                        iArr5[24] = i48 | (i49 << 1);
                        int i50 = i49 >>> 31;
                        int i51 = (int) jD15;
                        iArr5[25] = i50 | (i51 << 1);
                        int i52 = i51 >>> 31;
                        int i53 = (int) j54;
                        iArr5[26] = i52 | (i53 << 1);
                        iArr5[27] = (i53 >>> 31) | ((iArr5[27] + ((int) (j54 >>> 32))) << 1);
                        int iJ = bb9.j(iArr5, iArr5);
                        int i54 = bb9.i(21, i12, bb9.i(0, 7, 0, iArr5, iArr5) + iJ, iArr5, iArr5) + iJ;
                        int[] iArr28 = new int[7];
                        bb9.s(iArr2, iArr2, iArr28);
                        int[] iArr29 = new int[i12];
                        bb9.H(iArr28, iArr29);
                        jb9.f(iArr5, jb9.h0(7, iArr29, iArr5) + i54);
                        iArr5[0] = iArr5[0] + 1;
                        iArr7 = new int[28];
                        bb9.B(iArr24, iArr2, iArr7);
                        j3 = ((long) iArr2[7]) & 4294967295L;
                        j4 = ((long) iArr2[8]) & 4294967295L;
                        j5 = ((long) iArr2[9]) & 4294967295L;
                        j6 = ((long) iArr2[10]) & 4294967295L;
                        j7 = ((long) iArr2[11]) & 4294967295L;
                        j8 = ((long) iArr2[12]) & 4294967295L;
                        j9 = ((long) iArr2[i32]) & 4294967295L;
                        long j55 = ((long) iArr24[7]) & 4294967295L;
                        long j56 = j55 * j3;
                        iArr7[14] = (int) j56;
                        long j57 = (j55 * j4) + (j56 >>> 32);
                        iArr7[15] = (int) j57;
                        long j58 = (j55 * j5) + (j57 >>> 32);
                        iArr7[16] = (int) j58;
                        long j59 = (j55 * j6) + (j58 >>> 32);
                        iArr7[17] = (int) j59;
                        long j60 = (j55 * j7) + (j59 >>> 32);
                        iArr7[18] = (int) j60;
                        long j61 = (j55 * j8) + (j60 >>> 32);
                        iArr7[19] = (int) j61;
                        long j62 = (j55 * j9) + (j61 >>> 32);
                        iArr7[20] = (int) j62;
                        iArr7[21] = (int) (j62 >>> 32);
                        i15 = 1;
                        i16 = 14;
                        for (i7 = 7; i15 < i7; i7 = 7) {
                            int i55 = i16 + 1;
                            int i56 = i15;
                            int i57 = i16;
                            long j63 = ((long) iArr24[i7 + i15]) & 4294967295L;
                            long j64 = (j63 * j3) + (((long) iArr7[i55]) & 4294967295L);
                            iArr7[i55] = (int) j64;
                            int i58 = i57 + 2;
                            long j65 = (j63 * j4) + (((long) iArr7[i58]) & 4294967295L) + (j64 >>> 32);
                            iArr7[i58] = (int) j65;
                            int i59 = i57 + 3;
                            long j66 = (j63 * j5) + (((long) iArr7[i59]) & 4294967295L) + (j65 >>> 32);
                            iArr7[i59] = (int) j66;
                            int i60 = i57 + 4;
                            long j67 = (j63 * j6) + (((long) iArr7[i60]) & 4294967295L) + (j66 >>> 32);
                            iArr7[i60] = (int) j67;
                            int i61 = i57 + 5;
                            long j68 = (j63 * j7) + (((long) iArr7[i61]) & 4294967295L) + (j67 >>> 32);
                            iArr7[i61] = (int) j68;
                            int i62 = i57 + 6;
                            long j69 = (j63 * j8) + (((long) iArr7[i62]) & 4294967295L) + (j68 >>> 32);
                            iArr7[i62] = (int) j69;
                            int i63 = i57 + 7;
                            long j70 = (j63 * j9) + (((long) iArr7[i63]) & 4294967295L) + (j69 >>> 32);
                            iArr7[i63] = (int) j70;
                            iArr7[i57 + 8] = (int) (j70 >>> 32);
                            i15 = i56 + 1;
                            i16 = i55;
                        }
                        int iJ2 = bb9.j(iArr7, iArr7);
                        int i64 = bb9.i(21, 14, bb9.i(0, 7, 0, iArr7, iArr7) + iJ2, iArr7, iArr7) + iJ2;
                        iArr8 = new int[7];
                        iArr9 = new int[7];
                        if (bb9.s(iArr24, iArr24, iArr8) != bb9.s(iArr2, iArr2, iArr9)) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        iArr10 = new int[14];
                        bb9.B(iArr8, iArr9, iArr10);
                        if (z5) {
                            iH0 = jb9.e(7, iArr10, iArr7);
                        } else {
                            iH0 = jb9.h0(7, iArr10, iArr7);
                        }
                        jb9.f(iArr7, i64 + iH0);
                        iArr11 = new int[28];
                        int[] iArr30 = new int[8];
                        System.arraycopy(iArr24, 0, iArr30, 0, 8);
                        int[] iArr31 = new int[8];
                        System.arraycopy(iArr2, 0, iArr31, 0, 8);
                        int[] iArr32 = new int[8];
                        iArr32[0] = 1;
                        i17 = 1788;
                        iArr12 = iArr5;
                        iN = zm5.n(iArr5, 27);
                        iArr13 = iArr30;
                        iArr14 = new int[8];
                        iArr15 = iArr31;
                        iArr16 = iArr32;
                        i18 = 27;
                        iArr17 = iArr6;
                        while (iN > 447) {
                            i17--;
                            if (i17 >= 0) {
                                g84.c();
                                return false;
                            }
                            int iM = zm5.m(iArr7, i18) - iN;
                            i28 = iM & (~(iM >> 31));
                            if (iArr7[i18] < 0) {
                                zm5.c(i18, i28, iArr17, iArr12, iArr7, iArr11);
                                zm5.d(7, i28, iArr13, iArr14, iArr15, iArr16);
                            } else {
                                zm5.F(i18, i28, iArr17, iArr12, iArr7, iArr11);
                                zm5.G(7, i28, iArr13, iArr14, iArr15, iArr16);
                            }
                            iArr22 = iArr15;
                            iArr23 = iArr16;
                            i29 = i18;
                            while (true) {
                                i30 = iArr17[i29] + i3;
                                i31 = iArr12[i29] + i3;
                                if (i30 >= i31) {
                                    int i65 = iN >>> 5;
                                    int iN2 = zm5.n(iArr17, i65);
                                    int[] iArr33 = iArr12;
                                    iArr12 = iArr17;
                                    iArr17 = iArr33;
                                    i18 = i65;
                                    iN = iN2;
                                    iArr15 = iArr13;
                                    iArr16 = iArr14;
                                    iArr13 = iArr22;
                                    iArr14 = iArr23;
                                    break;
                                }
                                if (i30 <= i31 || (i29 = i29 - 1) < 0) {
                                    iArr15 = iArr22;
                                    iArr16 = iArr23;
                                    break;
                                }
                            }
                        }
                        System.arraycopy(iArr15, 0, iArr27, 0, 8);
                        System.arraycopy(iArr16, 0, iArr3, 0, 8);
                        iArr18 = new int[22];
                        j10 = ((long) iArr3[0]) & 4294967295L;
                        j11 = 0;
                        i19 = 0;
                        do {
                            long j71 = ((((long) iArr[i19]) & 4294967295L) * j10) + j11;
                            iArr18[i19] = (int) j71;
                            j11 = j71 >>> 32;
                            i19++;
                        } while (i19 < 14);
                        iArr18[14] = (int) j11;
                        for (i20 = 1; i20 < 8; i20++) {
                            iArr18[i20 + 14] = jb9.H(iArr3[i20], i20, iArr, iArr18);
                        }
                        if (iArr3[7] < 0) {
                            jb9.e(8, iArr24, iArr18);
                            jb9.h0(8, iArr, iArr18);
                        }
                        byte[] bArr11 = new byte[88];
                        g67.o(bArr11, 22, iArr18);
                        long jL = ((long) g67.l(bArr11, 0)) & 4294967295L;
                        long jK = ((long) (g67.k(bArr11, 4) << 4)) & 4294967295L;
                        long jL2 = ((long) g67.l(bArr11, 7)) & 4294967295L;
                        long jK2 = ((long) (g67.k(bArr11, 11) << 4)) & 4294967295L;
                        long jL3 = ((long) g67.l(bArr11, 14)) & 4294967295L;
                        long jK3 = ((long) (g67.k(bArr11, 18) << 4)) & 4294967295L;
                        long jL4 = ((long) g67.l(bArr11, 21)) & 4294967295L;
                        long jK4 = ((long) (g67.k(bArr11, 25) << 4)) & 4294967295L;
                        long jL5 = ((long) g67.l(bArr11, 28)) & 4294967295L;
                        long jK5 = ((long) (g67.k(bArr11, 32) << 4)) & 4294967295L;
                        long jL6 = ((long) g67.l(bArr11, 35)) & 4294967295L;
                        long jK6 = ((long) (g67.k(bArr11, 39) << 4)) & 4294967295L;
                        long jL7 = ((long) g67.l(bArr11, 42)) & 4294967295L;
                        long jK7 = ((long) (g67.k(bArr11, 46) << 4)) & 4294967295L;
                        long jL8 = ((long) g67.l(bArr11, 49)) & 4294967295L;
                        long jK8 = ((long) (g67.k(bArr11, 53) << 4)) & 4294967295L;
                        long jL9 = ((long) g67.l(bArr11, 56)) & 4294967295L;
                        long jK9 = g67.k(bArr11, 60) << 4;
                        long j72 = jK9 & 4294967295L;
                        long jL10 = ((long) g67.l(bArr11, 63)) & 4294967295L;
                        long jK10 = ((long) (g67.k(bArr11, 67) << 4)) & 4294967295L;
                        long jL11 = g67.l(bArr11, 70);
                        long j73 = jL11 & 4294967295L;
                        long jK11 = ((long) (g67.k(bArr11, 74) << 4)) & 4294967295L;
                        long jL12 = ((long) g67.l(bArr11, 77)) & 4294967295L;
                        long jK12 = ((long) (g67.k(bArr11, 81) << 4)) & 4294967295L;
                        long jL13 = g67.l(bArr11, 84);
                        long j74 = (jL13 & 4294967295L) >>> 28;
                        long j75 = (j74 * 43969588) + jK5;
                        long j76 = (j74 * 30366549) + jL6;
                        long j77 = (j74 * 163752818) + jK6;
                        long j78 = (j74 * 258169998) + jL7;
                        long j79 = (j74 * 96434764) + jK7;
                        long j80 = (j74 * 227822194) + jL8;
                        long j81 = (j74 * 149865618) + jK8;
                        long j82 = (j74 * 550336261) + jL9;
                        long j83 = jK11 + (j73 >>> 28);
                        long j84 = jL11 & 268435455;
                        long j85 = jL12 + (j83 >>> 28);
                        long j86 = jK12 + (j85 >>> 28);
                        long j87 = j85 & 268435455;
                        long j88 = (jL13 & 268435455) + (j86 >>> 28);
                        long j89 = j86 & 268435455;
                        long j90 = (j88 * 30366549) + j75;
                        long j91 = (j88 * 258169998) + j77;
                        long j92 = (j88 * 227822194) + j79;
                        long j93 = (j89 * 43969588) + jK4;
                        long j94 = (j89 * 30366549) + (j88 * 43969588) + jL5;
                        long j95 = (j89 * 163752818) + j90;
                        long j96 = (j89 * 258169998) + (j88 * 163752818) + j76;
                        long j97 = (j89 * 96434764) + j91;
                        long j98 = (j89 * 227822194) + (j88 * 96434764) + j78;
                        long j99 = (j89 * 149865618) + j92;
                        long j100 = (j89 * 550336261) + (j88 * 149865618) + j80;
                        long j101 = (j87 * 43969588) + jL4;
                        long j102 = (j87 * 30366549) + j93;
                        long j103 = (j87 * 163752818) + j94;
                        long j104 = (j87 * 258169998) + j95;
                        long j105 = (j87 * 96434764) + j96;
                        long j106 = (j87 * 227822194) + j97;
                        long j107 = (j87 * 149865618) + j98;
                        long j108 = (j87 * 550336261) + j99;
                        long j109 = jL10 + (j72 >>> 28);
                        long j110 = jK9 & 268435455;
                        long j111 = jK10 + (j109 >>> 28);
                        long j112 = j84 + (j111 >>> 28);
                        long j113 = j111 & 268435455;
                        long j114 = (j83 & 268435455) + (j112 >>> 28);
                        long j115 = j112 & 268435455;
                        long j116 = (j114 * 43969588) + jK3;
                        long j117 = (j114 * 30366549) + j101;
                        long j118 = (j114 * 163752818) + j102;
                        long j119 = (j114 * 258169998) + j103;
                        long j120 = (j114 * 96434764) + j104;
                        long j121 = (j114 * 227822194) + j105;
                        long j122 = (j114 * 149865618) + j106;
                        long j123 = (j114 * 550336261) + j107;
                        long j124 = (j115 * 43969588) + jL3;
                        long j125 = (j115 * 30366549) + j116;
                        long j126 = (j115 * 163752818) + j117;
                        long j127 = (j115 * 258169998) + j118;
                        long j128 = (j115 * 96434764) + j119;
                        long j129 = (j115 * 227822194) + j120;
                        long j130 = (j115 * 149865618) + j121;
                        long j131 = (j115 * 550336261) + j122;
                        long j132 = (j113 * 43969588) + jK2;
                        long j133 = (j113 * 30366549) + j124;
                        long j134 = (j113 * 163752818) + j125;
                        long j135 = (j113 * 258169998) + j126;
                        long j136 = (j113 * 96434764) + j127;
                        long j137 = (j113 * 227822194) + j128;
                        long j138 = (j113 * 149865618) + j129;
                        long j139 = (j88 * 550336261) + j81 + (j100 >>> 28);
                        long j140 = j100 & 268435455;
                        long j141 = j82 + (j139 >>> 28);
                        long j142 = j110 + (j141 >>> 28);
                        long j143 = (j109 & 268435455) + (j142 >>> 28);
                        long j144 = j142 & 268435455;
                        long j145 = (j143 * 43969588) + jL2;
                        long j146 = (j143 * 30366549) + j132;
                        long j147 = (j143 * 163752818) + j133;
                        long j148 = (j143 * 258169998) + j134;
                        long j149 = (j143 * 96434764) + j135;
                        long j150 = (j143 * 227822194) + j136;
                        long j151 = (j143 * 149865618) + j137;
                        long j152 = (j143 * 550336261) + j138;
                        long j153 = (43969588 * j144) + jK;
                        long j154 = (30366549 * j144) + j145;
                        long j155 = (163752818 * j144) + j146;
                        long j156 = (258169998 * j144) + j147;
                        long j157 = (96434764 * j144) + j148;
                        long j158 = (227822194 * j144) + j149;
                        long j159 = (149865618 * j144) + j150;
                        long j160 = (j144 * 550336261) + j151;
                        long j161 = ((j141 & 268435455) * 4) + ((j139 & 268435455) >>> 26) + 1;
                        long j162 = (j161 * 78101261) + jL;
                        long j163 = (j161 * 141809365) + j153;
                        long j164 = (j161 * 175155932) + j154;
                        long j165 = (j161 * 64542499) + j155;
                        long j166 = (j161 * 158326419) + j156;
                        long j167 = (j161 * 191173276) + j157;
                        long j168 = (j161 * 104575268) + j158;
                        long j169 = (j161 * 137584065) + j159;
                        long j170 = j163 + (j162 >>> 28);
                        long j171 = j164 + (j170 >>> 28);
                        long j172 = j165 + (j171 >>> 28);
                        long j173 = j166 + (j172 >>> 28);
                        long j174 = j167 + (j173 >>> 28);
                        long j175 = j168 + (j174 >>> 28);
                        long j176 = j169 + (j175 >>> 28);
                        long j177 = j160 + (j176 >>> 28);
                        long j178 = j152 + (j177 >>> 28);
                        long j179 = (j113 * 550336261) + j130 + (j178 >>> 28);
                        long j180 = j131 + (j179 >>> 28);
                        long j181 = j123 + (j180 >>> 28);
                        long j182 = j108 + (j181 >>> 28);
                        long j183 = j140 + (j182 >>> 28);
                        long j184 = (j139 & 67108863) + (j183 >>> 28);
                        long j185 = (j184 >>> 26) - 1;
                        long j186 = (j162 & 268435455) - (j185 & 78101261);
                        long j187 = ((j170 & 268435455) - (j185 & 141809365)) + (j186 >> 28);
                        long j188 = ((j171 & 268435455) - (j185 & 175155932)) + (j187 >> 28);
                        long j189 = ((j172 & 268435455) - (j185 & 64542499)) + (j188 >> 28);
                        long j190 = ((j173 & 268435455) - (j185 & 158326419)) + (j189 >> 28);
                        long j191 = ((j174 & 268435455) - (j185 & 191173276)) + (j190 >> 28);
                        long j192 = ((j175 & 268435455) - (j185 & 104575268)) + (j191 >> 28);
                        long j193 = ((j176 & 268435455) - (j185 & 137584065)) + (j192 >> 28);
                        long j194 = (j177 & 268435455) + (j193 >> 28);
                        long j195 = (j178 & 268435455) + (j194 >> 28);
                        long j196 = (j179 & 268435455) + (j195 >> 28);
                        long j197 = (j180 & 268435455) + (j196 >> 28);
                        long j198 = (j181 & 268435455) + (j197 >> 28);
                        long j199 = (j182 & 268435455) + (j198 >> 28);
                        long j200 = (j183 & 268435455) + (j199 >> 28);
                        byte[] bArr12 = new byte[57];
                        g67.p(0, (j186 & 268435455) | ((j187 & 268435455) << 28), bArr12);
                        g67.p(7, ((j189 & 268435455) << 28) | (j188 & 268435455), bArr12);
                        g67.p(14, (j190 & 268435455) | ((j191 & 268435455) << 28), bArr12);
                        g67.p(21, (j192 & 268435455) | ((j193 & 268435455) << 28), bArr12);
                        g67.p(28, (j194 & 268435455) | ((j195 & 268435455) << 28), bArr12);
                        g67.p(35, (j196 & 268435455) | ((j197 & 268435455) << 28), bArr12);
                        g67.p(42, (j198 & 268435455) | ((j199 & 268435455) << 28), bArr12);
                        g67.p(49, (j200 & 268435455) | (((j184 & 67108863) + (j200 >> 28)) << 28), bArr12);
                        od2.c(bArr12, iArr);
                        bp0Var = new bp0();
                        U();
                        bArr4 = new byte[450];
                        i21 = 225;
                        bArr5 = new byte[225];
                        bArr6 = new byte[225];
                        l73.p(bArr4, 7, iArr);
                        l73.p(bArr5, 5, iArr27);
                        l73.p(bArr6, 5, iArr3);
                        bp0VarArr = new bp0[8];
                        bp0VarArr2 = new bp0[8];
                        gs2Var = new gs2();
                        i22 = 0;
                        T(l39Var3, bp0VarArr, 0, 8, gs2Var);
                        T(l39Var, bp0VarArr2, 0, 8, gs2Var);
                        iArr19 = (int[]) bp0Var.a;
                        i24 = 16;
                        for (i23 = 0; i23 < 16; i23++) {
                            iArr19[i23] = 0;
                        }
                        iArr20 = (int[]) bp0Var.b;
                        iArr20[0] = 1;
                        for (i25 = 1; i25 < 16; i25++) {
                            iArr20[i25] = 0;
                        }
                        iArr21 = (int[]) bp0Var.c;
                        iArr21[0] = 1;
                        i26 = 1;
                        while (i26 < i24) {
                            iArr21[i26] = i22;
                            i26++;
                            i24 = 16;
                            i22 = 0;
                        }
                        while (true) {
                            i27 = i21 - 1;
                            if (i27 >= 0) {
                                break;
                            }
                            if ((bArr4[i21 + 224] | bArr4[i27] | bArr5[i27] | bArr6[i27]) != 0) {
                                break;
                            }
                            i21 = i27;
                        }
                        while (i27 >= 0) {
                            b3 = bArr4[i27];
                            if (b3 != 0) {
                                int i66 = (b3 >> 1) ^ (b3 >> 31);
                                if (b3 < 0) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                P(z9, i[i66], bp0Var, gs2Var);
                            }
                            b4 = bArr4[i27 + 225];
                            if (b4 != 0) {
                                int i67 = (b4 >> 1) ^ (b4 >> 31);
                                if (b4 < 0) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                P(z8, j[i67], bp0Var, gs2Var);
                            }
                            b5 = bArr5[i27];
                            if (b5 != 0) {
                                int i68 = (b5 >> 1) ^ (b5 >> 31);
                                if (b5 < 0) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                O(z7, bp0VarArr[i68], bp0Var, gs2Var);
                            }
                            b6 = bArr6[i27];
                            if (b6 != 0) {
                                int i69 = (b6 >> 1) ^ (b6 >> 31);
                                if (b6 < 0) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                O(z6, bp0VarArr2[i69], bp0Var, gs2Var);
                            }
                            S(bp0Var, gs2Var);
                            i27--;
                        }
                        S(bp0Var, gs2Var);
                        int[] iArr34 = (int[]) bp0Var.a;
                        zh8.E(iArr34, 1);
                        zh8.E(iArr34, -1);
                        int[] iArr35 = (int[]) bp0Var.b;
                        zh8.E(iArr35, 1);
                        zh8.E(iArr35, -1);
                        int[] iArr36 = (int[]) bp0Var.c;
                        zh8.E(iArr36, 1);
                        zh8.E(iArr36, -1);
                        if (zh8.w((int[]) bp0Var.a) == 0 && zh8.w(iArr35) == 0) {
                            int i70 = 0;
                            for (int i71 = 0; i71 < 16; i71++) {
                                i70 |= iArr35[i71] ^ iArr36[i71];
                            }
                            return ((((i70 >>> 1) | (i70 & 1)) + (-1)) >> 31) != 0;
                        }
                    }
                }
            }
            return false;
        }
        z2 = false;
        i3 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        if (z2) {
            iArr = new int[14];
            if (bArr8[56] != 0) {
                z4 = false;
            } else {
                od2.c(bArr8, iArr);
                i4 = i32;
                while (true) {
                    if (i4 < 0) {
                        i5 = iArr[i4] ^ i3;
                        i6 = iArr24[i4] ^ i3;
                        if (i5 < i6) {
                            z3 = false;
                            break;
                        }
                        if (i5 > i6) {
                            i4--;
                        }
                    }
                    z3 = true;
                    break;
                }
                z4 = !z3;
            }
            if (z4) {
                l39Var = new l39(3);
                if (i(bArr7, true, l39Var)) {
                    l39Var2 = new l39(3);
                    zh8.M(new int[16], (int[]) nhVar.b, (int[]) l39Var2.b);
                    zh8.g(16, 0, (int[]) nhVar.b, (int[]) l39Var2.c);
                    byte[] bArr13 = new byte[57];
                    n(nhVar, bArr13);
                    lr6 lr6Var2 = new lr6(256);
                    byte[] bArr14 = new byte[114];
                    l(lr6Var2, b2, bArr2);
                    lr6Var2.update(bArr7, 0, 57);
                    lr6Var2.update(bArr13, 0, 57);
                    lr6Var2.update(bArr3, 0, i2);
                    lr6Var2.l(bArr14, 0, 114);
                    iArr2 = new int[14];
                    od2.c(od2.w(bArr14), iArr2);
                    int[] iArr210 = new int[8];
                    iArr3 = new int[8];
                    iArr4 = new int[28];
                    System.arraycopy(od2.f, 0, iArr4, 0, 28);
                    iArr5 = new int[28];
                    bb9.H(iArr2, iArr5);
                    j2 = ((long) iArr2[7]) & 4294967295L;
                    i8 = 6;
                    i9 = 0;
                    i10 = 14;
                    while (true) {
                        i11 = i8 - 1;
                        l39Var3 = l39Var2;
                        long j1100 = ((long) iArr2[i8 + 7]) & 4294967295L;
                        long j1101 = j1100 * j1100;
                        i12 = i33;
                        iArr6 = iArr4;
                        iArr5[i10 + 13] = (i9 << 31) | ((int) (j1101 >>> 33));
                        i13 = i10 - 2;
                        iArr5[i10 + 12] = (int) (j1101 >>> 1);
                        i14 = (int) j1101;
                        if (i11 <= 0) {
                            break;
                            break;
                        }
                        iArr4 = iArr6;
                        i10 = i13;
                        i9 = i14;
                        i8 = i11;
                        l39Var2 = l39Var3;
                        i33 = i12;
                        j2 = j2;
                    }
                    long j1102 = j2 * j2;
                    long j1103 = (((long) (i14 << 31)) & 4294967295L) | (j1102 >>> 33);
                    iArr5[i12] = (int) j1102;
                    long j1104 = ((long) iArr2[8]) & 4294967295L;
                    long j1105 = ((long) iArr5[16]) & 4294967295L;
                    long j1106 = (j1104 * j2) + j1103;
                    int i310 = (int) j1106;
                    iArr5[15] = (i310 << 1) | (((int) (j1102 >>> 32)) & 1);
                    long j1107 = j1105 + (j1106 >>> 32);
                    long j210 = ((long) iArr2[9]) & 4294967295L;
                    long j211 = ((long) iArr5[17]) & 4294967295L;
                    long j212 = j2;
                    long j213 = ((long) iArr5[18]) & 4294967295L;
                    long j214 = (j210 * j212) + j1107;
                    int i311 = (int) j214;
                    iArr5[16] = (i311 << 1) | (i310 >>> 31);
                    int i410 = i311 >>> 31;
                    long jD16 = dj7.d(j210, j1104, j214 >>> 32, j211);
                    long j215 = j213 + (jD16 >>> 32);
                    long j216 = ((long) iArr2[10]) & 4294967295L;
                    long j217 = (((long) iArr5[19]) & 4294967295L) + (j215 >>> 32);
                    long j218 = j215 & 4294967295L;
                    long j219 = (((long) iArr5[20]) & 4294967295L) + (j217 >>> 32);
                    long j310 = (j216 * j212) + (jD16 & 4294967295L);
                    int i411 = (int) j310;
                    iArr5[17] = (i411 << 1) | i410;
                    long jD17 = dj7.d(j216, j1104, j310 >>> 32, j218);
                    long jD18 = dj7.d(j216, j210, jD17 >>> 32, j217 & 4294967295L);
                    long j311 = j219 + (jD18 >>> 32);
                    long j312 = jD18 & 4294967295L;
                    long j313 = ((long) iArr2[11]) & 4294967295L;
                    long j314 = (((long) iArr5[21]) & 4294967295L) + (j311 >>> 32);
                    long j315 = j311 & 4294967295L;
                    long j316 = (((long) iArr5[22]) & 4294967295L) + (j314 >>> 32);
                    long j317 = (j313 * j212) + (jD17 & 4294967295L);
                    int i412 = (int) j317;
                    iArr5[18] = (i412 << 1) | (i411 >>> 31);
                    long jD19 = dj7.d(j313, j1104, j317 >>> 32, j312);
                    long jD20 = dj7.d(j313, j210, jD19 >>> 32, j315);
                    long jD21 = dj7.d(j313, j216, jD20 >>> 32, j314 & 4294967295L);
                    long j318 = j316 + (jD21 >>> 32);
                    long j319 = jD21 & 4294967295L;
                    long j410 = ((long) iArr2[12]) & 4294967295L;
                    long j411 = (((long) iArr5[23]) & 4294967295L) + (j318 >>> 32);
                    long j412 = j318 & 4294967295L;
                    long j413 = (((long) iArr5[24]) & 4294967295L) + (j411 >>> 32);
                    long j414 = j411 & 4294967295L;
                    long j415 = (j410 * j212) + (jD19 & 4294967295L);
                    int i413 = (int) j415;
                    iArr5[19] = (i413 << 1) | (i412 >>> 31);
                    long jD22 = dj7.d(j410, j1104, j415 >>> 32, jD20 & 4294967295L);
                    long jD23 = dj7.d(j410, j210, jD22 >>> 32, j319);
                    long jD24 = dj7.d(j410, j216, jD23 >>> 32, j412);
                    long j416 = jD23 & 4294967295L;
                    long jD110 = dj7.d(j410, j313, jD24 >>> 32, j414);
                    long j417 = j413 + (jD110 >>> 32);
                    long j418 = ((long) iArr2[i32]) & 4294967295L;
                    long j419 = (((long) iArr5[25]) & 4294967295L) + (j417 >>> 32);
                    long j510 = j417 & 4294967295L;
                    long j511 = (((long) iArr5[26]) & 4294967295L) + (j419 >>> 32);
                    long j512 = j419 & 4294967295L;
                    long j513 = (j418 * j212) + (jD22 & 4294967295L);
                    int i414 = (int) j513;
                    iArr5[20] = (i414 << 1) | (i413 >>> 31);
                    long jD111 = dj7.d(j418, j1104, j513 >>> 32, j416);
                    long jD112 = dj7.d(j418, j210, jD111 >>> 32, jD24 & 4294967295L);
                    long jD113 = dj7.d(j418, j216, jD112 >>> 32, jD110 & 4294967295L);
                    long jD114 = dj7.d(j418, j313, jD113 >>> 32, j510);
                    long jD115 = dj7.d(j418, j410, jD114 >>> 32, j512);
                    long j514 = j511 + (jD115 >>> 32);
                    int i415 = (int) jD111;
                    iArr5[21] = (i415 << 1) | (i414 >>> 31);
                    int i416 = (int) jD112;
                    iArr5[22] = (i416 << 1) | (i415 >>> 31);
                    int i417 = (int) jD113;
                    iArr5[23] = (i416 >>> 31) | (i417 << 1);
                    int i418 = i417 >>> 31;
                    int i419 = (int) jD114;
                    iArr5[24] = i418 | (i419 << 1);
                    int i510 = i419 >>> 31;
                    int i511 = (int) jD115;
                    iArr5[25] = i510 | (i511 << 1);
                    int i512 = i511 >>> 31;
                    int i513 = (int) j514;
                    iArr5[26] = i512 | (i513 << 1);
                    iArr5[27] = (i513 >>> 31) | ((iArr5[27] + ((int) (j514 >>> 32))) << 1);
                    int iJ3 = bb9.j(iArr5, iArr5);
                    int i514 = bb9.i(21, i12, bb9.i(0, 7, 0, iArr5, iArr5) + iJ3, iArr5, iArr5) + iJ3;
                    int[] iArr211 = new int[7];
                    bb9.s(iArr2, iArr2, iArr211);
                    int[] iArr212 = new int[i12];
                    bb9.H(iArr211, iArr212);
                    jb9.f(iArr5, jb9.h0(7, iArr212, iArr5) + i514);
                    iArr5[0] = iArr5[0] + 1;
                    iArr7 = new int[28];
                    bb9.B(iArr24, iArr2, iArr7);
                    j3 = ((long) iArr2[7]) & 4294967295L;
                    j4 = ((long) iArr2[8]) & 4294967295L;
                    j5 = ((long) iArr2[9]) & 4294967295L;
                    j6 = ((long) iArr2[10]) & 4294967295L;
                    j7 = ((long) iArr2[11]) & 4294967295L;
                    j8 = ((long) iArr2[12]) & 4294967295L;
                    j9 = ((long) iArr2[i32]) & 4294967295L;
                    long j515 = ((long) iArr24[7]) & 4294967295L;
                    long j516 = j515 * j3;
                    iArr7[14] = (int) j516;
                    long j517 = (j515 * j4) + (j516 >>> 32);
                    iArr7[15] = (int) j517;
                    long j518 = (j515 * j5) + (j517 >>> 32);
                    iArr7[16] = (int) j518;
                    long j519 = (j515 * j6) + (j518 >>> 32);
                    iArr7[17] = (int) j519;
                    long j610 = (j515 * j7) + (j519 >>> 32);
                    iArr7[18] = (int) j610;
                    long j611 = (j515 * j8) + (j610 >>> 32);
                    iArr7[19] = (int) j611;
                    long j612 = (j515 * j9) + (j611 >>> 32);
                    iArr7[20] = (int) j612;
                    iArr7[21] = (int) (j612 >>> 32);
                    i15 = 1;
                    i16 = 14;
                    while (i15 < i7) {
                        int i515 = i16 + 1;
                        int i516 = i15;
                        int i517 = i16;
                        long j613 = ((long) iArr24[i7 + i15]) & 4294967295L;
                        long j614 = (j613 * j3) + (((long) iArr7[i515]) & 4294967295L);
                        iArr7[i515] = (int) j614;
                        int i518 = i517 + 2;
                        long j615 = (j613 * j4) + (((long) iArr7[i518]) & 4294967295L) + (j614 >>> 32);
                        iArr7[i518] = (int) j615;
                        int i519 = i517 + 3;
                        long j616 = (j613 * j5) + (((long) iArr7[i519]) & 4294967295L) + (j615 >>> 32);
                        iArr7[i519] = (int) j616;
                        int i610 = i517 + 4;
                        long j617 = (j613 * j6) + (((long) iArr7[i610]) & 4294967295L) + (j616 >>> 32);
                        iArr7[i610] = (int) j617;
                        int i611 = i517 + 5;
                        long j618 = (j613 * j7) + (((long) iArr7[i611]) & 4294967295L) + (j617 >>> 32);
                        iArr7[i611] = (int) j618;
                        int i612 = i517 + 6;
                        long j619 = (j613 * j8) + (((long) iArr7[i612]) & 4294967295L) + (j618 >>> 32);
                        iArr7[i612] = (int) j619;
                        int i613 = i517 + 7;
                        long j710 = (j613 * j9) + (((long) iArr7[i613]) & 4294967295L) + (j619 >>> 32);
                        iArr7[i613] = (int) j710;
                        iArr7[i517 + 8] = (int) (j710 >>> 32);
                        i15 = i516 + 1;
                        i16 = i515;
                    }
                    int iJ4 = bb9.j(iArr7, iArr7);
                    int i614 = bb9.i(21, 14, bb9.i(0, 7, 0, iArr7, iArr7) + iJ4, iArr7, iArr7) + iJ4;
                    iArr8 = new int[7];
                    iArr9 = new int[7];
                    if (bb9.s(iArr24, iArr24, iArr8) != bb9.s(iArr2, iArr2, iArr9)) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    iArr10 = new int[14];
                    bb9.B(iArr8, iArr9, iArr10);
                    if (z5) {
                        iH0 = jb9.e(7, iArr10, iArr7);
                    } else {
                        iH0 = jb9.h0(7, iArr10, iArr7);
                    }
                    jb9.f(iArr7, i614 + iH0);
                    iArr11 = new int[28];
                    int[] iArr37 = new int[8];
                    System.arraycopy(iArr24, 0, iArr37, 0, 8);
                    int[] iArr38 = new int[8];
                    System.arraycopy(iArr2, 0, iArr38, 0, 8);
                    int[] iArr39 = new int[8];
                    iArr39[0] = 1;
                    i17 = 1788;
                    iArr12 = iArr5;
                    iN = zm5.n(iArr5, 27);
                    iArr13 = iArr37;
                    iArr14 = new int[8];
                    iArr15 = iArr38;
                    iArr16 = iArr39;
                    i18 = 27;
                    iArr17 = iArr6;
                    while (iN > 447) {
                        i17--;
                        if (i17 >= 0) {
                            g84.c();
                            return false;
                        }
                        int iM2 = zm5.m(iArr7, i18) - iN;
                        i28 = iM2 & (~(iM2 >> 31));
                        if (iArr7[i18] < 0) {
                            zm5.c(i18, i28, iArr17, iArr12, iArr7, iArr11);
                            zm5.d(7, i28, iArr13, iArr14, iArr15, iArr16);
                        } else {
                            zm5.F(i18, i28, iArr17, iArr12, iArr7, iArr11);
                            zm5.G(7, i28, iArr13, iArr14, iArr15, iArr16);
                        }
                        iArr22 = iArr15;
                        iArr23 = iArr16;
                        i29 = i18;
                        while (true) {
                            i30 = iArr17[i29] + i3;
                            i31 = iArr12[i29] + i3;
                            if (i30 >= i31) {
                                if (i30 <= i31) {
                                }
                                iArr15 = iArr22;
                                iArr16 = iArr23;
                                break;
                                break;
                            }
                            int i615 = iN >>> 5;
                            int iN3 = zm5.n(iArr17, i615);
                            int[] iArr310 = iArr12;
                            iArr12 = iArr17;
                            iArr17 = iArr310;
                            i18 = i615;
                            iN = iN3;
                            iArr15 = iArr13;
                            iArr16 = iArr14;
                            iArr13 = iArr22;
                            iArr14 = iArr23;
                            break;
                            break;
                        }
                    }
                    System.arraycopy(iArr15, 0, iArr210, 0, 8);
                    System.arraycopy(iArr16, 0, iArr3, 0, 8);
                    iArr18 = new int[22];
                    j10 = ((long) iArr3[0]) & 4294967295L;
                    j11 = 0;
                    i19 = 0;
                    do {
                        long j711 = ((((long) iArr[i19]) & 4294967295L) * j10) + j11;
                        iArr18[i19] = (int) j711;
                        j11 = j711 >>> 32;
                        i19++;
                    } while (i19 < 14);
                    iArr18[14] = (int) j11;
                    while (i20 < 8) {
                        iArr18[i20 + 14] = jb9.H(iArr3[i20], i20, iArr, iArr18);
                    }
                    if (iArr3[7] < 0) {
                        jb9.e(8, iArr24, iArr18);
                        jb9.h0(8, iArr, iArr18);
                    }
                    byte[] bArr15 = new byte[88];
                    g67.o(bArr15, 22, iArr18);
                    long jL14 = ((long) g67.l(bArr15, 0)) & 4294967295L;
                    long jK13 = ((long) (g67.k(bArr15, 4) << 4)) & 4294967295L;
                    long jL15 = ((long) g67.l(bArr15, 7)) & 4294967295L;
                    long jK14 = ((long) (g67.k(bArr15, 11) << 4)) & 4294967295L;
                    long jL16 = ((long) g67.l(bArr15, 14)) & 4294967295L;
                    long jK15 = ((long) (g67.k(bArr15, 18) << 4)) & 4294967295L;
                    long jL17 = ((long) g67.l(bArr15, 21)) & 4294967295L;
                    long jK16 = ((long) (g67.k(bArr15, 25) << 4)) & 4294967295L;
                    long jL18 = ((long) g67.l(bArr15, 28)) & 4294967295L;
                    long jK17 = ((long) (g67.k(bArr15, 32) << 4)) & 4294967295L;
                    long jL19 = ((long) g67.l(bArr15, 35)) & 4294967295L;
                    long jK18 = ((long) (g67.k(bArr15, 39) << 4)) & 4294967295L;
                    long jL20 = ((long) g67.l(bArr15, 42)) & 4294967295L;
                    long jK19 = ((long) (g67.k(bArr15, 46) << 4)) & 4294967295L;
                    long jL21 = ((long) g67.l(bArr15, 49)) & 4294967295L;
                    long jK20 = ((long) (g67.k(bArr15, 53) << 4)) & 4294967295L;
                    long jL22 = ((long) g67.l(bArr15, 56)) & 4294967295L;
                    long jK21 = g67.k(bArr15, 60) << 4;
                    long j712 = jK21 & 4294967295L;
                    long jL110 = ((long) g67.l(bArr15, 63)) & 4294967295L;
                    long jK110 = ((long) (g67.k(bArr15, 67) << 4)) & 4294967295L;
                    long jL111 = g67.l(bArr15, 70);
                    long j713 = jL111 & 4294967295L;
                    long jK111 = ((long) (g67.k(bArr15, 74) << 4)) & 4294967295L;
                    long jL112 = ((long) g67.l(bArr15, 77)) & 4294967295L;
                    long jK112 = ((long) (g67.k(bArr15, 81) << 4)) & 4294967295L;
                    long jL113 = g67.l(bArr15, 84);
                    long j714 = (jL113 & 4294967295L) >>> 28;
                    long j715 = (j714 * 43969588) + jK17;
                    long j716 = (j714 * 30366549) + jL19;
                    long j717 = (j714 * 163752818) + jK18;
                    long j718 = (j714 * 258169998) + jL20;
                    long j719 = (j714 * 96434764) + jK19;
                    long j810 = (j714 * 227822194) + jL21;
                    long j811 = (j714 * 149865618) + jK20;
                    long j812 = (j714 * 550336261) + jL22;
                    long j813 = jK111 + (j713 >>> 28);
                    long j814 = jL111 & 268435455;
                    long j815 = jL112 + (j813 >>> 28);
                    long j816 = jK112 + (j815 >>> 28);
                    long j817 = j815 & 268435455;
                    long j818 = (jL113 & 268435455) + (j816 >>> 28);
                    long j819 = j816 & 268435455;
                    long j910 = (j818 * 30366549) + j715;
                    long j911 = (j818 * 258169998) + j717;
                    long j912 = (j818 * 227822194) + j719;
                    long j913 = (j819 * 43969588) + jK16;
                    long j914 = (j819 * 30366549) + (j818 * 43969588) + jL18;
                    long j915 = (j819 * 163752818) + j910;
                    long j916 = (j819 * 258169998) + (j818 * 163752818) + j716;
                    long j917 = (j819 * 96434764) + j911;
                    long j918 = (j819 * 227822194) + (j818 * 96434764) + j718;
                    long j919 = (j819 * 149865618) + j912;
                    long j1010 = (j819 * 550336261) + (j818 * 149865618) + j810;
                    long j1011 = (j817 * 43969588) + jL17;
                    long j1012 = (j817 * 30366549) + j913;
                    long j1013 = (j817 * 163752818) + j914;
                    long j1014 = (j817 * 258169998) + j915;
                    long j1015 = (j817 * 96434764) + j916;
                    long j1016 = (j817 * 227822194) + j917;
                    long j1017 = (j817 * 149865618) + j918;
                    long j1018 = (j817 * 550336261) + j919;
                    long j1019 = jL110 + (j712 >>> 28);
                    long j1110 = jK21 & 268435455;
                    long j1111 = jK110 + (j1019 >>> 28);
                    long j1112 = j814 + (j1111 >>> 28);
                    long j1113 = j1111 & 268435455;
                    long j1114 = (j813 & 268435455) + (j1112 >>> 28);
                    long j1115 = j1112 & 268435455;
                    long j1116 = (j1114 * 43969588) + jK15;
                    long j1117 = (j1114 * 30366549) + j1011;
                    long j1118 = (j1114 * 163752818) + j1012;
                    long j1119 = (j1114 * 258169998) + j1013;
                    long j1210 = (j1114 * 96434764) + j1014;
                    long j1211 = (j1114 * 227822194) + j1015;
                    long j1212 = (j1114 * 149865618) + j1016;
                    long j1213 = (j1114 * 550336261) + j1017;
                    long j1214 = (j1115 * 43969588) + jL16;
                    long j1215 = (j1115 * 30366549) + j1116;
                    long j1216 = (j1115 * 163752818) + j1117;
                    long j1217 = (j1115 * 258169998) + j1118;
                    long j1218 = (j1115 * 96434764) + j1119;
                    long j1219 = (j1115 * 227822194) + j1210;
                    long j1310 = (j1115 * 149865618) + j1211;
                    long j1311 = (j1115 * 550336261) + j1212;
                    long j1312 = (j1113 * 43969588) + jK14;
                    long j1313 = (j1113 * 30366549) + j1214;
                    long j1314 = (j1113 * 163752818) + j1215;
                    long j1315 = (j1113 * 258169998) + j1216;
                    long j1316 = (j1113 * 96434764) + j1217;
                    long j1317 = (j1113 * 227822194) + j1218;
                    long j1318 = (j1113 * 149865618) + j1219;
                    long j1319 = (j818 * 550336261) + j811 + (j1010 >>> 28);
                    long j1410 = j1010 & 268435455;
                    long j1411 = j812 + (j1319 >>> 28);
                    long j1412 = j1110 + (j1411 >>> 28);
                    long j1413 = (j1019 & 268435455) + (j1412 >>> 28);
                    long j1414 = j1412 & 268435455;
                    long j1415 = (j1413 * 43969588) + jL15;
                    long j1416 = (j1413 * 30366549) + j1312;
                    long j1417 = (j1413 * 163752818) + j1313;
                    long j1418 = (j1413 * 258169998) + j1314;
                    long j1419 = (j1413 * 96434764) + j1315;
                    long j1510 = (j1413 * 227822194) + j1316;
                    long j1511 = (j1413 * 149865618) + j1317;
                    long j1512 = (j1413 * 550336261) + j1318;
                    long j1513 = (43969588 * j1414) + jK13;
                    long j1514 = (30366549 * j1414) + j1415;
                    long j1515 = (163752818 * j1414) + j1416;
                    long j1516 = (258169998 * j1414) + j1417;
                    long j1517 = (96434764 * j1414) + j1418;
                    long j1518 = (227822194 * j1414) + j1419;
                    long j1519 = (149865618 * j1414) + j1510;
                    long j1610 = (j1414 * 550336261) + j1511;
                    long j1611 = ((j1411 & 268435455) * 4) + ((j1319 & 268435455) >>> 26) + 1;
                    long j1612 = (j1611 * 78101261) + jL14;
                    long j1613 = (j1611 * 141809365) + j1513;
                    long j1614 = (j1611 * 175155932) + j1514;
                    long j1615 = (j1611 * 64542499) + j1515;
                    long j1616 = (j1611 * 158326419) + j1516;
                    long j1617 = (j1611 * 191173276) + j1517;
                    long j1618 = (j1611 * 104575268) + j1518;
                    long j1619 = (j1611 * 137584065) + j1519;
                    long j1710 = j1613 + (j1612 >>> 28);
                    long j1711 = j1614 + (j1710 >>> 28);
                    long j1712 = j1615 + (j1711 >>> 28);
                    long j1713 = j1616 + (j1712 >>> 28);
                    long j1714 = j1617 + (j1713 >>> 28);
                    long j1715 = j1618 + (j1714 >>> 28);
                    long j1716 = j1619 + (j1715 >>> 28);
                    long j1717 = j1610 + (j1716 >>> 28);
                    long j1718 = j1512 + (j1717 >>> 28);
                    long j1719 = (j1113 * 550336261) + j1310 + (j1718 >>> 28);
                    long j1810 = j1311 + (j1719 >>> 28);
                    long j1811 = j1213 + (j1810 >>> 28);
                    long j1812 = j1018 + (j1811 >>> 28);
                    long j1813 = j1410 + (j1812 >>> 28);
                    long j1814 = (j1319 & 67108863) + (j1813 >>> 28);
                    long j1815 = (j1814 >>> 26) - 1;
                    long j1816 = (j1612 & 268435455) - (j1815 & 78101261);
                    long j1817 = ((j1710 & 268435455) - (j1815 & 141809365)) + (j1816 >> 28);
                    long j1818 = ((j1711 & 268435455) - (j1815 & 175155932)) + (j1817 >> 28);
                    long j1819 = ((j1712 & 268435455) - (j1815 & 64542499)) + (j1818 >> 28);
                    long j1910 = ((j1713 & 268435455) - (j1815 & 158326419)) + (j1819 >> 28);
                    long j1911 = ((j1714 & 268435455) - (j1815 & 191173276)) + (j1910 >> 28);
                    long j1912 = ((j1715 & 268435455) - (j1815 & 104575268)) + (j1911 >> 28);
                    long j1913 = ((j1716 & 268435455) - (j1815 & 137584065)) + (j1912 >> 28);
                    long j1914 = (j1717 & 268435455) + (j1913 >> 28);
                    long j1915 = (j1718 & 268435455) + (j1914 >> 28);
                    long j1916 = (j1719 & 268435455) + (j1915 >> 28);
                    long j1917 = (j1810 & 268435455) + (j1916 >> 28);
                    long j1918 = (j1811 & 268435455) + (j1917 >> 28);
                    long j1919 = (j1812 & 268435455) + (j1918 >> 28);
                    long j201 = (j1813 & 268435455) + (j1919 >> 28);
                    byte[] bArr16 = new byte[57];
                    g67.p(0, (j1816 & 268435455) | ((j1817 & 268435455) << 28), bArr16);
                    g67.p(7, ((j1819 & 268435455) << 28) | (j1818 & 268435455), bArr16);
                    g67.p(14, (j1910 & 268435455) | ((j1911 & 268435455) << 28), bArr16);
                    g67.p(21, (j1912 & 268435455) | ((j1913 & 268435455) << 28), bArr16);
                    g67.p(28, (j1914 & 268435455) | ((j1915 & 268435455) << 28), bArr16);
                    g67.p(35, (j1916 & 268435455) | ((j1917 & 268435455) << 28), bArr16);
                    g67.p(42, (j1918 & 268435455) | ((j1919 & 268435455) << 28), bArr16);
                    g67.p(49, (j201 & 268435455) | (((j1814 & 67108863) + (j201 >> 28)) << 28), bArr16);
                    od2.c(bArr16, iArr);
                    bp0Var = new bp0();
                    U();
                    bArr4 = new byte[450];
                    i21 = 225;
                    bArr5 = new byte[225];
                    bArr6 = new byte[225];
                    l73.p(bArr4, 7, iArr);
                    l73.p(bArr5, 5, iArr210);
                    l73.p(bArr6, 5, iArr3);
                    bp0VarArr = new bp0[8];
                    bp0VarArr2 = new bp0[8];
                    gs2Var = new gs2();
                    i22 = 0;
                    T(l39Var3, bp0VarArr, 0, 8, gs2Var);
                    T(l39Var, bp0VarArr2, 0, 8, gs2Var);
                    iArr19 = (int[]) bp0Var.a;
                    i24 = 16;
                    while (i23 < 16) {
                        iArr19[i23] = 0;
                    }
                    iArr20 = (int[]) bp0Var.b;
                    iArr20[0] = 1;
                    while (i25 < 16) {
                        iArr20[i25] = 0;
                    }
                    iArr21 = (int[]) bp0Var.c;
                    iArr21[0] = 1;
                    i26 = 1;
                    while (i26 < i24) {
                        iArr21[i26] = i22;
                        i26++;
                        i24 = 16;
                        i22 = 0;
                    }
                    while (true) {
                        i27 = i21 - 1;
                        if (i27 >= 0) {
                            break;
                            break;
                        }
                        if ((bArr4[i21 + 224] | bArr4[i27] | bArr5[i27] | bArr6[i27]) != 0) {
                            break;
                            break;
                        }
                        i21 = i27;
                    }
                    while (i27 >= 0) {
                        b3 = bArr4[i27];
                        if (b3 != 0) {
                            int i616 = (b3 >> 1) ^ (b3 >> 31);
                            if (b3 < 0) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            P(z9, i[i616], bp0Var, gs2Var);
                        }
                        b4 = bArr4[i27 + 225];
                        if (b4 != 0) {
                            int i617 = (b4 >> 1) ^ (b4 >> 31);
                            if (b4 < 0) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            P(z8, j[i617], bp0Var, gs2Var);
                        }
                        b5 = bArr5[i27];
                        if (b5 != 0) {
                            int i618 = (b5 >> 1) ^ (b5 >> 31);
                            if (b5 < 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            O(z7, bp0VarArr[i618], bp0Var, gs2Var);
                        }
                        b6 = bArr6[i27];
                        if (b6 != 0) {
                            int i619 = (b6 >> 1) ^ (b6 >> 31);
                            if (b6 < 0) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            O(z6, bp0VarArr2[i619], bp0Var, gs2Var);
                        }
                        S(bp0Var, gs2Var);
                        i27--;
                    }
                    S(bp0Var, gs2Var);
                    int[] iArr311 = (int[]) bp0Var.a;
                    zh8.E(iArr311, 1);
                    zh8.E(iArr311, -1);
                    int[] iArr312 = (int[]) bp0Var.b;
                    zh8.E(iArr312, 1);
                    zh8.E(iArr312, -1);
                    int[] iArr313 = (int[]) bp0Var.c;
                    zh8.E(iArr313, 1);
                    zh8.E(iArr313, -1);
                    return zh8.w((int[]) bp0Var.a) == 0 ? false : false;
                }
            }
        }
        return false;
    }

    public static void E0(JSONObject jSONObject, String str, String str2) throws JSONException {
        jSONObject.put(str, str2);
        jSONObject.put("recaptchaVersion", "RECAPTCHA_ENTERPRISE");
        jSONObject.put("clientType", "CLIENT_TYPE_ANDROID");
    }

    public static void F(bp0[] bp0VarArr) {
        int length = bp0VarArr.length;
        int[] iArr = new int[length * 16];
        int[] iArr2 = new int[16];
        zh8.g(0, 0, (int[]) bp0VarArr[0].c, iArr2);
        zh8.g(0, 0, iArr2, iArr);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= length) {
                break;
            }
            zh8.z(iArr2, (int[]) bp0VarArr[i3].c, iArr2);
            zh8.g(0, i3 * 16, iArr2, iArr);
            i2 = i3;
        }
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[14];
        zh8.g(0, 0, iArr2, iArr3);
        zh8.E(iArr3, 1);
        zh8.E(iArr3, -1);
        zh8.m(0, 0, iArr3, iArr4);
        zh8.m(8, 7, iArr3, iArr4);
        lg7.z(zh8.f, iArr4, iArr4);
        zh8.i(0, 0, iArr4, iArr2);
        zh8.i(7, 8, iArr4, iArr2);
        int[] iArr5 = new int[16];
        while (i2 > 0) {
            int i4 = i2 - 1;
            zh8.g(i4 * 16, 0, iArr, iArr5);
            zh8.z(iArr5, iArr2, iArr5);
            zh8.z(iArr2, (int[]) bp0VarArr[i2].c, iArr2);
            zh8.g(0, 0, iArr5, (int[]) bp0VarArr[i2].c);
            i2 = i4;
        }
        zh8.g(0, 0, iArr2, (int[]) bp0VarArr[0].c);
    }

    public static int F0(Parcel parcel, int i2) {
        parcel.writeInt(i2 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void G0(Parcel parcel, int i2) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i2 - 4);
        parcel.writeInt(iDataPosition - i2);
        parcel.setDataPosition(iDataPosition);
    }

    public static qj4 J(tl4 tl4Var) {
        int strictness = tl4Var.getStrictness();
        if (strictness == 2) {
            tl4Var.setStrictness(1);
        }
        try {
            try {
                qj4 qj4VarT = od2.t(tl4Var);
                tl4Var.setStrictness(strictness);
                return qj4VarT;
            } catch (Throwable th) {
                tl4Var.setStrictness(strictness);
                throw th;
            }
        } catch (OutOfMemoryError | StackOverflowError e2) {
            throw new gl4("Failed parsing JSON source: " + tl4Var + " to Json", e2);
        }
    }

    public static qj4 K(String str) {
        try {
            try {
                tl4 tl4Var = new tl4(new StringReader(str));
                qj4 qj4VarJ = J(tl4Var);
                try {
                    qj4VarJ.getClass();
                    if (!(qj4VarJ instanceof el4) && tl4Var.peek() != 10) {
                        throw new km4("Did not consume the entire document.");
                    }
                    return qj4VarJ;
                } catch (NumberFormatException e2) {
                    e = e2;
                    throw new km4(e);
                }
            } catch (IOException e3) {
                throw new ik4(e3);
            }
        } catch (NumberFormatException | m55 e4) {
            e = e4;
        }
    }

    public static PorterDuff.Mode L(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case Argon2.V10 /* 16 */:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static String M(List list) {
        if (list.isEmpty()) {
            return "/";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        boolean z = true;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!z) {
                sb.append("/");
            }
            sb.append(str);
            z = false;
        }
        return sb.toString();
    }

    public static void N(bp0 bp0Var, bp0 bp0Var2, gs2 gs2Var) {
        int[] iArr = (int[]) gs2Var.a;
        int[] iArr2 = (int[]) gs2Var.b;
        int[] iArr3 = (int[]) gs2Var.c;
        int[] iArr4 = (int[]) gs2Var.d;
        int[] iArr5 = (int[]) gs2Var.e;
        int[] iArr6 = (int[]) gs2Var.f;
        int[] iArr7 = (int[]) gs2Var.g;
        int[] iArr8 = (int[]) gs2Var.h;
        zh8.z((int[]) bp0Var.c, (int[]) bp0Var2.c, iArr);
        zh8.L(iArr, iArr2);
        int[] iArr9 = (int[]) bp0Var.a;
        int[] iArr10 = (int[]) bp0Var2.a;
        zh8.z(iArr9, iArr10, iArr3);
        int[] iArr11 = (int[]) bp0Var.b;
        int[] iArr12 = (int[]) bp0Var2.b;
        zh8.z(iArr11, iArr12, iArr4);
        zh8.z(iArr3, iArr4, iArr5);
        zh8.y(39081, iArr5, iArr5);
        zh8.b(iArr2, iArr5, iArr6);
        zh8.M(iArr2, iArr5, iArr7);
        zh8.b(iArr11, iArr9, iArr8);
        zh8.b(iArr12, iArr10, iArr5);
        zh8.z(iArr8, iArr5, iArr8);
        zh8.b(iArr4, iArr3, iArr2);
        zh8.M(iArr4, iArr3, iArr5);
        zh8.d(iArr2);
        zh8.M(iArr8, iArr2, iArr8);
        zh8.z(iArr8, iArr, iArr8);
        zh8.z(iArr5, iArr, iArr5);
        zh8.z(iArr6, iArr8, iArr10);
        zh8.z(iArr5, iArr7, iArr12);
        zh8.z(iArr6, iArr7, (int[]) bp0Var2.c);
    }

    public static void O(boolean z, bp0 bp0Var, bp0 bp0Var2, gs2 gs2Var) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5 = (int[]) bp0Var2.c;
        int[] iArr6 = (int[]) gs2Var.a;
        int[] iArr7 = (int[]) gs2Var.b;
        int[] iArr8 = (int[]) gs2Var.c;
        int[] iArr9 = (int[]) gs2Var.d;
        int[] iArr10 = (int[]) gs2Var.e;
        int[] iArr11 = (int[]) gs2Var.f;
        int[] iArr12 = (int[]) gs2Var.g;
        int[] iArr13 = (int[]) gs2Var.h;
        int[] iArr14 = (int[]) bp0Var.b;
        int[] iArr15 = (int[]) bp0Var.a;
        if (z) {
            zh8.M(iArr14, iArr15, iArr13);
            iArr2 = iArr7;
            iArr = iArr10;
            iArr4 = iArr11;
            iArr3 = iArr12;
        } else {
            zh8.b(iArr14, iArr15, iArr13);
            iArr = iArr7;
            iArr2 = iArr10;
            iArr3 = iArr11;
            iArr4 = iArr12;
        }
        int[] iArr16 = (int[]) bp0Var.c;
        int[] iArr17 = (int[]) bp0Var2.b;
        int[] iArr18 = (int[]) bp0Var2.a;
        zh8.z(iArr16, iArr5, iArr6);
        zh8.L(iArr6, iArr7);
        zh8.z((int[]) bp0Var.a, iArr18, iArr8);
        zh8.z((int[]) bp0Var.b, iArr17, iArr9);
        zh8.z(iArr8, iArr9, iArr10);
        zh8.y(39081, iArr10, iArr10);
        zh8.b(iArr7, iArr10, iArr3);
        zh8.M(iArr7, iArr10, iArr4);
        zh8.b(iArr17, iArr18, iArr10);
        zh8.z(iArr13, iArr10, iArr13);
        zh8.b(iArr9, iArr8, iArr);
        zh8.M(iArr9, iArr8, iArr2);
        zh8.d(iArr);
        zh8.M(iArr13, iArr7, iArr13);
        zh8.z(iArr13, iArr6, iArr13);
        zh8.z(iArr10, iArr6, iArr10);
        zh8.z(iArr11, iArr13, iArr18);
        zh8.z(iArr10, iArr12, iArr17);
        zh8.z(iArr11, iArr12, iArr5);
    }

    public static void P(boolean z, l39 l39Var, bp0 bp0Var, gs2 gs2Var) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5 = (int[]) gs2Var.b;
        int[] iArr6 = (int[]) gs2Var.c;
        int[] iArr7 = (int[]) gs2Var.d;
        int[] iArr8 = (int[]) gs2Var.e;
        int[] iArr9 = (int[]) gs2Var.f;
        int[] iArr10 = (int[]) gs2Var.g;
        int[] iArr11 = (int[]) gs2Var.h;
        if (z) {
            zh8.M((int[]) l39Var.c, (int[]) l39Var.b, iArr11);
            iArr2 = iArr5;
            iArr = iArr8;
            iArr4 = iArr9;
            iArr3 = iArr10;
        } else {
            zh8.b((int[]) l39Var.c, (int[]) l39Var.b, iArr11);
            iArr = iArr5;
            iArr2 = iArr8;
            iArr3 = iArr9;
            iArr4 = iArr10;
        }
        int[] iArr12 = (int[]) bp0Var.c;
        int[] iArr13 = (int[]) bp0Var.b;
        int[] iArr14 = (int[]) bp0Var.a;
        zh8.L(iArr12, iArr5);
        zh8.z((int[]) l39Var.b, iArr14, iArr6);
        zh8.z((int[]) l39Var.c, iArr13, iArr7);
        zh8.z(iArr6, iArr7, iArr8);
        zh8.y(39081, iArr8, iArr8);
        zh8.b(iArr5, iArr8, iArr3);
        zh8.M(iArr5, iArr8, iArr4);
        zh8.b(iArr13, iArr14, iArr8);
        zh8.z(iArr11, iArr8, iArr11);
        zh8.b(iArr7, iArr6, iArr);
        zh8.M(iArr7, iArr6, iArr2);
        zh8.d(iArr);
        zh8.M(iArr11, iArr5, iArr11);
        zh8.z(iArr11, iArr12, iArr11);
        zh8.z(iArr8, iArr12, iArr8);
        zh8.z(iArr9, iArr11, iArr14);
        zh8.z(iArr8, iArr10, iArr13);
        zh8.z(iArr9, iArr10, iArr12);
    }

    public static void Q(bp0 bp0Var, bp0 bp0Var2) {
        zh8.g(0, 0, (int[]) bp0Var.a, (int[]) bp0Var2.a);
        zh8.g(0, 0, (int[]) bp0Var.b, (int[]) bp0Var2.b);
        zh8.g(0, 0, (int[]) bp0Var.c, (int[]) bp0Var2.c);
    }

    public static void R(l39 l39Var, bp0 bp0Var) {
        zh8.g(0, 0, (int[]) l39Var.b, (int[]) bp0Var.a);
        zh8.g(0, 0, (int[]) l39Var.c, (int[]) bp0Var.b);
        int[] iArr = (int[]) bp0Var.c;
        iArr[0] = 1;
        for (int i2 = 1; i2 < 16; i2++) {
            iArr[i2] = 0;
        }
    }

    public static void S(bp0 bp0Var, gs2 gs2Var) {
        int[] iArr = (int[]) gs2Var.b;
        int[] iArr2 = (int[]) gs2Var.c;
        int[] iArr3 = (int[]) gs2Var.d;
        int[] iArr4 = (int[]) gs2Var.e;
        int[] iArr5 = (int[]) gs2Var.h;
        int[] iArr6 = (int[]) gs2Var.a;
        int[] iArr7 = (int[]) bp0Var.a;
        int[] iArr8 = (int[]) bp0Var.b;
        zh8.b(iArr7, iArr8, iArr);
        zh8.L(iArr, iArr);
        zh8.L(iArr7, iArr2);
        zh8.L(iArr8, iArr3);
        zh8.b(iArr2, iArr3, iArr4);
        zh8.d(iArr4);
        int[] iArr9 = (int[]) bp0Var.c;
        zh8.L(iArr9, iArr5);
        zh8.b(iArr5, iArr5, iArr5);
        zh8.d(iArr5);
        zh8.M(iArr4, iArr5, iArr6);
        zh8.M(iArr, iArr4, iArr);
        zh8.M(iArr2, iArr3, iArr2);
        zh8.z(iArr, iArr6, iArr7);
        zh8.z(iArr4, iArr2, iArr8);
        zh8.z(iArr4, iArr6, iArr9);
    }

    public static void T(l39 l39Var, bp0[] bp0VarArr, int i2, int i3, gs2 gs2Var) {
        bp0 bp0Var = new bp0();
        R(l39Var, bp0Var);
        S(bp0Var, gs2Var);
        bp0 bp0Var2 = new bp0();
        bp0VarArr[i2] = bp0Var2;
        R(l39Var, bp0Var2);
        for (int i4 = 1; i4 < i3; i4++) {
            int i5 = i2 + i4;
            bp0 bp0Var3 = new bp0();
            bp0VarArr[i5] = bp0Var3;
            Q(bp0VarArr[i5 - 1], bp0Var3);
            N(bp0Var, bp0VarArr[i5], gs2Var);
        }
    }

    public static void U() {
        synchronized (h) {
            try {
                if (k != null) {
                    return;
                }
                bp0[] bp0VarArr = new bp0[144];
                gs2 gs2Var = new gs2();
                l39 l39Var = new l39(3);
                int i2 = 0;
                zh8.g(0, 0, d, (int[]) l39Var.b);
                zh8.g(0, 0, e, (int[]) l39Var.c);
                T(l39Var, bp0VarArr, 0, 32, gs2Var);
                l39 l39Var2 = new l39(3);
                zh8.g(0, 0, f, (int[]) l39Var2.b);
                zh8.g(0, 0, g, (int[]) l39Var2.c);
                T(l39Var2, bp0VarArr, 32, 32, gs2Var);
                bp0 bp0Var = new bp0();
                R(l39Var, bp0Var);
                int i3 = 5;
                bp0[] bp0VarArr2 = new bp0[5];
                for (int i4 = 0; i4 < 5; i4++) {
                    bp0VarArr2[i4] = new bp0();
                }
                int i5 = 0;
                int i6 = 64;
                while (i5 < i3) {
                    int i7 = i6 + 1;
                    bp0 bp0Var2 = new bp0();
                    bp0VarArr[i6] = bp0Var2;
                    int i8 = i2;
                    while (i8 < i3) {
                        if (i8 == 0) {
                            Q(bp0Var, bp0Var2);
                        } else {
                            N(bp0Var, bp0Var2, gs2Var);
                        }
                        S(bp0Var, gs2Var);
                        Q(bp0Var, bp0VarArr2[i8]);
                        if (i5 + i8 != 8) {
                            for (int i9 = 1; i9 < 18; i9++) {
                                S(bp0Var, gs2Var);
                            }
                        }
                        i8++;
                        i3 = 5;
                    }
                    int[] iArr = (int[]) bp0Var2.a;
                    zh8.M(new int[16], iArr, iArr);
                    int i10 = i2;
                    i6 = i7;
                    while (i10 < 4) {
                        int i11 = 1 << i10;
                        int i12 = i2;
                        while (i12 < i11) {
                            bp0 bp0Var3 = new bp0();
                            bp0VarArr[i6] = bp0Var3;
                            Q(bp0VarArr[i6 - i11], bp0Var3);
                            N(bp0VarArr2[i10], bp0VarArr[i6], gs2Var);
                            i12++;
                            i6++;
                        }
                        i10++;
                        i2 = 0;
                    }
                    i5++;
                    i3 = 5;
                    i2 = 0;
                }
                F(bp0VarArr);
                i = new l39[32];
                for (int i13 = 0; i13 < 32; i13++) {
                    bp0 bp0Var4 = bp0VarArr[i13];
                    l39[] l39VarArr = i;
                    l39 l39Var3 = new l39(3);
                    l39VarArr[i13] = l39Var3;
                    zh8.z((int[]) bp0Var4.a, (int[]) bp0Var4.c, (int[]) l39Var3.b);
                    int[] iArr2 = (int[]) l39Var3.b;
                    zh8.E(iArr2, 1);
                    zh8.E(iArr2, -1);
                    zh8.z((int[]) bp0Var4.b, (int[]) bp0Var4.c, (int[]) l39Var3.c);
                    int[] iArr3 = (int[]) l39Var3.c;
                    zh8.E(iArr3, 1);
                    zh8.E(iArr3, -1);
                }
                j = new l39[32];
                for (int i14 = 0; i14 < 32; i14++) {
                    bp0 bp0Var5 = bp0VarArr[32 + i14];
                    l39[] l39VarArr2 = j;
                    l39 l39Var4 = new l39(3);
                    l39VarArr2[i14] = l39Var4;
                    zh8.z((int[]) bp0Var5.a, (int[]) bp0Var5.c, (int[]) l39Var4.b);
                    int[] iArr4 = (int[]) l39Var4.b;
                    zh8.E(iArr4, 1);
                    zh8.E(iArr4, -1);
                    zh8.z((int[]) bp0Var5.b, (int[]) bp0Var5.c, (int[]) l39Var4.c);
                    int[] iArr5 = (int[]) l39Var4.c;
                    zh8.E(iArr5, 1);
                    zh8.E(iArr5, -1);
                }
                k = new int[2560];
                int i15 = 0;
                for (int i16 = 64; i16 < 144; i16++) {
                    bp0 bp0Var6 = bp0VarArr[i16];
                    int[] iArr6 = (int[]) bp0Var6.a;
                    zh8.z(iArr6, (int[]) bp0Var6.c, iArr6);
                    int[] iArr7 = (int[]) bp0Var6.a;
                    zh8.E(iArr7, 1);
                    zh8.E(iArr7, -1);
                    int[] iArr8 = (int[]) bp0Var6.b;
                    zh8.z(iArr8, (int[]) bp0Var6.c, iArr8);
                    int[] iArr9 = (int[]) bp0Var6.b;
                    zh8.E(iArr9, 1);
                    zh8.E(iArr9, -1);
                    zh8.g(0, i15, (int[]) bp0Var6.a, k);
                    zh8.g(0, i15 + 16, (int[]) bp0Var6.b, k);
                    i15 += 32;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void V(byte[] bArr, byte[] bArr2) {
        System.arraycopy(bArr, 0, bArr2, 0, 56);
        bArr2[0] = (byte) (bArr2[0] & 252);
        bArr2[55] = (byte) (bArr2[55] | 128);
        bArr2[56] = 0;
    }

    public static int[] W(ByteArrayInputStream byteArrayInputStream, int i2) {
        int[] iArr = new int[i2];
        int I = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            I += (int) ms8.I(byteArrayInputStream, 2);
            iArr[i3] = I;
        }
        return iArr;
    }

    public static tk2[] X(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, tk2[] tk2VarArr) throws IOException {
        byte[] bArr3 = rs9.i;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, rs9.j)) {
                l0.e("Unsupported meta version");
                return null;
            }
            int I = (int) ms8.I(fileInputStream, 2);
            byte[] bArrG = ms8.G(fileInputStream, (int) ms8.I(fileInputStream, 4), (int) ms8.I(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                l0.e("Content found after the end of file");
                return null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrG);
            try {
                tk2[] tk2VarArrZ = Z(byteArrayInputStream, bArr2, I, tk2VarArr);
                byteArrayInputStream.close();
                return tk2VarArrZ;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(rs9.d, bArr2)) {
            l0.e("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            return null;
        }
        if (!Arrays.equals(bArr, bArr3)) {
            l0.e("Unsupported meta version");
            return null;
        }
        int I2 = (int) ms8.I(fileInputStream, 1);
        byte[] bArrG2 = ms8.G(fileInputStream, (int) ms8.I(fileInputStream, 4), (int) ms8.I(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            l0.e("Content found after the end of file");
            return null;
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrG2);
        try {
            tk2[] tk2VarArrY = Y(byteArrayInputStream2, I2, tk2VarArr);
            byteArrayInputStream2.close();
            return tk2VarArrY;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static tk2[] Y(ByteArrayInputStream byteArrayInputStream, int i2, tk2[] tk2VarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new tk2[0];
        }
        if (i2 != tk2VarArr.length) {
            l0.e("Mismatched number of dex files found in metadata");
            return null;
        }
        String[] strArr = new String[i2];
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int I = (int) ms8.I(byteArrayInputStream, 2);
            iArr[i3] = (int) ms8.I(byteArrayInputStream, 2);
            strArr[i3] = new String(ms8.F(byteArrayInputStream, I), StandardCharsets.UTF_8);
        }
        for (int i4 = 0; i4 < i2; i4++) {
            tk2 tk2Var = tk2VarArr[i4];
            if (!tk2Var.b.equals(strArr[i4])) {
                l0.e("Order of dexfiles in metadata did not match baseline");
                return null;
            }
            int i5 = iArr[i4];
            tk2Var.e = i5;
            tk2Var.h = W(byteArrayInputStream, i5);
        }
        return tk2VarArr;
    }

    public static tk2[] Z(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i2, tk2[] tk2VarArr) throws IOException {
        tk2 tk2Var;
        if (byteArrayInputStream.available() == 0) {
            return new tk2[0];
        }
        if (i2 != tk2VarArr.length) {
            l0.e("Mismatched number of dex files found in metadata");
            return null;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            ms8.I(byteArrayInputStream, 2);
            String str = new String(ms8.F(byteArrayInputStream, (int) ms8.I(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long jI = ms8.I(byteArrayInputStream, 4);
            int I = (int) ms8.I(byteArrayInputStream, 2);
            if (tk2VarArr.length <= 0) {
                tk2Var = null;
                break;
            }
            int iIndexOf = str.indexOf("!");
            if (iIndexOf < 0) {
                iIndexOf = str.indexOf(":");
            }
            String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
            int i4 = 0;
            while (true) {
                if (i4 >= tk2VarArr.length) {
                    tk2Var = null;
                    break;
                }
                if (tk2VarArr[i4].b.equals(strSubstring)) {
                    tk2Var = tk2VarArr[i4];
                    break;
                }
                i4++;
            }
            if (tk2Var == null) {
                l0.e("Missing profile key: ".concat(str));
                return null;
            }
            tk2Var.d = jI;
            int[] iArrW = W(byteArrayInputStream, I);
            if (Arrays.equals(bArr, rs9.h)) {
                tk2Var.e = I;
                tk2Var.h = iArrW;
            }
        }
        return tk2VarArr;
    }

    public static void a(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        if (th != th2) {
            Integer num = wg4.a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = a26.a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static tk2[] a0(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, rs9.e)) {
            l0.e("Unsupported version");
            return null;
        }
        int I = (int) ms8.I(fileInputStream, 1);
        byte[] bArrG = ms8.G(fileInputStream, (int) ms8.I(fileInputStream, 4), (int) ms8.I(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            l0.e("Content found after the end of file");
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrG);
        try {
            tk2[] tk2VarArrB0 = b0(byteArrayInputStream, str, I);
            byteArrayInputStream.close();
            return tk2VarArrB0;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static tk2[] b0(ByteArrayInputStream byteArrayInputStream, String str, int i2) throws IOException {
        int i3 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new tk2[0];
        }
        tk2[] tk2VarArr = new tk2[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            int I = (int) ms8.I(byteArrayInputStream, 2);
            int I2 = (int) ms8.I(byteArrayInputStream, 2);
            tk2VarArr[i4] = new tk2(str, new String(ms8.F(byteArrayInputStream, I), StandardCharsets.UTF_8), ms8.I(byteArrayInputStream, 4), I2, (int) ms8.I(byteArrayInputStream, 4), (int) ms8.I(byteArrayInputStream, 4), new int[I2], new TreeMap());
        }
        int i5 = 0;
        while (i5 < i2) {
            tk2 tk2Var = tk2VarArr[i5];
            int iAvailable = byteArrayInputStream.available();
            int i6 = tk2Var.f;
            int i7 = tk2Var.g;
            TreeMap treeMap = tk2Var.i;
            int i8 = iAvailable - i6;
            int I3 = i3;
            while (byteArrayInputStream.available() > i8) {
                I3 += (int) ms8.I(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(I3), 1);
                int I4 = (int) ms8.I(byteArrayInputStream, 2);
                while (I4 > 0) {
                    ms8.I(byteArrayInputStream, 2);
                    int I5 = (int) ms8.I(byteArrayInputStream, 1);
                    if (I5 != 6 && I5 != 7) {
                        while (I5 > 0) {
                            ms8.I(byteArrayInputStream, 1);
                            int i9 = i3;
                            int i10 = i5;
                            for (int I6 = (int) ms8.I(byteArrayInputStream, 1); I6 > 0; I6--) {
                                ms8.I(byteArrayInputStream, 2);
                            }
                            I5--;
                            i3 = i9;
                            i5 = i10;
                        }
                    }
                    I4--;
                    i3 = i3;
                    i5 = i5;
                }
            }
            int i11 = i3;
            int i12 = i5;
            if (byteArrayInputStream.available() != i8) {
                l0.e("Read too much data during profile line parse");
                return null;
            }
            tk2Var.h = W(byteArrayInputStream, tk2Var.e);
            BitSet bitSetValueOf = BitSet.valueOf(ms8.F(byteArrayInputStream, (((i7 * 2) + 7) & (-8)) / 8));
            for (int i13 = i11; i13 < i7; i13++) {
                int i14 = bitSetValueOf.get(i13) ? 2 : i11;
                if (bitSetValueOf.get(i13 + i7)) {
                    i14 |= 4;
                }
                if (i14 != 0) {
                    Integer numValueOf = (Integer) treeMap.get(Integer.valueOf(i13));
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(i11);
                    }
                    treeMap.put(Integer.valueOf(i13), Integer.valueOf(i14 | numValueOf.intValue()));
                }
            }
            i5 = i12 + 1;
            i3 = i11;
        }
        return tk2VarArr;
    }

    public static void d0(byte[] bArr, bp0 bp0Var) {
        int i2;
        int i3;
        int[] iArr = (int[]) bp0Var.c;
        int[] iArr2 = (int[]) bp0Var.b;
        int[] iArr3 = (int[]) bp0Var.a;
        U();
        int i4 = 15;
        int[] iArr4 = new int[15];
        od2.c(bArr, iArr4);
        int i5 = ~iArr4[0];
        int[] iArr5 = od2.e;
        int i6 = 1;
        long j2 = 4294967295L;
        long j3 = ((long) (-(i5 & 1))) & 4294967295L;
        long j4 = 0;
        int i7 = 0;
        while (true) {
            i2 = i4;
            if (i7 >= 14) {
                break;
            }
            int i8 = i6;
            long j5 = j3;
            long j6 = (((long) iArr4[i7]) & j2) + (((long) iArr5[i7]) & j5) + j4;
            iArr4[i7] = (int) j6;
            j4 = j6 >>> 32;
            i7++;
            i6 = i8;
            i4 = i2;
            j3 = j5;
            j2 = 4294967295L;
        }
        int i9 = i6;
        iArr4[14] = 4 + ((int) j4);
        int i10 = i2;
        int i11 = 0;
        while (true) {
            i10--;
            if (i10 < 0) {
                break;
            }
            int i12 = iArr4[i10];
            iArr4[i10] = (i11 << 31) | (i12 >>> 1);
            i11 = i12;
        }
        int[] iArr6 = new int[16];
        int[] iArr7 = new int[16];
        int[] iArr8 = new int[16];
        int[] iArr9 = new int[16];
        int[] iArr10 = new int[16];
        int[] iArr11 = new int[16];
        int[] iArr12 = new int[16];
        int[] iArr13 = new int[16];
        int[] iArr14 = new int[16];
        int[] iArr15 = new int[16];
        int i13 = 0;
        for (int i14 = 0; i14 < 16; i14++) {
            iArr3[i14] = 0;
        }
        iArr2[0] = i9;
        for (int i15 = i9; i15 < 16; i15++) {
            iArr2[i15] = 0;
        }
        iArr[0] = i9;
        for (int i16 = i9; i16 < 16; i16++) {
            iArr[i16] = 0;
        }
        int i17 = 17;
        while (true) {
            int[] iArr16 = iArr4;
            int i18 = i17;
            int i19 = i13;
            while (true) {
                i3 = i17;
                if (i19 >= 5) {
                    break;
                }
                int i20 = i13;
                int i21 = i20;
                for (int i22 = 5; i20 < i22; i22 = 5) {
                    i21 = (i21 & (~(i9 << i20))) ^ ((iArr16[i18 >>> 5] >>> (i18 & 31)) << i20);
                    i18 += 18;
                    i20++;
                }
                int i23 = -((i21 >>> 4) & 1);
                int i24 = (i21 ^ i23) & 15;
                int i25 = i19 * 512;
                int i26 = i19;
                int[] iArr17 = iArr8;
                for (int i27 = i13; i27 < 16; i27++) {
                    int i28 = ((i27 ^ i24) - 1) >> 31;
                    zh8.f(i28, i25, k, iArr6);
                    zh8.f(i28, i25 + 16, k, iArr7);
                    i25 += 32;
                }
                int[] iArr18 = new int[16];
                zh8.M(iArr18, iArr6, iArr18);
                zh8.f(i23, i13, iArr18, iArr6);
                zh8.L(iArr, iArr9);
                zh8.z(iArr6, iArr3, iArr10);
                zh8.z(iArr7, iArr2, iArr11);
                zh8.z(iArr10, iArr11, iArr12);
                zh8.y(39081, iArr12, iArr12);
                zh8.b(iArr9, iArr12, iArr13);
                zh8.M(iArr9, iArr12, iArr14);
                zh8.b(iArr7, iArr6, iArr15);
                zh8.b(iArr2, iArr3, iArr12);
                zh8.z(iArr15, iArr12, iArr15);
                zh8.b(iArr11, iArr10, iArr9);
                zh8.M(iArr11, iArr10, iArr12);
                zh8.d(iArr9);
                zh8.M(iArr15, iArr9, iArr15);
                zh8.z(iArr15, iArr, iArr15);
                zh8.z(iArr12, iArr, iArr12);
                zh8.z(iArr13, iArr15, iArr3);
                zh8.z(iArr12, iArr14, iArr2);
                zh8.z(iArr13, iArr14, iArr);
                i19 = i26 + 1;
                i17 = i3;
                iArr8 = iArr17;
            }
            int[] iArr19 = iArr8;
            int i29 = i13;
            int i30 = i3 - 1;
            if (i30 < 0) {
                return;
            }
            zh8.b(iArr3, iArr2, iArr9);
            zh8.L(iArr9, iArr9);
            zh8.L(iArr3, iArr10);
            zh8.L(iArr2, iArr11);
            zh8.b(iArr10, iArr11, iArr12);
            zh8.d(iArr12);
            zh8.L(iArr, iArr15);
            zh8.b(iArr15, iArr15, iArr15);
            zh8.d(iArr15);
            zh8.M(iArr12, iArr15, iArr19);
            zh8.M(iArr9, iArr12, iArr9);
            zh8.M(iArr10, iArr11, iArr10);
            zh8.z(iArr9, iArr19, iArr3);
            zh8.z(iArr12, iArr10, iArr2);
            zh8.z(iArr12, iArr19, iArr);
            i13 = i29;
            i17 = i30;
            iArr8 = iArr19;
            iArr4 = iArr16;
        }
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        f6.n(str);
    }

    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 int, still in use, count: 3, list:
      (r0v0 int) from 0x0007: SWITCH (r0v0 int)
     case -1811142716: goto B:118:0x0130
     case -1811142715: goto B:113:0x0123
     case -1811142714: goto B:108:0x0116
     case -1811142713: goto B:103:0x0109
     case -1811142712: goto B:98:0x00fc
     case -1811142711: goto B:93:0x00ef
     case -1811142710: goto B:88:0x00e2
     case -1811142709: goto B:83:0x00d5
     case -1811142708: goto B:78:0x00c8
     case -1811142707: goto B:73:0x00bb
     default: goto B:5:0x000a A[RegionRef:SW:4] (LINE:8)
      (r0v0 int) from 0x000a: SWITCH (r0v0 int)
     case -1811142685: goto B:68:0x00ae
     case -1811142684: goto B:63:0x00a1
     case -1811142683: goto B:58:0x0094
     default: goto B:6:0x000d A[RegionRef:SW:5] (LINE:11)
      (r0v0 int) from 0x000d: SWITCH (r0v0 int)
     case 80123371: goto B:53:0x0087
     case 80123372: goto B:48:0x007a
     case 80123373: goto B:43:0x006d
     case 80123374: goto B:38:0x0060
     case 80123375: goto B:33:0x0053
     case 80123376: goto B:28:0x0046
     case 80123377: goto B:23:0x0039
     case 80123378: goto B:18:0x002c
     case 80123379: goto B:13:0x001f
     case 80123380: goto B:8:0x0012
     default: goto B:313:? A[RegionRef:SW:6] (LINE:14)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String f0(String str) {
        switch (str) {
            case "kotlin.jvm.internal.DoubleCompanionObject":
                return "Companion";
            case "java.lang.Integer":
                return "Int";
            case "java.lang.Cloneable":
                return "Cloneable";
            case "java.lang.annotation.Annotation":
                return "Annotation";
            case "java.lang.Comparable":
                return "Comparable";
            case "java.util.Map":
                return "Map";
            case "java.util.Set":
                return "Set";
            case "double":
                return "Double";
            case "kotlin.jvm.internal.ByteCompanionObject":
                return "Companion";
            case "java.lang.CharSequence":
                return "CharSequence";
            case "java.util.Collection":
                return "Collection";
            case "java.lang.Float":
                return "Float";
            case "java.lang.Short":
                return "Short";
            case "kotlin.jvm.internal.CharCompanionObject":
                return "Companion";
            case "kotlin.jvm.internal.LongCompanionObject":
                return "Companion";
            case "java.util.Map$Entry":
                return "Entry";
            case "int":
                return "Int";
            case "byte":
                return "Byte";
            case "char":
                return "Char";
            case "long":
                return "Long";
            case "boolean":
                return "Boolean";
            case "java.util.List":
                return "List";
            case "kotlin.jvm.internal.ShortCompanionObject":
                return "Companion";
            case "float":
                return "Float";
            case "short":
                return "Short";
            case "java.lang.Character":
                return "Char";
            case "kotlin.jvm.internal.EnumCompanionObject":
                return "Companion";
            case "java.lang.Boolean":
                return "Boolean";
            case "java.lang.Byte":
                return "Byte";
            case "java.lang.Enum":
                return "Enum";
            case "java.lang.Long":
                return "Long";
            case "kotlin.jvm.internal.FloatCompanionObject":
                return "Companion";
            case "java.util.Iterator":
                return "Iterator";
            case "java.util.ListIterator":
                return "ListIterator";
            case "kotlin.jvm.internal.StringCompanionObject":
                return "Companion";
            case "java.lang.Double":
                return "Double";
            case "java.lang.Number":
                return "Number";
            case "java.lang.Object":
                return "Any";
            case "java.lang.String":
                return "String";
            case "java.lang.Iterable":
                return "Iterable";
            case "kotlin.jvm.internal.BooleanCompanionObject":
                return "Companion";
            case "java.lang.Throwable":
                return "Throwable";
            case "kotlin.jvm.internal.IntCompanionObject":
                return "Companion";
            default:
                switch (str) {
                    case -1811142716:
                        if (str.equals("kotlin.jvm.functions.Function10")) {
                            return "Function10";
                        }
                        return null;
                    case -1811142715:
                        if (str.equals("kotlin.jvm.functions.Function11")) {
                            return "Function11";
                        }
                        return null;
                    case -1811142714:
                        if (str.equals("kotlin.jvm.functions.Function12")) {
                            return "Function12";
                        }
                        return null;
                    case -1811142713:
                        if (str.equals("kotlin.jvm.functions.Function13")) {
                            return "Function13";
                        }
                        return null;
                    case -1811142712:
                        if (str.equals("kotlin.jvm.functions.Function14")) {
                            return "Function14";
                        }
                        return null;
                    case -1811142711:
                        if (str.equals("kotlin.jvm.functions.Function15")) {
                            return "Function15";
                        }
                        return null;
                    case -1811142710:
                        if (str.equals("kotlin.jvm.functions.Function16")) {
                            return "Function16";
                        }
                        return null;
                    case -1811142709:
                        if (str.equals("kotlin.jvm.functions.Function17")) {
                            return "Function17";
                        }
                        return null;
                    case -1811142708:
                        if (str.equals("kotlin.jvm.functions.Function18")) {
                            return "Function18";
                        }
                        return null;
                    case -1811142707:
                        if (str.equals("kotlin.jvm.functions.Function19")) {
                            return "Function19";
                        }
                        return null;
                    default:
                        switch (str) {
                            case -1811142685:
                                if (str.equals("kotlin.jvm.functions.Function20")) {
                                    return "Function20";
                                }
                                return null;
                            case -1811142684:
                                if (str.equals("kotlin.jvm.functions.Function21")) {
                                    return "Function21";
                                }
                                return null;
                            case -1811142683:
                                if (str.equals("kotlin.jvm.functions.Function22")) {
                                    return "Function22";
                                }
                                return null;
                            default:
                                switch (str) {
                                    case 80123371:
                                        if (str.equals("kotlin.jvm.functions.Function0")) {
                                            return "Function0";
                                        }
                                        return null;
                                    case 80123372:
                                        if (str.equals("kotlin.jvm.functions.Function1")) {
                                            return "Function1";
                                        }
                                        return null;
                                    case 80123373:
                                        if (str.equals("kotlin.jvm.functions.Function2")) {
                                            return "Function2";
                                        }
                                        return null;
                                    case 80123374:
                                        if (str.equals("kotlin.jvm.functions.Function3")) {
                                            return "Function3";
                                        }
                                        return null;
                                    case 80123375:
                                        if (str.equals("kotlin.jvm.functions.Function4")) {
                                            return "Function4";
                                        }
                                        return null;
                                    case 80123376:
                                        if (str.equals("kotlin.jvm.functions.Function5")) {
                                            return "Function5";
                                        }
                                        return null;
                                    case 80123377:
                                        if (str.equals("kotlin.jvm.functions.Function6")) {
                                            return "Function6";
                                        }
                                        return null;
                                    case 80123378:
                                        if (str.equals("kotlin.jvm.functions.Function7")) {
                                            return "Function7";
                                        }
                                        return null;
                                    case 80123379:
                                        if (str.equals("kotlin.jvm.functions.Function8")) {
                                            return "Function8";
                                        }
                                        return null;
                                    case 80123380:
                                        if (str.equals("kotlin.jvm.functions.Function9")) {
                                            return "Function9";
                                        }
                                        return null;
                                    default:
                                        return null;
                                }
                        }
                }
        }
    }

    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 int, still in use, count: 3, list:
      (r0v0 int) from 0x0007: SWITCH (r0v0 int)
     case -1811142716: goto B:118:0x0130
     case -1811142715: goto B:113:0x0123
     case -1811142714: goto B:108:0x0116
     case -1811142713: goto B:103:0x0109
     case -1811142712: goto B:98:0x00fc
     case -1811142711: goto B:93:0x00ef
     case -1811142710: goto B:88:0x00e2
     case -1811142709: goto B:83:0x00d5
     case -1811142708: goto B:78:0x00c8
     case -1811142707: goto B:73:0x00bb
     default: goto B:5:0x000a A[RegionRef:SW:4] (LINE:8)
      (r0v0 int) from 0x000a: SWITCH (r0v0 int)
     case -1811142685: goto B:68:0x00ae
     case -1811142684: goto B:63:0x00a1
     case -1811142683: goto B:58:0x0094
     default: goto B:6:0x000d A[RegionRef:SW:5] (LINE:11)
      (r0v0 int) from 0x000d: SWITCH (r0v0 int)
     case 80123371: goto B:53:0x0087
     case 80123372: goto B:48:0x007a
     case 80123373: goto B:43:0x006d
     case 80123374: goto B:38:0x0060
     case 80123375: goto B:33:0x0053
     case 80123376: goto B:28:0x0046
     case 80123377: goto B:23:0x0039
     case 80123378: goto B:18:0x002c
     case 80123379: goto B:13:0x001f
     case 80123380: goto B:8:0x0012
     default: goto B:331:? A[RegionRef:SW:6] (LINE:14)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String g(String str) {
        switch (str) {
            case "kotlin.jvm.internal.DoubleCompanionObject":
                return "kotlin.Double.Companion";
            case "java.lang.Integer":
                return "kotlin.Int";
            case "java.lang.Cloneable":
                return "kotlin.Cloneable";
            case "java.lang.annotation.Annotation":
                return "kotlin.Annotation";
            case "java.lang.Comparable":
                return "kotlin.Comparable";
            case "java.util.Map":
                return "kotlin.collections.Map";
            case "java.util.Set":
                return "kotlin.collections.Set";
            case "double":
                return "kotlin.Double";
            case "kotlin.jvm.internal.ByteCompanionObject":
                return "kotlin.Byte.Companion";
            case "java.lang.CharSequence":
                return "kotlin.CharSequence";
            case "java.util.Collection":
                return "kotlin.collections.Collection";
            case "java.lang.Float":
                return "kotlin.Float";
            case "java.lang.Short":
                return "kotlin.Short";
            case "kotlin.jvm.internal.CharCompanionObject":
                return "kotlin.Char.Companion";
            case "kotlin.jvm.internal.LongCompanionObject":
                return "kotlin.Long.Companion";
            case "java.util.Map$Entry":
                return "kotlin.collections.Map.Entry";
            case "int":
                return "kotlin.Int";
            case "byte":
                return "kotlin.Byte";
            case "char":
                return "kotlin.Char";
            case "long":
                return "kotlin.Long";
            case "boolean":
                return "kotlin.Boolean";
            case "java.util.List":
                return "kotlin.collections.List";
            case "kotlin.jvm.internal.ShortCompanionObject":
                return "kotlin.Short.Companion";
            case "float":
                return "kotlin.Float";
            case "short":
                return "kotlin.Short";
            case "java.lang.Character":
                return "kotlin.Char";
            case "kotlin.jvm.internal.EnumCompanionObject":
                return "kotlin.Enum.Companion";
            case "java.lang.Boolean":
                return "kotlin.Boolean";
            case "java.lang.Byte":
                return "kotlin.Byte";
            case "java.lang.Enum":
                return "kotlin.Enum";
            case "java.lang.Long":
                return "kotlin.Long";
            case "kotlin.jvm.internal.FloatCompanionObject":
                return "kotlin.Float.Companion";
            case "java.util.Iterator":
                return "kotlin.collections.Iterator";
            case "java.util.ListIterator":
                return "kotlin.collections.ListIterator";
            case "kotlin.jvm.internal.StringCompanionObject":
                return "kotlin.String.Companion";
            case "java.lang.Double":
                return "kotlin.Double";
            case "java.lang.Number":
                return "kotlin.Number";
            case "java.lang.Object":
                return "kotlin.Any";
            case "java.lang.String":
                return "kotlin.String";
            case "java.lang.Iterable":
                return "kotlin.collections.Iterable";
            case "kotlin.jvm.internal.BooleanCompanionObject":
                return "kotlin.Boolean.Companion";
            case "java.lang.Throwable":
                return "kotlin.Throwable";
            case "kotlin.jvm.internal.IntCompanionObject":
                return "kotlin.Int.Companion";
            default:
                switch (str) {
                    case -1811142716:
                        if (str.equals("kotlin.jvm.functions.Function10")) {
                            return "kotlin.Function10";
                        }
                        return null;
                    case -1811142715:
                        if (str.equals("kotlin.jvm.functions.Function11")) {
                            return "kotlin.Function11";
                        }
                        return null;
                    case -1811142714:
                        if (str.equals("kotlin.jvm.functions.Function12")) {
                            return "kotlin.Function12";
                        }
                        return null;
                    case -1811142713:
                        if (str.equals("kotlin.jvm.functions.Function13")) {
                            return "kotlin.Function13";
                        }
                        return null;
                    case -1811142712:
                        if (str.equals("kotlin.jvm.functions.Function14")) {
                            return "kotlin.Function14";
                        }
                        return null;
                    case -1811142711:
                        if (str.equals("kotlin.jvm.functions.Function15")) {
                            return "kotlin.Function15";
                        }
                        return null;
                    case -1811142710:
                        if (str.equals("kotlin.jvm.functions.Function16")) {
                            return "kotlin.Function16";
                        }
                        return null;
                    case -1811142709:
                        if (str.equals("kotlin.jvm.functions.Function17")) {
                            return "kotlin.Function17";
                        }
                        return null;
                    case -1811142708:
                        if (str.equals("kotlin.jvm.functions.Function18")) {
                            return "kotlin.Function18";
                        }
                        return null;
                    case -1811142707:
                        if (str.equals("kotlin.jvm.functions.Function19")) {
                            return "kotlin.Function19";
                        }
                        return null;
                    default:
                        switch (str) {
                            case -1811142685:
                                if (str.equals("kotlin.jvm.functions.Function20")) {
                                    return "kotlin.Function20";
                                }
                                return null;
                            case -1811142684:
                                if (str.equals("kotlin.jvm.functions.Function21")) {
                                    return "kotlin.Function21";
                                }
                                return null;
                            case -1811142683:
                                if (str.equals("kotlin.jvm.functions.Function22")) {
                                    return "kotlin.Function22";
                                }
                                return null;
                            default:
                                switch (str) {
                                    case 80123371:
                                        if (str.equals("kotlin.jvm.functions.Function0")) {
                                            return "kotlin.Function0";
                                        }
                                        return null;
                                    case 80123372:
                                        if (str.equals("kotlin.jvm.functions.Function1")) {
                                            return "kotlin.Function1";
                                        }
                                        return null;
                                    case 80123373:
                                        if (str.equals("kotlin.jvm.functions.Function2")) {
                                            return "kotlin.Function2";
                                        }
                                        return null;
                                    case 80123374:
                                        if (str.equals("kotlin.jvm.functions.Function3")) {
                                            return "kotlin.Function3";
                                        }
                                        return null;
                                    case 80123375:
                                        if (str.equals("kotlin.jvm.functions.Function4")) {
                                            return "kotlin.Function4";
                                        }
                                        return null;
                                    case 80123376:
                                        if (str.equals("kotlin.jvm.functions.Function5")) {
                                            return "kotlin.Function5";
                                        }
                                        return null;
                                    case 80123377:
                                        if (str.equals("kotlin.jvm.functions.Function6")) {
                                            return "kotlin.Function6";
                                        }
                                        return null;
                                    case 80123378:
                                        if (str.equals("kotlin.jvm.functions.Function7")) {
                                            return "kotlin.Function7";
                                        }
                                        return null;
                                    case 80123379:
                                        if (str.equals("kotlin.jvm.functions.Function8")) {
                                            return "kotlin.Function8";
                                        }
                                        return null;
                                    case 80123380:
                                        if (str.equals("kotlin.jvm.functions.Function9")) {
                                            return "kotlin.Function9";
                                        }
                                        return null;
                                    default:
                                        return null;
                                }
                        }
                }
        }
    }

    public static String g0(Throwable th) {
        th.getClass();
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        string.getClass();
        return string;
    }

    public static byte[] h(tk2[] tk2VarArr, byte[] bArr) throws IOException {
        int i2 = 0;
        int length = 0;
        for (tk2 tk2Var : tk2VarArr) {
            length += ((((tk2Var.g * 2) + 7) & (-8)) / 8) + (tk2Var.e * 2) + q(tk2Var.a, tk2Var.b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + tk2Var.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, rs9.f)) {
            int length2 = tk2VarArr.length;
            while (i2 < length2) {
                tk2 tk2Var2 = tk2VarArr[i2];
                r0(byteArrayOutputStream, tk2Var2, q(tk2Var2.a, tk2Var2.b, bArr));
                q0(byteArrayOutputStream, tk2Var2);
                i2++;
            }
        } else {
            for (tk2 tk2Var3 : tk2VarArr) {
                r0(byteArrayOutputStream, tk2Var3, q(tk2Var3.a, tk2Var3.b, bArr));
            }
            int length3 = tk2VarArr.length;
            while (i2 < length3) {
                q0(byteArrayOutputStream, tk2VarArr[i2]);
                i2++;
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
    }

    public static ArrayList h0(String str) {
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split("/", -1);
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            if (!strArrSplit[i2].isEmpty()) {
                arrayList.add(strArrSplit[i2]);
            }
        }
        return arrayList;
    }

    public static boolean i(byte[] bArr, boolean z, l39 l39Var) {
        int i2 = (bArr[56] & 128) >>> 7;
        int[] iArr = (int[]) l39Var.c;
        zh8.j(0, 0, bArr, iArr);
        zh8.j(7, 2, bArr, iArr);
        zh8.j(14, 4, bArr, iArr);
        zh8.j(21, 6, bArr, iArr);
        zh8.j(28, 8, bArr, iArr);
        zh8.j(35, 10, bArr, iArr);
        zh8.j(42, 12, bArr, iArr);
        zh8.j(49, 14, bArr, iArr);
        int[] iArr2 = new int[16];
        int[] iArr3 = new int[16];
        zh8.L(iArr, iArr2);
        zh8.y(39081, iArr2, iArr3);
        zh8.M(new int[16], iArr2, iArr2);
        iArr2[0] = iArr2[0] + 1;
        iArr3[0] = iArr3[0] + 1;
        int[] iArr4 = (int[]) l39Var.b;
        int[] iArr5 = new int[16];
        int[] iArr6 = new int[16];
        zh8.L(iArr2, iArr5);
        zh8.z(iArr5, iArr3, iArr5);
        zh8.L(iArr5, iArr6);
        zh8.z(iArr5, iArr2, iArr5);
        zh8.z(iArr6, iArr2, iArr6);
        zh8.z(iArr6, iArr3, iArr6);
        int[] iArr7 = new int[16];
        int[] iArr8 = new int[16];
        zh8.L(iArr6, iArr8);
        zh8.z(iArr6, iArr8, iArr8);
        int[] iArr9 = new int[16];
        zh8.L(iArr8, iArr9);
        zh8.z(iArr6, iArr9, iArr9);
        int[] iArr10 = new int[16];
        zh8.K(3, iArr9, iArr10);
        zh8.z(iArr9, iArr10, iArr10);
        int[] iArr11 = new int[16];
        zh8.K(3, iArr10, iArr11);
        zh8.z(iArr9, iArr11, iArr11);
        int[] iArr12 = new int[16];
        zh8.K(9, iArr11, iArr12);
        zh8.z(iArr11, iArr12, iArr12);
        int[] iArr13 = new int[16];
        zh8.L(iArr12, iArr13);
        zh8.z(iArr6, iArr13, iArr13);
        int[] iArr14 = new int[16];
        zh8.K(18, iArr13, iArr14);
        zh8.z(iArr12, iArr14, iArr14);
        int[] iArr15 = new int[16];
        zh8.K(37, iArr14, iArr15);
        zh8.z(iArr14, iArr15, iArr15);
        int[] iArr16 = new int[16];
        zh8.K(37, iArr15, iArr16);
        zh8.z(iArr14, iArr16, iArr16);
        int[] iArr17 = new int[16];
        zh8.K(111, iArr16, iArr17);
        zh8.z(iArr16, iArr17, iArr17);
        int[] iArr18 = new int[16];
        zh8.L(iArr17, iArr18);
        zh8.z(iArr6, iArr18, iArr18);
        int[] iArr19 = new int[16];
        zh8.K(223, iArr18, iArr19);
        zh8.z(iArr19, iArr17, iArr7);
        zh8.z(iArr7, iArr5, iArr7);
        int[] iArr20 = new int[16];
        zh8.L(iArr7, iArr20);
        zh8.z(iArr20, iArr3, iArr20);
        zh8.M(iArr2, iArr20, iArr20);
        zh8.E(iArr20, 1);
        zh8.E(iArr20, -1);
        if (zh8.w(iArr20) == 0) {
            return false;
        }
        zh8.g(0, 0, iArr7, iArr4);
        zh8.E(iArr4, 1);
        zh8.E(iArr4, -1);
        if (i2 == 1 && zh8.w(iArr4) != 0) {
            return false;
        }
        if (z ^ (i2 != (iArr4[0] & 1))) {
            zh8.M(new int[16], iArr4, iArr4);
            zh8.E(iArr4, 1);
            zh8.E(iArr4, -1);
        }
        return true;
    }

    public static final Object j(long j2, jv1 jv1Var) {
        if (j2 > 0) {
            o21 o21Var = new o21(1, nc8.D(jv1Var));
            o21Var.u();
            if (j2 < Long.MAX_VALUE) {
                u(o21Var.e).g(j2, o21Var);
            }
            Object objS = o21Var.s();
            if (objS == yx1.a) {
                return objS;
            }
        }
        return be8.a;
    }

    public static boolean j0(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, tk2[] tk2VarArr) throws IOException {
        int i2;
        long j2;
        int length;
        byte[] bArr2 = rs9.h;
        byte[] bArr3 = rs9.g;
        byte[] bArr4 = rs9.d;
        int i3 = 0;
        if (!Arrays.equals(bArr, bArr4)) {
            byte[] bArr5 = rs9.e;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrH = h(tk2VarArr, bArr5);
                ms8.R(byteArrayOutputStream, tk2VarArr.length, 1);
                ms8.R(byteArrayOutputStream, bArrH.length, 4);
                byte[] bArrO = ms8.o(bArrH);
                ms8.R(byteArrayOutputStream, bArrO.length, 4);
                byteArrayOutputStream.write(bArrO);
                return true;
            }
            if (Arrays.equals(bArr, bArr3)) {
                ms8.R(byteArrayOutputStream, tk2VarArr.length, 1);
                for (tk2 tk2Var : tk2VarArr) {
                    int size = tk2Var.i.size() * 4;
                    String strQ = q(tk2Var.a, tk2Var.b, bArr3);
                    Charset charset = StandardCharsets.UTF_8;
                    ms8.S(byteArrayOutputStream, strQ.getBytes(charset).length);
                    ms8.S(byteArrayOutputStream, tk2Var.h.length);
                    ms8.R(byteArrayOutputStream, size, 4);
                    ms8.R(byteArrayOutputStream, tk2Var.c, 4);
                    byteArrayOutputStream.write(strQ.getBytes(charset));
                    Iterator it = tk2Var.i.keySet().iterator();
                    while (it.hasNext()) {
                        ms8.S(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        ms8.S(byteArrayOutputStream, 0);
                    }
                    for (int i4 : tk2Var.h) {
                        ms8.S(byteArrayOutputStream, i4);
                    }
                }
                return true;
            }
            byte[] bArr6 = rs9.f;
            if (Arrays.equals(bArr, bArr6)) {
                byte[] bArrH2 = h(tk2VarArr, bArr6);
                ms8.R(byteArrayOutputStream, tk2VarArr.length, 1);
                ms8.R(byteArrayOutputStream, bArrH2.length, 4);
                byte[] bArrO2 = ms8.o(bArrH2);
                ms8.R(byteArrayOutputStream, bArrO2.length, 4);
                byteArrayOutputStream.write(bArrO2);
                return true;
            }
            if (!Arrays.equals(bArr, bArr2)) {
                return false;
            }
            ms8.S(byteArrayOutputStream, tk2VarArr.length);
            for (tk2 tk2Var2 : tk2VarArr) {
                String str = tk2Var2.a;
                TreeMap treeMap = tk2Var2.i;
                String strQ2 = q(str, tk2Var2.b, bArr2);
                Charset charset2 = StandardCharsets.UTF_8;
                ms8.S(byteArrayOutputStream, strQ2.getBytes(charset2).length);
                ms8.S(byteArrayOutputStream, treeMap.size());
                ms8.S(byteArrayOutputStream, tk2Var2.h.length);
                ms8.R(byteArrayOutputStream, tk2Var2.c, 4);
                byteArrayOutputStream.write(strQ2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    ms8.S(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i5 : tk2Var2.h) {
                    ms8.S(byteArrayOutputStream, i5);
                }
            }
            return true;
        }
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            ms8.S(byteArrayOutputStream2, tk2VarArr.length);
            int i6 = 2;
            int i7 = 2;
            for (tk2 tk2Var3 : tk2VarArr) {
                ms8.R(byteArrayOutputStream2, tk2Var3.c, 4);
                ms8.R(byteArrayOutputStream2, tk2Var3.d, 4);
                ms8.R(byteArrayOutputStream2, tk2Var3.g, 4);
                String strQ3 = q(tk2Var3.a, tk2Var3.b, bArr4);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = strQ3.getBytes(charset3).length;
                ms8.S(byteArrayOutputStream2, length2);
                i7 = i7 + 14 + length2;
                byteArrayOutputStream2.write(strQ3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i7 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i7 + ", does not match actual size " + byteArray.length);
            }
            lw8 lw8Var = new lw8(1, false, byteArray);
            byteArrayOutputStream2.close();
            arrayList.add(lw8Var);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i8 = 0;
            int i9 = 0;
            while (i8 < tk2VarArr.length) {
                try {
                    tk2 tk2Var4 = tk2VarArr[i8];
                    ms8.S(byteArrayOutputStream3, i8);
                    ms8.S(byteArrayOutputStream3, tk2Var4.e);
                    i9 = i9 + 4 + (tk2Var4.e * i6);
                    int[] iArr = tk2Var4.h;
                    int length3 = iArr.length;
                    int i10 = i3;
                    while (i3 < length3) {
                        int i11 = iArr[i3];
                        ms8.S(byteArrayOutputStream3, i11 - i10);
                        i3++;
                        i6 = i6;
                        i10 = i11;
                    }
                    i8++;
                    i3 = 0;
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            int i12 = i6;
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i9 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i9 + ", does not match actual size " + byteArray2.length);
            }
            lw8 lw8Var2 = new lw8(3, true, byteArray2);
            byteArrayOutputStream3.close();
            arrayList.add(lw8Var2);
            ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
            int i13 = 0;
            for (int i14 = 0; i14 < tk2VarArr.length; i14++) {
                try {
                    tk2 tk2Var5 = tk2VarArr[i14];
                    Iterator it3 = tk2Var5.i.entrySet().iterator();
                    int iIntValue = 0;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
                    try {
                        t0(byteArrayOutputStream5, iIntValue, tk2Var5);
                        byte[] byteArray3 = byteArrayOutputStream5.toByteArray();
                        byteArrayOutputStream5.close();
                        ByteArrayOutputStream byteArrayOutputStream6 = new ByteArrayOutputStream();
                        try {
                            u0(byteArrayOutputStream6, tk2Var5);
                            byte[] byteArray4 = byteArrayOutputStream6.toByteArray();
                            byteArrayOutputStream6.close();
                            ms8.S(byteArrayOutputStream4, i14);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i15 = i13 + 6;
                            ms8.R(byteArrayOutputStream4, length4, 4);
                            ms8.S(byteArrayOutputStream4, iIntValue);
                            byteArrayOutputStream4.write(byteArray3);
                            byteArrayOutputStream4.write(byteArray4);
                            i13 = i15 + length4;
                        } catch (Throwable th3) {
                            try {
                                byteArrayOutputStream6.close();
                                throw th3;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                                throw th3;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            byteArrayOutputStream5.close();
                            throw th5;
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                            throw th5;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        byteArrayOutputStream4.close();
                        throw th7;
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                        throw th7;
                    }
                }
            }
            byte[] byteArray5 = byteArrayOutputStream4.toByteArray();
            if (i13 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i13 + ", does not match actual size " + byteArray5.length);
            }
            lw8 lw8Var3 = new lw8(4, true, byteArray5);
            byteArrayOutputStream4.close();
            arrayList.add(lw8Var3);
            long size2 = 12 + ((long) (arrayList.size() * 16));
            ms8.R(byteArrayOutputStream, arrayList.size(), 4);
            int i16 = 0;
            while (i16 < arrayList.size()) {
                lw8 lw8Var4 = (lw8) arrayList.get(i16);
                int i17 = lw8Var4.a;
                byte[] bArr7 = lw8Var4.b;
                if (i17 != 1) {
                    i2 = i12;
                    if (i17 == i2) {
                        j2 = 1;
                    } else if (i17 == 3) {
                        j2 = 2;
                    } else if (i17 == 4) {
                        j2 = 3;
                    } else {
                        if (i17 != 5) {
                            throw null;
                        }
                        j2 = 4;
                    }
                } else {
                    i2 = i12;
                    j2 = 0;
                }
                ms8.R(byteArrayOutputStream, j2, 4);
                ms8.R(byteArrayOutputStream, size2, 4);
                if (lw8Var4.c) {
                    long length5 = bArr7.length;
                    byte[] bArrO3 = ms8.o(bArr7);
                    arrayList2.add(bArrO3);
                    ms8.R(byteArrayOutputStream, bArrO3.length, 4);
                    ms8.R(byteArrayOutputStream, length5, 4);
                    length = bArrO3.length;
                } else {
                    arrayList2.add(bArr7);
                    ms8.R(byteArrayOutputStream, bArr7.length, 4);
                    ms8.R(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += (long) length;
                i16++;
                i12 = i2;
            }
            for (int i18 = 0; i18 < arrayList2.size(); i18++) {
                byteArrayOutputStream.write((byte[]) arrayList2.get(i18));
            }
            return true;
        } catch (Throwable th9) {
            try {
                byteArrayOutputStream2.close();
                throw th9;
            } catch (Throwable th10) {
                th9.addSuppressed(th10);
                throw th9;
            }
        }
    }

    public static void k(View view, um8 um8Var) {
        int paddingStart = view.getPaddingStart();
        int paddingTop = view.getPaddingTop();
        int paddingEnd = view.getPaddingEnd();
        int paddingBottom = view.getPaddingBottom();
        vm8 vm8Var = new vm8();
        vm8Var.a = paddingStart;
        vm8Var.b = paddingTop;
        vm8Var.c = paddingEnd;
        vm8Var.d = paddingBottom;
        yf1 yf1Var = new yf1(12, um8Var, vm8Var);
        WeakHashMap weakHashMap = dl8.a;
        uk8.c(view, yf1Var);
        if (view.isAttachedToWindow()) {
            view.requestApplyInsets();
        } else {
            view.addOnAttachStateChangeListener(new sm8());
        }
    }

    public static void k0(TextView textView) {
        if (textView.getTag(R.id.markwon_drawables_scheduler_last_text_hashcode) == null) {
            return;
        }
        textView.setTag(R.id.markwon_drawables_scheduler_last_text_hashcode, null);
        v60[] v60VarArrP = p(textView);
        if (v60VarArrP == null || v60VarArrP.length <= 0) {
            return;
        }
        for (v60 v60Var : v60VarArrP) {
            v60Var.b.c(null);
        }
    }

    public static void l(lr6 lr6Var, byte b2, byte[] bArr) {
        int length = bArr.length + 10;
        byte[] bArr2 = new byte[length];
        System.arraycopy(b, 0, bArr2, 0, 8);
        bArr2[8] = b2;
        bArr2[9] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr2, 10, bArr.length);
        lr6Var.update(bArr2, 0, length);
    }

    public static float m(Context context, int i2) {
        return TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics());
    }

    public static void n(nh nhVar, byte[] bArr) {
        int[] iArr = (int[]) nhVar.b;
        zh8.n(16, 0, bArr, iArr);
        zh8.n(18, 7, bArr, iArr);
        zh8.n(20, 14, bArr, iArr);
        zh8.n(22, 21, bArr, iArr);
        zh8.n(24, 28, bArr, iArr);
        zh8.n(26, 35, bArr, iArr);
        zh8.n(28, 42, bArr, iArr);
        zh8.n(30, 49, bArr, iArr);
        bArr[56] = (byte) ((((int[]) nhVar.b)[0] & 1) << 7);
    }

    public static void n0(Parcel parcel, int i2, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int iF0 = F0(parcel, i2);
        parcel.writeBundle(bundle);
        G0(parcel, iF0);
    }

    public static String o(gy0 gy0Var) {
        StringBuilder sb = new StringBuilder(gy0Var.size());
        for (int i2 = 0; i2 < gy0Var.size(); i2++) {
            byte bC = gy0Var.c(i2);
            if (bC == 34) {
                sb.append("\\\"");
            } else if (bC == 39) {
                sb.append("\\'");
            } else if (bC != 92) {
                switch (bC) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bC < 32 || bC > 126) {
                            sb.append('\\');
                            sb.append((char) (((bC >>> 6) & 3) + 48));
                            sb.append((char) (((bC >>> 3) & 7) + 48));
                            sb.append((char) ((bC & 7) + 48));
                        } else {
                            sb.append((char) bC);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static void o0(Parcel parcel, int i2, byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int iF0 = F0(parcel, i2);
        parcel.writeByteArray(bArr);
        G0(parcel, iF0);
    }

    public static v60[] p(TextView textView) {
        CharSequence text = textView.getText();
        int length = text != null ? text.length() : 0;
        if (length == 0 || !(text instanceof Spanned)) {
            return null;
        }
        return (v60[]) ((Spanned) text).getSpans(0, length, v60.class);
    }

    public static void p0(Parcel parcel, int i2, Integer num) {
        if (num == null) {
            return;
        }
        D0(parcel, i2, 4);
        parcel.writeInt(num.intValue());
    }

    public static String q(String str, String str2, byte[] bArr) {
        byte[] bArr2 = rs9.g;
        byte[] bArr3 = rs9.h;
        Object obj = (Arrays.equals(bArr, bArr3) || Arrays.equals(bArr, bArr2)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            if (":".equals(obj)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(obj)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(obj)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                return dj7.n(dj7.s(str), (Arrays.equals(bArr, bArr3) || Arrays.equals(bArr, bArr2)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    public static void q0(ByteArrayOutputStream byteArrayOutputStream, tk2 tk2Var) throws IOException {
        u0(byteArrayOutputStream, tk2Var);
        int i2 = tk2Var.g;
        int[] iArr = tk2Var.h;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int i5 = iArr[i3];
            ms8.S(byteArrayOutputStream, i5 - i4);
            i3++;
            i4 = i5;
        }
        byte[] bArr = new byte[(((i2 * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : tk2Var.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int i6 = iIntValue / 8;
                bArr[i6] = (byte) (bArr[i6] | (1 << (iIntValue % 8)));
            }
            if ((iIntValue2 & 4) != 0) {
                int i7 = iIntValue + i2;
                int i8 = i7 / 8;
                bArr[i8] = (byte) ((1 << (i7 % 8)) | bArr[i8]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static nh r(byte[] bArr) {
        lr6 lr6Var = new lr6(256);
        byte[] bArr2 = new byte[114];
        lr6Var.update(bArr, 0, 57);
        lr6Var.l(bArr2, 0, 114);
        byte[] bArr3 = new byte[57];
        V(bArr2, bArr3);
        bp0 bp0Var = new bp0();
        d0(bArr3, bp0Var);
        int[] iArr = new int[16];
        int[] iArr2 = new int[16];
        zh8.u((int[]) bp0Var.c, iArr2);
        zh8.z(iArr2, (int[]) bp0Var.a, iArr);
        zh8.z(iArr2, (int[]) bp0Var.b, iArr2);
        zh8.E(iArr, 1);
        zh8.E(iArr, -1);
        zh8.E(iArr2, 1);
        zh8.E(iArr2, -1);
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        zh8.L(iArr, iArr4);
        zh8.L(iArr2, iArr5);
        zh8.z(iArr4, iArr5, iArr3);
        zh8.b(iArr4, iArr5, iArr4);
        zh8.y(39081, iArr3, iArr3);
        int[] iArr6 = new int[16];
        iArr6[0] = 1;
        zh8.M(iArr3, iArr6, iArr3);
        zh8.b(iArr3, iArr4, iArr3);
        zh8.E(iArr3, 1);
        zh8.E(iArr3, -1);
        zh8.E(iArr5, 1);
        zh8.E(iArr5, -1);
        if ((zh8.w(iArr3) & (~zh8.w(iArr5))) == 0) {
            g84.c();
            return null;
        }
        int[] iArr7 = new int[32];
        zh8.g(0, 0, iArr, iArr7);
        zh8.g(0, 16, iArr2, iArr7);
        return new nh(iArr7, 4);
    }

    public static void r0(ByteArrayOutputStream byteArrayOutputStream, tk2 tk2Var, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        ms8.S(byteArrayOutputStream, str.getBytes(charset).length);
        ms8.S(byteArrayOutputStream, tk2Var.e);
        ms8.R(byteArrayOutputStream, tk2Var.f, 4);
        ms8.R(byteArrayOutputStream, tk2Var.c, 4);
        ms8.R(byteArrayOutputStream, tk2Var.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static ViewGroup s(on0 on0Var) {
        View rootView = on0Var.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == on0Var || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static void s0(Parcel parcel, int i2, Long l2) {
        if (l2 == null) {
            return;
        }
        D0(parcel, i2, 8);
        parcel.writeLong(l2.longValue());
    }

    public static void t0(ByteArrayOutputStream byteArrayOutputStream, int i2, tk2 tk2Var) throws IOException {
        int i3 = tk2Var.g;
        byte[] bArr = new byte[(((Integer.bitCount(i2 & (-2)) * i3) + 7) & (-8)) / 8];
        for (Map.Entry entry : tk2Var.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i4 = 0;
            for (int i5 = 1; i5 <= 4; i5 <<= 1) {
                if (i5 != 1 && (i5 & i2) != 0) {
                    if ((i5 & iIntValue2) == i5) {
                        int i6 = (i4 * i3) + iIntValue;
                        int i7 = i6 / 8;
                        bArr[i7] = (byte) ((1 << (i6 % 8)) | bArr[i7]);
                    }
                    i4++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static final qg2 u(ox1 ox1Var) {
        mx1 mx1Var = ox1Var.get(lv1.b);
        qg2 qg2Var = mx1Var instanceof qg2 ? (qg2) mx1Var : null;
        return qg2Var == null ? he2.a : qg2Var;
    }

    public static void u0(ByteArrayOutputStream byteArrayOutputStream, tk2 tk2Var) throws IOException {
        int i2 = 0;
        for (Map.Entry entry : tk2Var.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                ms8.S(byteArrayOutputStream, iIntValue - i2);
                ms8.S(byteArrayOutputStream, 0);
                i2 = iIntValue;
            }
        }
    }

    public static void v0(Parcel parcel, int i2, Parcelable parcelable, int i3) {
        if (parcelable == null) {
            return;
        }
        int iF0 = F0(parcel, i2);
        parcelable.writeToParcel(parcel, i3);
        G0(parcel, iF0);
    }

    public static void w0(Parcel parcel, int i2, String str) {
        if (str == null) {
            return;
        }
        int iF0 = F0(parcel, i2);
        parcel.writeString(str);
        G0(parcel, iF0);
    }

    public static void x0(Parcel parcel, int i2, List list) {
        if (list == null) {
            return;
        }
        int iF0 = F0(parcel, i2);
        parcel.writeStringList(list);
        G0(parcel, iF0);
    }

    public static void y0(Parcel parcel, int i2, Parcelable[] parcelableArr, int i3) {
        if (parcelableArr == null) {
            return;
        }
        int iF0 = F0(parcel, i2);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i3);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        G0(parcel, iF0);
    }

    public static void z0(Parcel parcel, int i2, List list) {
        if (list == null) {
            return;
        }
        int iF0 = F0(parcel, i2);
        int size = list.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            Parcelable parcelable = (Parcelable) list.get(i3);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        G0(parcel, iF0);
    }

    public abstract int A(CoordinatorLayout coordinatorLayout);

    public abstract int B();

    public abstract boolean G(float f2);

    public abstract boolean H(View view);

    public abstract boolean I(float f2, float f3);

    public ne b(Context context, Looper looper, z91 z91Var, Object obj, nz3 nz3Var, oz3 oz3Var) {
        return c(context, looper, z91Var, obj, (g19) nz3Var, (g19) oz3Var);
    }

    public ne c(Context context, Looper looper, z91 z91Var, Object obj, g19 g19Var, g19 g19Var2) {
        throw new UnsupportedOperationException("buildClient must be implemented");
    }

    public abstract void c0(bs2 bs2Var, k75 k75Var);

    public abstract int d(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float e(int i2);

    public abstract boolean e0(View view, float f2);

    public abstract ix7 i0(String str);

    public abstract void l0(ViewGroup.MarginLayoutParams marginLayoutParams, int i2);

    public abstract void m0(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i3);

    public abstract int t(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract int v();

    public abstract int w();

    public abstract int x();

    public abstract int y();

    public abstract int z(View view);
}
