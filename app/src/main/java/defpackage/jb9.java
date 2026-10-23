package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.jcraft.jsch.SftpATTRS;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class jb9 implements om8 {
    public static final y53 J;
    public static final y53 K;
    public static final y53[] L;
    public static UserManager a = null;
    public static volatile boolean b = false;
    public static final int[] c = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    public static final int[] d = {1886001095, 1339575613, 1980447930, 258412557, -95215574, -959694548, 2013120334, 2047061138};
    public static final int[] e = {-1886001114, -1339575614, -1980447931, -258412558, 95215573, 959694547, -2013120335, 100422509};
    public static final int[] f = {52811034, 25909283, 8072341, 50637101, 13785486, 30858332, 20483199, 20966410, 43936626, 4379245};
    public static final int[] k = {40265304, 26843545, 6710886, 53687091, 13421772, 40265318, 26843545, 6710886, 53687091, 13421772};
    public static final int[] n = {12052516, 1174424, 4087752, 38672185, 20040971, 21899680, 55468344, 20105554, 66708015, 9981791};
    public static final int[] p = {66430571, 45040722, 4842939, 15895846, 18981244, 46308410, 4697481, 8903007, 53646190, 12474675};
    public static final int[] q = {56195235, 47411844, 25868126, 40503822, 57364, 58321048, 30416477, 31930572, 57760639, 10749657};
    public static final int[] r = {45281625, 27714825, 18181821, 13898781, 114729, 49533232, 60832955, 30306712, 48412415, 4722099};
    public static final int[] t = {23454386, 55429651, 2809210, 27797563, 229458, 31957600, 54557047, 27058993, 29715967, 9444199};
    public static final Object x = new Object();
    public static l22[] y = null;
    public static l22[] G = null;
    public static int[] H = null;
    public static final b05 I = new b05();

    static {
        y53 y53Var = new y53("auth_blockstore", 3L);
        y53 y53Var2 = new y53("blockstore_data_transfer", 1L);
        y53 y53Var3 = new y53("blockstore_notify_app_restore", 1L);
        y53 y53Var4 = new y53("blockstore_store_bytes_with_options", 2L);
        y53 y53Var5 = new y53("blockstore_is_end_to_end_encryption_available", 1L);
        y53 y53Var6 = new y53("blockstore_enable_cloud_backup", 1L);
        y53 y53Var7 = new y53("blockstore_delete_bytes", 2L);
        y53 y53Var8 = new y53("blockstore_retrieve_bytes_with_options", 3L);
        y53 y53Var9 = new y53("auth_clear_restore_credential", 1L);
        J = y53Var9;
        y53 y53Var10 = new y53("auth_create_restore_credential", 1L);
        y53 y53Var11 = new y53("auth_get_restore_credential", 1L);
        K = y53Var11;
        L = new y53[]{y53Var, y53Var2, y53Var3, y53Var4, y53Var5, y53Var6, y53Var7, y53Var8, y53Var9, y53Var10, y53Var11};
    }

    public static boolean E(byte[] bArr, ke keVar, byte b2, byte[] bArr2, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        int i3;
        int i4;
        int[] iArr = iz1.c;
        boolean z4 = false;
        z4 = false;
        if (b2 != 0) {
            c6.f("ctx");
            return false;
        }
        byte[] bArr3 = new byte[32];
        System.arraycopy(bArr, 0, bArr3, 0, 32);
        byte[] bArr4 = new byte[32];
        System.arraycopy(bArr, 32, bArr4, 0, 32);
        char c2 = 28;
        int iL = g67.l(bArr3, 28) & Integer.MAX_VALUE;
        int[] iArr2 = c;
        int i5 = 7;
        int i6 = iArr2[7];
        int i7 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        int i8 = 8;
        boolean z5 = true;
        if (iL < i6) {
            z2 = true;
        } else {
            int[] iArr3 = new int[8];
            g67.m(bArr3, 8, iArr3);
            iArr3[7] = Integer.MAX_VALUE & iArr3[7];
            int i9 = 7;
            while (true) {
                if (i9 >= 0) {
                    int i10 = iArr3[i9] ^ SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                    int i11 = iArr2[i9] ^ SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                    if (i10 < i11) {
                        z = false;
                        break;
                    }
                    if (i10 <= i11) {
                        i9--;
                    }
                }
                z = true;
                break;
            }
            z2 = !z;
        }
        if (z2) {
            int[] iArr4 = new int[8];
            iz1.i(bArr4, iArr4);
            int i12 = 7;
            while (i12 >= 0) {
                int i13 = iArr4[i12] ^ i7;
                int i14 = iArr[i12] ^ i7;
                if (i13 < i14) {
                    ix0 ix0Var = new ix0(2);
                    if (!v(bArr3, z5, ix0Var)) {
                        break;
                    }
                    ix0 ix0Var2 = new ix0(2);
                    nc8.L((int[]) keVar.b, (int[]) ix0Var2.b);
                    int i15 = i7;
                    nc8.n(10, z4 ? 1 : 0, (int[]) keVar.b, (int[]) ix0Var2.c);
                    byte[] bArr5 = new byte[32];
                    w(keVar, bArr5);
                    kr6 kr6Var = new kr6();
                    boolean z6 = z5;
                    byte[] bArr6 = new byte[64];
                    kr6Var.update(bArr3, z4 ? 1 : 0, 32);
                    kr6Var.update(bArr5, z4 ? 1 : 0, 32);
                    kr6Var.update(bArr2, z4 ? 1 : 0, i);
                    kr6Var.doFinal(bArr6, z4 ? 1 : 0);
                    byte[] bArrY = iz1.y(bArr6);
                    int[] iArr5 = new int[i8];
                    iz1.i(bArrY, iArr5);
                    int i16 = 4;
                    int[] iArr6 = new int[4];
                    int[] iArr7 = new int[4];
                    char c3 = 16;
                    int[] iArr8 = new int[16];
                    System.arraycopy(iz1.d, z4 ? 1 : 0, iArr8, z4 ? 1 : 0, 16);
                    int[] iArr9 = new int[16];
                    int i17 = i5;
                    long j = ((long) iArr5[z4 ? 1 : 0]) & 4294967295L;
                    int i18 = z4 ? 1 : 0;
                    int i19 = 16;
                    int i20 = i17;
                    while (true) {
                        int i21 = i20 - 1;
                        z3 = z4;
                        long j2 = ((long) iArr5[i20]) & 4294967295L;
                        long j3 = j2 * j2;
                        i2 = i16;
                        iArr9[i19 - 1] = (i18 << 31) | ((int) (j3 >>> 33));
                        i19 -= 2;
                        iArr9[i19] = (int) (j3 >>> (z6 ? 1L : 0L));
                        i3 = (int) j3;
                        if (i21 <= 0) {
                            break;
                        }
                        c3 = c3;
                        iArr = iArr;
                        i16 = i2;
                        i18 = i3;
                        i20 = i21;
                        z4 = z3 ? 1 : 0;
                        iArr8 = iArr8;
                    }
                    long j4 = j * j;
                    long j5 = (((long) (i3 << 31)) & 4294967295L) | (j4 >>> 33);
                    int i22 = i8;
                    int i23 = (int) j4;
                    iArr9[z3 ? 1 : 0] = i23;
                    long j6 = ((long) iArr5[z6 ? 1 : 0]) & 4294967295L;
                    long j7 = ((long) iArr9[2]) & 4294967295L;
                    long j8 = (j6 * j) + j5;
                    int i24 = (int) j8;
                    iArr9[z6 ? 1 : 0] = (i24 << 1) | (((int) (j4 >>> 32)) & 1);
                    int i25 = i24 >>> 31;
                    long j9 = j7 + (j8 >>> 32);
                    long j10 = ((long) iArr5[2]) & 4294967295L;
                    long j11 = ((long) iArr9[3]) & 4294967295L;
                    long j12 = ((long) iArr9[i2]) & 4294967295L;
                    long j13 = (j10 * j) + j9;
                    int i26 = (int) j13;
                    iArr9[2] = (i26 << 1) | i25;
                    int i27 = i26 >>> 31;
                    long jD = dj7.d(j10, j6, j13 >>> 32, j11);
                    long j14 = j12 + (jD >>> 32);
                    long j15 = jD & 4294967295L;
                    long j16 = ((long) iArr5[3]) & 4294967295L;
                    long j17 = (((long) iArr9[5]) & 4294967295L) + (j14 >>> 32);
                    long j18 = (((long) iArr9[6]) & 4294967295L) + (j17 >>> 32);
                    long j19 = j17 & 4294967295L;
                    long j20 = (j16 * j) + j15;
                    int i28 = (int) j20;
                    iArr9[3] = (i28 << 1) | i27;
                    int i29 = i28 >>> 31;
                    long jD2 = dj7.d(j16, j6, j20 >>> 32, j14 & 4294967295L);
                    long jD3 = dj7.d(j16, j10, jD2 >>> 32, j19);
                    long j21 = jD2 & 4294967295L;
                    long j22 = j18 + (jD3 >>> 32);
                    long j23 = ((long) iArr5[i2]) & 4294967295L;
                    long j24 = (((long) iArr9[i17]) & 4294967295L) + (j22 >>> 32);
                    long j25 = (((long) iArr9[i22]) & 4294967295L) + (j24 >>> 32);
                    long j26 = j24 & 4294967295L;
                    long j27 = (j23 * j) + j21;
                    int i30 = (int) j27;
                    iArr9[i2] = (i30 << 1) | i29;
                    int i31 = i30 >>> 31;
                    long jD4 = dj7.d(j23, j6, j27 >>> 32, jD3 & 4294967295L);
                    long jD5 = dj7.d(j23, j10, jD4 >>> 32, j22 & 4294967295L);
                    long j28 = jD4 & 4294967295L;
                    long jD6 = dj7.d(j23, j16, jD5 >>> 32, j26);
                    long j29 = jD5 & 4294967295L;
                    long j30 = j25 + (jD6 >>> 32);
                    long j31 = ((long) iArr5[5]) & 4294967295L;
                    long j32 = (((long) iArr9[9]) & 4294967295L) + (j30 >>> 32);
                    long j33 = (((long) iArr9[10]) & 4294967295L) + (j32 >>> 32);
                    long j34 = j32 & 4294967295L;
                    long j35 = (j31 * j) + j28;
                    int i32 = (int) j35;
                    iArr9[5] = (i32 << 1) | i31;
                    int i33 = i32 >>> 31;
                    long jD7 = dj7.d(j31, j6, j35 >>> 32, j29);
                    long jD8 = dj7.d(j31, j10, jD7 >>> 32, jD6 & 4294967295L);
                    long j36 = jD7 & 4294967295L;
                    long jD9 = dj7.d(j31, j16, jD8 >>> 32, j30 & 4294967295L);
                    long j37 = jD8 & 4294967295L;
                    long jD10 = dj7.d(j31, j23, jD9 >>> 32, j34);
                    long j38 = jD9 & 4294967295L;
                    long j39 = j33 + (jD10 >>> 32);
                    long j40 = jD10 & 4294967295L;
                    long j41 = ((long) iArr5[6]) & 4294967295L;
                    long j42 = (((long) iArr9[11]) & 4294967295L) + (j39 >>> 32);
                    long j43 = j39 & 4294967295L;
                    long j44 = (((long) iArr9[12]) & 4294967295L) + (j42 >>> 32);
                    long j45 = j42 & 4294967295L;
                    long j46 = (j41 * j) + j36;
                    int i34 = (int) j46;
                    iArr9[6] = (i34 << 1) | i33;
                    int i35 = i34 >>> 31;
                    long jD11 = dj7.d(j41, j6, j46 >>> 32, j37);
                    long jD12 = dj7.d(j41, j10, jD11 >>> 32, j38);
                    long j47 = jD11 & 4294967295L;
                    long jD13 = dj7.d(j41, j16, jD12 >>> 32, j40);
                    long j48 = jD12 & 4294967295L;
                    long jD14 = dj7.d(j41, j23, jD13 >>> 32, j43);
                    long j49 = jD13 & 4294967295L;
                    long jD15 = dj7.d(j41, j31, jD14 >>> 32, j45);
                    long j50 = jD14 & 4294967295L;
                    long j51 = j44 + (jD15 >>> 32);
                    long j52 = ((long) iArr5[i17]) & 4294967295L;
                    long j53 = (((long) iArr9[13]) & 4294967295L) + (j51 >>> 32);
                    long j54 = (((long) iArr9[14]) & 4294967295L) + (j53 >>> 32);
                    long j55 = j53 & 4294967295L;
                    long j56 = (j * j52) + j47;
                    int i36 = (int) j56;
                    iArr9[i17] = (i36 << 1) | i35;
                    long jD16 = dj7.d(j52, j6, j56 >>> 32, j48);
                    long jD17 = dj7.d(j52, j10, jD16 >>> 32, j49);
                    long jD18 = dj7.d(j52, j16, jD17 >>> 32, j50);
                    int[] iArr10 = iArr8;
                    long jD19 = dj7.d(j52, j23, jD18 >>> 32, jD15 & 4294967295L);
                    int[] iArr11 = iArr4;
                    long jD20 = dj7.d(j52, j31, jD19 >>> 32, j51 & 4294967295L);
                    long jD21 = dj7.d(j52, j41, jD20 >>> 32, j55);
                    long j57 = j54 + (jD21 >>> 32);
                    int i37 = (int) jD16;
                    iArr9[i22] = (i37 << 1) | (i36 >>> 31);
                    int i38 = (int) jD17;
                    iArr9[9] = (i38 << 1) | (i37 >>> 31);
                    int i39 = (int) jD18;
                    iArr9[10] = (i38 >>> 31) | (i39 << 1);
                    int i40 = i39 >>> 31;
                    int i41 = (int) jD19;
                    iArr9[11] = i40 | (i41 << 1);
                    int i42 = i41 >>> 31;
                    int i43 = (int) jD20;
                    iArr9[12] = i42 | (i43 << 1);
                    int i44 = i43 >>> 31;
                    int i45 = (int) jD21;
                    iArr9[13] = i44 | (i45 << 1);
                    int i46 = i45 >>> 31;
                    int i47 = (int) j57;
                    iArr9[14] = i46 | (i47 << 1);
                    iArr9[15] = (i47 >>> 31) | ((iArr9[15] + ((int) (j57 >>> 32))) << 1);
                    iArr9[z3 ? 1 : 0] = i23 + 1;
                    int[] iArr12 = new int[16];
                    long j58 = ((long) iArr5[z3 ? 1 : 0]) & 4294967295L;
                    long j59 = ((long) iArr5[z6 ? 1 : 0]) & 4294967295L;
                    long j60 = ((long) iArr5[2]) & 4294967295L;
                    long j61 = ((long) iArr5[3]) & 4294967295L;
                    long j62 = ((long) iArr5[i2]) & 4294967295L;
                    int[] iArr13 = iArr;
                    long j63 = ((long) iArr5[5]) & 4294967295L;
                    long j64 = ((long) iArr5[6]) & 4294967295L;
                    long j65 = ((long) iArr5[i17]) & 4294967295L;
                    long j66 = ((long) iArr13[z3 ? 1 : 0]) & 4294967295L;
                    long j67 = j66 * j58;
                    iArr12[z3 ? 1 : 0] = (int) j67;
                    long j68 = (j66 * j59) + (j67 >>> 32);
                    iArr12[z6 ? 1 : 0] = (int) j68;
                    long j69 = (j66 * j60) + (j68 >>> 32);
                    iArr12[2] = (int) j69;
                    long j70 = (j66 * j61) + (j69 >>> 32);
                    iArr12[3] = (int) j70;
                    long j71 = (j66 * j62) + (j70 >>> 32);
                    iArr12[i2] = (int) j71;
                    long j72 = (j66 * j63) + (j71 >>> 32);
                    iArr12[5] = (int) j72;
                    long j73 = (j66 * j64) + (j72 >>> 32);
                    iArr12[6] = (int) j73;
                    long j74 = (j66 * j65) + (j73 >>> 32);
                    iArr12[i17] = (int) j74;
                    iArr12[i22] = (int) (j74 >>> 32);
                    int i48 = z6 ? 1 : 0;
                    for (int i49 = i22; i48 < i49; i49 = 8) {
                        long j75 = ((long) iArr13[i48]) & 4294967295L;
                        int i50 = i48;
                        long j76 = (j75 * j58) + (((long) iArr12[i50 == true ? 1 : 0]) & 4294967295L);
                        iArr12[i50 == true ? 1 : 0] = (int) j76;
                        int i51 = (i50 == true ? 1 : 0) + 1;
                        long j77 = (j75 * j59) + (((long) iArr12[i51]) & 4294967295L) + (j76 >>> 32);
                        iArr12[i51] = (int) j77;
                        int i52 = (i50 == true ? 1 : 0) + 2;
                        long j78 = (j75 * j60) + (((long) iArr12[i52]) & 4294967295L) + (j77 >>> 32);
                        iArr12[i52] = (int) j78;
                        int i53 = (i50 == true ? 1 : 0) + 3;
                        long j79 = (j75 * j61) + (((long) iArr12[i53]) & 4294967295L) + (j78 >>> 32);
                        iArr12[i53] = (int) j79;
                        int i54 = (i50 == true ? 1 : 0) + 4;
                        long j80 = (j75 * j62) + (((long) iArr12[i54]) & 4294967295L) + (j79 >>> 32);
                        iArr12[i54] = (int) j80;
                        int i55 = (i50 == true ? 1 : 0) + 5;
                        long j81 = (j75 * j63) + (((long) iArr12[i55]) & 4294967295L) + (j80 >>> 32);
                        iArr12[i55] = (int) j81;
                        int i56 = (i50 == true ? 1 : 0) + 6;
                        long j82 = (j75 * j64) + (((long) iArr12[i56]) & 4294967295L) + (j81 >>> 32);
                        iArr12[i56] = (int) j82;
                        int i57 = (i50 == true ? 1 : 0) + 7;
                        long j83 = (j75 * j65) + (((long) iArr12[i57]) & 4294967295L) + (j82 >>> 32);
                        iArr12[i57] = (int) j83;
                        iArr12[(i50 == true ? 1 : 0) + 8] = (int) (j83 >>> 32);
                        i48 = i51;
                    }
                    int[] iArr14 = new int[16];
                    int[] iArr15 = new int[i2];
                    System.arraycopy(iArr13, z3 ? 1 : 0, iArr15, z3 ? 1 : 0, i2);
                    int[] iArr16 = new int[i2];
                    System.arraycopy(iArr5, z3 ? 1 : 0, iArr16, z3 ? 1 : 0, i2);
                    int[] iArr17 = new int[i2];
                    iArr17[z3 ? 1 : 0] = z6 ? 1 : 0;
                    int iN = zm5.n(iArr9, 15);
                    int i58 = 1016;
                    int[] iArr18 = iArr15;
                    int[] iArr19 = new int[i2];
                    int[] iArr20 = iArr16;
                    int[] iArr21 = iArr17;
                    int[] iArr22 = iArr9;
                    int[] iArr23 = iArr10;
                    int i59 = 15;
                    while (iN > 254) {
                        int i60 = i58 - 1;
                        if (i60 < 0) {
                            g84.c();
                            return false;
                        }
                        int iM = zm5.m(iArr12, i59) - iN;
                        int i61 = iM & (~(iM >> 31));
                        if (iArr12[i59] < 0) {
                            zm5.c(i59, i61, iArr23, iArr22, iArr12, iArr14);
                            zm5.d(3, i61, iArr18, iArr19, iArr20, iArr21);
                        } else {
                            zm5.F(i59, i61, iArr23, iArr22, iArr12, iArr14);
                            zm5.G(3, i61, iArr18, iArr19, iArr20, iArr21);
                        }
                        int[] iArr24 = iArr20;
                        int[] iArr25 = iArr21;
                        int i62 = i59;
                        while (true) {
                            int i63 = iArr23[i62] + i15;
                            int i64 = iArr22[i62] + i15;
                            if (i63 < i64) {
                                int i65 = iN >>> 5;
                                int iN2 = zm5.n(iArr23, i65);
                                int[] iArr26 = iArr22;
                                iArr22 = iArr23;
                                iArr23 = iArr26;
                                i59 = i65;
                                iN = iN2;
                                iArr20 = iArr18;
                                iArr21 = iArr19;
                                iArr19 = iArr25;
                                iArr18 = iArr24;
                                break;
                            }
                            if (i63 > i64 || (i62 = i62 - 1) < 0) {
                                iArr21 = iArr25;
                                iArr20 = iArr24;
                                break;
                            }
                        }
                        i58 = i60;
                    }
                    System.arraycopy(iArr20, 0, iArr6, 0, 4);
                    System.arraycopy(iArr21, 0, iArr7, 0, 4);
                    int[] iArr27 = new int[12];
                    long j84 = ((long) iArr11[0]) & 4294967295L;
                    long j85 = ((long) iArr11[z6 ? 1 : 0]) & 4294967295L;
                    long j86 = ((long) iArr11[2]) & 4294967295L;
                    long j87 = ((long) iArr11[3]) & 4294967295L;
                    long j88 = ((long) iArr11[4]) & 4294967295L;
                    long j89 = ((long) iArr11[5]) & 4294967295L;
                    long j90 = ((long) iArr11[6]) & 4294967295L;
                    long j91 = ((long) iArr11[i17]) & 4294967295L;
                    long j92 = ((long) iArr7[0]) & 4294967295L;
                    long j93 = j92 * j84;
                    iArr27[0] = (int) j93;
                    long j94 = (j92 * j85) + (j93 >>> 32);
                    iArr27[z6 ? 1 : 0] = (int) j94;
                    long j95 = (j92 * j86) + (j94 >>> 32);
                    iArr27[2] = (int) j95;
                    long j96 = (j92 * j87) + (j95 >>> 32);
                    iArr27[3] = (int) j96;
                    long j97 = (j92 * j88) + (j96 >>> 32);
                    iArr27[4] = (int) j97;
                    long j98 = (j92 * j89) + (j97 >>> 32);
                    iArr27[5] = (int) j98;
                    long j99 = (j92 * j90) + (j98 >>> 32);
                    iArr27[6] = (int) j99;
                    long j100 = (j92 * j91) + (j99 >>> 32);
                    iArr27[i17] = (int) j100;
                    iArr27[8] = (int) (j100 >>> 32);
                    int i66 = z6 ? 1 : 0;
                    while (i66 < 4) {
                        long j101 = ((long) iArr7[i66]) & 4294967295L;
                        long j102 = (j101 * j84) + (((long) iArr27[i66]) & 4294967295L);
                        iArr27[i66] = (int) j102;
                        int i67 = i66 + 1;
                        long j103 = (j101 * j85) + (((long) iArr27[i67]) & 4294967295L) + (j102 >>> 32);
                        iArr27[i67] = (int) j103;
                        int i68 = i66 + 2;
                        long j104 = (j101 * j86) + (((long) iArr27[i68]) & 4294967295L) + (j103 >>> 32);
                        iArr27[i68] = (int) j104;
                        int i69 = i66 + 3;
                        long j105 = (j101 * j87) + (((long) iArr27[i69]) & 4294967295L) + (j104 >>> 32);
                        iArr27[i69] = (int) j105;
                        int i70 = i66 + 4;
                        long j106 = (j101 * j88) + (((long) iArr27[i70]) & 4294967295L) + (j105 >>> 32);
                        iArr27[i70] = (int) j106;
                        int i71 = i66 + 5;
                        long j107 = (j101 * j89) + (((long) iArr27[i71]) & 4294967295L) + (j106 >>> 32);
                        iArr27[i71] = (int) j107;
                        int i72 = i66 + 6;
                        long j108 = (j101 * j90) + (((long) iArr27[i72]) & 4294967295L) + (j107 >>> 32);
                        iArr27[i72] = (int) j108;
                        int i73 = i66 + 7;
                        long j109 = (j101 * j91) + (((long) iArr27[i73]) & 4294967295L) + (j108 >>> 32);
                        iArr27[i73] = (int) j109;
                        iArr27[i66 + 8] = (int) (j109 >>> 32);
                        i66 = i67;
                    }
                    if (iArr7[3] < 0) {
                        long j110 = (((long) iArr13[0]) & 4294967295L) + (((long) iArr27[4]) & 4294967295L);
                        int i74 = (int) j110;
                        iArr27[4] = i74;
                        long j111 = (((long) iArr13[z6 ? 1 : 0]) & 4294967295L) + (((long) iArr27[5]) & 4294967295L) + (j110 >>> 32);
                        int i75 = (int) j111;
                        iArr27[5] = i75;
                        long j112 = (((long) iArr13[2]) & 4294967295L) + (((long) iArr27[6]) & 4294967295L) + (j111 >>> 32);
                        int i76 = (int) j112;
                        iArr27[6] = i76;
                        long j113 = (((long) iArr13[3]) & 4294967295L) + (((long) iArr27[i17]) & 4294967295L) + (j112 >>> 32);
                        int i77 = (int) j113;
                        iArr27[i17] = i77;
                        long j114 = (((long) iArr13[4]) & 4294967295L) + (((long) iArr27[8]) & 4294967295L) + (j113 >>> 32);
                        int i78 = (int) j114;
                        iArr27[8] = i78;
                        long j115 = (((long) iArr13[5]) & 4294967295L) + (((long) iArr27[9]) & 4294967295L) + (j114 >>> 32);
                        int i79 = (int) j115;
                        iArr27[9] = i79;
                        long j116 = (((long) iArr13[6]) & 4294967295L) + (((long) iArr27[10]) & 4294967295L) + (j115 >>> 32);
                        int i80 = (int) j116;
                        iArr27[10] = i80;
                        int i81 = (int) ((((long) iArr13[i17]) & 4294967295L) + (((long) iArr27[11]) & 4294967295L) + (j116 >>> 32));
                        iArr27[11] = i81;
                        long j117 = (((long) i74) & 4294967295L) - (((long) iArr11[0]) & 4294967295L);
                        iArr27[4] = (int) j117;
                        long j118 = ((((long) i75) & 4294967295L) - (((long) iArr11[z6 ? 1 : 0]) & 4294967295L)) + (j117 >> 32);
                        iArr27[5] = (int) j118;
                        long j119 = ((((long) i76) & 4294967295L) - (((long) iArr11[2]) & 4294967295L)) + (j118 >> 32);
                        iArr27[6] = (int) j119;
                        long j120 = ((((long) i77) & 4294967295L) - (((long) iArr11[3]) & 4294967295L)) + (j119 >> 32);
                        iArr27[i17] = (int) j120;
                        long j121 = ((((long) i78) & 4294967295L) - (((long) iArr11[4]) & 4294967295L)) + (j120 >> 32);
                        iArr27[8] = (int) j121;
                        long j122 = ((((long) i79) & 4294967295L) - (((long) iArr11[5]) & 4294967295L)) + (j121 >> 32);
                        iArr27[9] = (int) j122;
                        long j123 = ((((long) i80) & 4294967295L) - (((long) iArr11[6]) & 4294967295L)) + (j122 >> 32);
                        iArr27[10] = (int) j123;
                        iArr27[11] = (int) (((((long) i81) & 4294967295L) - (((long) iArr11[i17]) & 4294967295L)) + (j123 >> 32));
                    }
                    byte[] bArr7 = new byte[48];
                    g67.o(bArr7, 12, iArr27);
                    long jL = ((long) g67.l(bArr7, 0)) & 4294967295L;
                    long jK = ((long) (g67.k(bArr7, 4) << 4)) & 4294967295L;
                    long jL2 = ((long) g67.l(bArr7, i17)) & 4294967295L;
                    long jK2 = ((long) (g67.k(bArr7, 11) << 4)) & 4294967295L;
                    long jL3 = ((long) g67.l(bArr7, 14)) & 4294967295L;
                    long jK3 = ((long) (g67.k(bArr7, 18) << 4)) & 4294967295L;
                    long jL4 = ((long) g67.l(bArr7, 21)) & 4294967295L;
                    long jK4 = ((long) (g67.k(bArr7, 25) << 4)) & 4294967295L;
                    long jL5 = ((long) g67.l(bArr7, 28)) & 4294967295L;
                    long jK5 = g67.k(bArr7, 32) << 4;
                    long j124 = jK5 & 4294967295L;
                    long jL6 = g67.l(bArr7, 35);
                    long j125 = jL6 & 4294967295L;
                    long jK6 = g67.k(bArr7, 39) << 4;
                    long jL7 = g67.l(bArr7, 42);
                    long j126 = (((long) (((bArr7[46] & 255) | ((bArr7[47] & 255) << 8)) << 4)) & 4294967295L) + ((jL7 & 4294967295L) >> 28);
                    long j127 = (jL7 & 268435455) + ((jK6 & 4294967295L) >> 28);
                    long j128 = (jK4 - (j126 * (-6428113))) - (j127 * 5343);
                    long j129 = (jK6 & 268435455) + (j125 >> 28);
                    long j130 = jL2 - (j129 * (-50998291));
                    long j131 = (jK2 - (j127 * (-50998291))) - (j129 * 19280294);
                    long j132 = ((jL3 - (j126 * (-50998291))) - (j127 * 19280294)) - (j129 * 127719000);
                    long j133 = ((jK3 - (j126 * 19280294)) - (j127 * 127719000)) - (j129 * (-6428113));
                    long j134 = ((jL4 - (j126 * 127719000)) - (j127 * (-6428113))) - (j129 * 5343);
                    long j135 = (jL6 & 268435455) + (j124 >> 28);
                    long j136 = jK5 & 268435455;
                    long j137 = (jL5 - (j126 * 5343)) + (j128 >> 28);
                    long j138 = j137 & 268435455;
                    long j139 = j138 >>> 27;
                    long j140 = j136 + (j137 >> 28) + j139;
                    long j141 = jL - (j140 * (-50998291));
                    long j142 = ((jK - (j135 * (-50998291))) - (j140 * 19280294)) + (j141 >> 28);
                    long j143 = ((j130 - (j135 * 19280294)) - (j140 * 127719000)) + (j142 >> 28);
                    long j144 = ((j131 - (j135 * 127719000)) - (j140 * (-6428113))) + (j143 >> 28);
                    long j145 = ((j132 - (j135 * (-6428113))) - (j140 * 5343)) + (j144 >> 28);
                    long j146 = (j133 - (j135 * 5343)) + (j145 >> 28);
                    long j147 = j134 + (j146 >> 28);
                    long j148 = (j128 & 268435455) + (j147 >> 28);
                    long j149 = j138 + (j148 >> 28);
                    long j150 = (j149 >> 28) - j139;
                    long j151 = (j141 & 268435455) + (j150 & (-50998291));
                    long j152 = (j142 & 268435455) + (j150 & 19280294) + (j151 >> 28);
                    long j153 = (j143 & 268435455) + (j150 & 127719000) + (j152 >> 28);
                    long j154 = (j144 & 268435455) + (j150 & (-6428113)) + (j153 >> 28);
                    long j155 = (j145 & 268435455) + (j150 & 5343) + (j154 >> 28);
                    long j156 = (j146 & 268435455) + (j155 >> 28);
                    long j157 = (j147 & 268435455) + (j156 >> 28);
                    long j158 = (j148 & 268435455) + (j157 >> 28);
                    byte[] bArr8 = new byte[64];
                    g67.p(0, (j151 & 268435455) | ((j152 & 268435455) << 28), bArr8);
                    g67.p(7, ((j154 & 268435455) << 28) | (j153 & 268435455), bArr8);
                    g67.p(14, (j155 & 268435455) | ((j156 & 268435455) << 28), bArr8);
                    g67.p(21, ((j158 & 268435455) << 28) | (j157 & 268435455), bArr8);
                    g67.n(bArr8, (int) ((j149 & 268435455) + (j158 >> 28)), 28);
                    iz1.i(bArr8, iArr11);
                    as2 as2Var = new as2();
                    S();
                    byte[] bArr9 = new byte[256];
                    int i82 = 128;
                    byte[] bArr10 = new byte[128];
                    byte[] bArr11 = new byte[128];
                    l73.p(bArr9, 6, iArr11);
                    l73.p(bArr10, 4, iArr6);
                    l73.p(bArr11, 4, iArr7);
                    bs2[] bs2VarArr = new bs2[4];
                    bs2[] bs2VarArr2 = new bs2[4];
                    ot9 ot9Var = new ot9(5);
                    R(ix0Var2, bs2VarArr, ot9Var);
                    R(ix0Var, bs2VarArr2, ot9Var);
                    int[] iArr28 = (int[]) as2Var.a;
                    int i83 = 0;
                    for (int i84 = 10; i83 < i84; i84 = 10) {
                        iArr28[i83] = 0;
                        i83++;
                    }
                    nc8.T((int[]) as2Var.b);
                    nc8.T((int[]) as2Var.c);
                    int[] iArr29 = (int[]) as2Var.d;
                    for (int i85 = 0; i85 < 10; i85++) {
                        iArr29[i85] = 0;
                    }
                    nc8.T((int[]) as2Var.e);
                    while (true) {
                        i4 = i82 - 1;
                        if (i4 < 0) {
                            break;
                        }
                        if ((((((bArr9[i82 + 127] | bArr9[i4]) == true ? 1 : 0) | bArr10[i4]) == true ? 1 : 0) | bArr11[i4]) != 0) {
                            break;
                        }
                        i82 = i4;
                    }
                    while (i4 >= 0) {
                        byte b3 = bArr9[i4];
                        if (b3 != 0) {
                            N(b3 < 0 ? z6 ? 1 : 0 : false, y[(b3 >> 1) ^ (b3 >> 31)], as2Var, ot9Var);
                        }
                        byte b4 = bArr9[i4 + 128];
                        if (b4 != 0) {
                            N(b4 < 0 ? z6 ? 1 : 0 : false, G[(b4 >> 1) ^ (b4 >> 31)], as2Var, ot9Var);
                        }
                        byte b5 = bArr10[i4];
                        if (b5 != 0) {
                            O(b5 < 0 ? z6 ? 1 : 0 : false, bs2VarArr[(b5 >> 1) ^ (b5 >> 31)], as2Var, ot9Var);
                        }
                        byte b6 = bArr11[i4];
                        if (b6 != 0) {
                            O(b6 < 0 ? z6 ? 1 : 0 : false, bs2VarArr2[(b6 >> 1) ^ (b6 >> 31)], as2Var, ot9Var);
                        }
                        Q(as2Var);
                        i4--;
                    }
                    Q(as2Var);
                    Q(as2Var);
                    nc8.M((int[]) as2Var.a);
                    int[] iArr30 = (int[]) as2Var.b;
                    nc8.M(iArr30);
                    int[] iArr31 = (int[]) as2Var.c;
                    nc8.M(iArr31);
                    if (nc8.H((int[]) as2Var.a) == 0 || nc8.H(iArr30) != 0) {
                        return false;
                    }
                    int i86 = 0;
                    for (int i87 = 0; i87 < 10; i87++) {
                        i86 |= iArr30[i87] ^ iArr31[i87];
                    }
                    if (((((i86 >>> 1) | (i86 & 1)) - 1) >> 31) != 0) {
                        return z6;
                    }
                    return false;
                }
                char c4 = c2;
                int[] iArr32 = iArr;
                boolean z7 = z4 ? 1 : 0;
                int i88 = i5;
                int i89 = i7;
                int i90 = i8;
                boolean z8 = z5;
                int[] iArr33 = iArr4;
                if (i13 > i14) {
                    return z7;
                }
                i12--;
                z5 = z8;
                iArr4 = iArr33;
                iArr = iArr32;
                i5 = i88;
                i8 = i90;
                z4 = z7 ? 1 : 0;
                c2 = c4;
                i7 = i89;
            }
        }
        return z4;
    }

    public static void F(kb2[] kb2VarArr) {
        int length = kb2VarArr.length;
        int[] iArr = new int[length * 10];
        int[] iArr2 = new int[10];
        nc8.n(0, 0, (int[]) kb2VarArr[0].c, iArr2);
        nc8.n(0, 0, iArr2, iArr);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i2 >= length) {
                break;
            }
            nc8.K(iArr2, (int[]) kb2VarArr[i2].c, iArr2);
            nc8.n(0, i2 * 10, iArr2, iArr);
            i = i2;
        }
        nc8.b(iArr2, iArr2, iArr2);
        int[] iArr3 = new int[10];
        int[] iArr4 = new int[8];
        nc8.n(0, 0, iArr2, iArr3);
        nc8.M(iArr3);
        nc8.y(0, 0, iArr3, iArr4);
        nc8.y(5, 4, iArr3, iArr4);
        lg7.z(nc8.c, iArr4, iArr4);
        nc8.t(0, 0, iArr4, iArr2);
        nc8.t(4, 5, iArr4, iArr2);
        iArr2[9] = iArr2[9] & 16777215;
        int[] iArr5 = new int[10];
        while (i > 0) {
            int i3 = i - 1;
            nc8.n(i3 * 10, 0, iArr, iArr5);
            nc8.K(iArr5, iArr2, iArr5);
            nc8.K(iArr2, (int[]) kb2VarArr[i].c, iArr2);
            nc8.n(0, 0, iArr5, (int[]) kb2VarArr[i].c);
            i = i3;
        }
        nc8.n(0, 0, iArr2, (int[]) kb2VarArr[0].c);
    }

    public static int H(int i, int i2, int[] iArr, int[] iArr2) {
        long j = ((long) i) & 4294967295L;
        long j2 = 0;
        int i3 = 0;
        do {
            int i4 = i2 + i3;
            long j3 = ((((long) iArr[i3]) & 4294967295L) * j) + (((long) iArr2[i4]) & 4294967295L) + j2;
            iArr2[i4] = (int) j3;
            j2 = j3 >>> 32;
            i3++;
        } while (i3 < 14);
        return (int) j2;
    }

    public static void I(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
        }
    }

    public static HashMap L(String str) throws IOException {
        try {
            return j0(new JSONObject(str));
        } catch (JSONException e2) {
            throw new IOException(e2);
        }
    }

    public static void M(kb2 kb2Var, kb2 kb2Var2, kb2 kb2Var3, ot9 ot9Var) {
        int[] iArr = (int[]) kb2Var3.a;
        int[] iArr2 = (int[]) kb2Var3.b;
        int[] iArr3 = (int[]) ot9Var.a;
        int[] iArr4 = (int[]) ot9Var.b;
        nc8.c((int[]) kb2Var.b, (int[]) kb2Var.a, iArr2, iArr);
        nc8.c((int[]) kb2Var2.b, (int[]) kb2Var2.a, iArr4, iArr3);
        nc8.K(iArr, iArr3, iArr);
        nc8.K(iArr2, iArr4, iArr2);
        nc8.K((int[]) kb2Var.d, (int[]) kb2Var2.d, iArr3);
        nc8.K(iArr3, r, iArr3);
        int[] iArr5 = (int[]) kb2Var.c;
        nc8.b(iArr5, iArr5, iArr4);
        nc8.K(iArr4, (int[]) kb2Var2.c, iArr4);
        nc8.c(iArr2, iArr, iArr2, iArr);
        nc8.c(iArr4, iArr3, iArr4, iArr3);
        nc8.K(iArr, iArr2, (int[]) kb2Var3.d);
        nc8.K(iArr3, iArr4, (int[]) kb2Var3.c);
        nc8.K(iArr, iArr3, iArr);
        nc8.K(iArr2, iArr4, iArr2);
    }

    public static void N(boolean z, l22 l22Var, as2 as2Var, ot9 ot9Var) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3 = (int[]) as2Var.a;
        int[] iArr4 = (int[]) as2Var.c;
        int[] iArr5 = (int[]) as2Var.b;
        int[] iArr6 = (int[]) ot9Var.a;
        int[] iArr7 = (int[]) as2Var.d;
        int[] iArr8 = (int[]) as2Var.e;
        if (z) {
            iArr2 = iArr3;
            iArr = iArr5;
        } else {
            iArr = iArr3;
            iArr2 = iArr5;
        }
        nc8.c(iArr5, iArr3, iArr5, iArr3);
        nc8.K(iArr, (int[]) l22Var.b, iArr);
        nc8.K(iArr2, (int[]) l22Var.c, iArr2);
        nc8.K(iArr7, iArr8, iArr6);
        nc8.K(iArr6, (int[]) l22Var.d, iArr6);
        nc8.c(iArr5, iArr3, iArr8, iArr7);
        nc8.c(iArr4, iArr6, iArr2, iArr);
        nc8.K(iArr3, iArr5, iArr4);
        nc8.K(iArr3, iArr7, iArr3);
        nc8.K(iArr5, iArr8, iArr5);
    }

    public static void O(boolean z, bs2 bs2Var, as2 as2Var, ot9 ot9Var) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3 = (int[]) as2Var.a;
        int[] iArr4 = (int[]) as2Var.b;
        int[] iArr5 = (int[]) ot9Var.a;
        int[] iArr6 = (int[]) as2Var.c;
        int[] iArr7 = (int[]) as2Var.d;
        int[] iArr8 = (int[]) as2Var.e;
        if (z) {
            iArr2 = iArr3;
            iArr = iArr4;
        } else {
            iArr = iArr3;
            iArr2 = iArr4;
        }
        nc8.c(iArr4, iArr3, iArr4, iArr3);
        nc8.K(iArr, (int[]) bs2Var.b, iArr);
        nc8.K(iArr2, (int[]) bs2Var.c, iArr2);
        nc8.K(iArr7, iArr8, iArr5);
        nc8.K(iArr5, (int[]) bs2Var.d, iArr5);
        nc8.K(iArr6, (int[]) bs2Var.e, iArr6);
        nc8.c(iArr4, iArr3, iArr8, iArr7);
        nc8.c(iArr6, iArr5, iArr2, iArr);
        nc8.K(iArr3, iArr4, iArr6);
        nc8.K(iArr3, iArr7, iArr3);
        nc8.K(iArr4, iArr8, iArr4);
    }

    public static void P(as2 as2Var, kb2 kb2Var) {
        nc8.n(0, 0, (int[]) as2Var.a, (int[]) kb2Var.a);
        nc8.n(0, 0, (int[]) as2Var.b, (int[]) kb2Var.b);
        nc8.n(0, 0, (int[]) as2Var.c, (int[]) kb2Var.c);
        nc8.K((int[]) as2Var.d, (int[]) as2Var.e, (int[]) kb2Var.d);
    }

    public static void Q(as2 as2Var) {
        int[] iArr = (int[]) as2Var.a;
        int[] iArr2 = (int[]) as2Var.b;
        int[] iArr3 = (int[]) as2Var.c;
        int[] iArr4 = (int[]) as2Var.d;
        int[] iArr5 = (int[]) as2Var.e;
        nc8.b(iArr, iArr2, iArr4);
        nc8.i0(iArr, iArr);
        nc8.i0(iArr2, iArr2);
        nc8.i0(iArr3, iArr3);
        nc8.b(iArr3, iArr3, iArr3);
        nc8.c(iArr, iArr2, iArr5, iArr2);
        nc8.i0(iArr4, iArr4);
        nc8.l0(iArr5, iArr4, iArr4);
        nc8.b(iArr3, iArr2, iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = i3 + (i2 >> 26);
        int i11 = i5 + (i4 >> 26);
        int i12 = i8 + (i7 >> 26);
        int i13 = iArr[9] + (i9 >> 26);
        int i14 = (i4 & 67108863) + (i10 >> 25);
        int i15 = i6 + (i11 >> 25);
        int i16 = (i9 & 67108863) + (i12 >> 25);
        int i17 = ((i13 >> 25) * 38) + i;
        int i18 = (i2 & 67108863) + (i17 >> 26);
        int i19 = (i7 & 67108863) + (i15 >> 26);
        iArr[0] = i17 & 67108863;
        iArr[1] = i18 & 67108863;
        iArr[2] = (i10 & 33554431) + (i18 >> 26);
        iArr[3] = i14 & 67108863;
        iArr[4] = (i11 & 33554431) + (i14 >> 26);
        iArr[5] = i15 & 67108863;
        iArr[6] = i19 & 67108863;
        iArr[7] = (i12 & 33554431) + (i19 >> 26);
        iArr[8] = i16 & 67108863;
        iArr[9] = (i13 & 33554431) + (i16 >> 26);
        nc8.K(iArr, iArr2, iArr3);
        nc8.K(iArr, iArr4, iArr);
        nc8.K(iArr2, iArr5, iArr2);
    }

    public static void R(ix0 ix0Var, bs2[] bs2VarArr, ot9 ot9Var) {
        kb2 kb2Var = new kb2();
        int[] iArr = (int[]) ix0Var.b;
        Object obj = kb2Var.a;
        int i = 0;
        nc8.n(0, 0, iArr, (int[]) obj);
        int[] iArr2 = (int[]) ix0Var.c;
        Object obj2 = kb2Var.b;
        nc8.n(0, 0, iArr2, (int[]) obj2);
        nc8.T((int[]) kb2Var.c);
        Object obj3 = kb2Var.d;
        nc8.K(iArr, iArr2, (int[]) obj3);
        kb2 kb2Var2 = new kb2();
        M(kb2Var, kb2Var, kb2Var2, ot9Var);
        int i2 = 0;
        while (true) {
            bs2 bs2Var = new bs2(i);
            int[] iArr3 = new int[10];
            bs2Var.b = iArr3;
            int[] iArr4 = new int[10];
            bs2Var.c = iArr4;
            int[] iArr5 = new int[10];
            bs2Var.d = iArr5;
            int[] iArr6 = new int[10];
            bs2Var.e = iArr6;
            bs2VarArr[i2] = bs2Var;
            nc8.c((int[]) obj2, (int[]) obj, iArr4, iArr3);
            nc8.K((int[]) obj3, r, iArr5);
            int[] iArr7 = (int[]) kb2Var.c;
            nc8.b(iArr7, iArr7, iArr6);
            i2++;
            if (i2 == 4) {
                return;
            } else {
                M(kb2Var, kb2Var2, kb2Var, ot9Var);
            }
        }
    }

    public static void S() {
        synchronized (x) {
            try {
                if (H != null) {
                    return;
                }
                kb2[] kb2VarArr = new kb2[96];
                ot9 ot9Var = new ot9(5);
                int[] iArr = new int[10];
                int[] iArr2 = new int[10];
                int[] iArr3 = f;
                int i = 0;
                nc8.n(0, 0, iArr3, iArr);
                int[] iArr4 = k;
                nc8.n(0, 0, iArr4, iArr2);
                kb2 kb2Var = new kb2();
                kb2VarArr[0] = kb2Var;
                nc8.n(0, 0, iArr, (int[]) kb2Var.a);
                nc8.n(0, 0, iArr2, (int[]) kb2Var.b);
                nc8.T((int[]) kb2Var.c);
                nc8.K(iArr, iArr2, (int[]) kb2Var.d);
                kb2 kb2Var2 = new kb2();
                kb2 kb2Var3 = kb2VarArr[0];
                M(kb2Var3, kb2Var3, kb2Var2, ot9Var);
                for (int i2 = 1; i2 < 16; i2++) {
                    int i3 = 0 + i2;
                    kb2 kb2Var4 = kb2VarArr[i3 - 1];
                    kb2 kb2Var5 = new kb2();
                    kb2VarArr[i3] = kb2Var5;
                    M(kb2Var4, kb2Var2, kb2Var5, ot9Var);
                }
                int[] iArr5 = new int[10];
                int[] iArr6 = new int[10];
                nc8.n(0, 0, n, iArr5);
                nc8.n(0, 0, p, iArr6);
                kb2 kb2Var6 = new kb2();
                kb2VarArr[16] = kb2Var6;
                nc8.n(0, 0, iArr5, (int[]) kb2Var6.a);
                nc8.n(0, 0, iArr6, (int[]) kb2Var6.b);
                nc8.T((int[]) kb2Var6.c);
                nc8.K(iArr5, iArr6, (int[]) kb2Var6.d);
                kb2 kb2Var7 = new kb2();
                kb2 kb2Var8 = kb2VarArr[16];
                M(kb2Var8, kb2Var8, kb2Var7, ot9Var);
                for (int i4 = 1; i4 < 16; i4++) {
                    int i5 = 16 + i4;
                    kb2 kb2Var9 = kb2VarArr[i5 - 1];
                    kb2 kb2Var10 = new kb2();
                    kb2VarArr[i5] = kb2Var10;
                    M(kb2Var9, kb2Var7, kb2Var10, ot9Var);
                }
                as2 as2Var = new as2();
                nc8.n(0, 0, iArr3, (int[]) as2Var.a);
                nc8.n(0, 0, iArr4, (int[]) as2Var.b);
                nc8.T((int[]) as2Var.c);
                nc8.n(0, 0, (int[]) as2Var.a, (int[]) as2Var.d);
                nc8.n(0, 0, (int[]) as2Var.b, (int[]) as2Var.e);
                int i6 = 4;
                kb2[] kb2VarArr2 = new kb2[4];
                for (int i7 = 0; i7 < 4; i7++) {
                    kb2VarArr2[i7] = new kb2();
                }
                kb2 kb2Var11 = new kb2();
                int i8 = 0;
                int i9 = 32;
                while (i8 < 8) {
                    int i10 = i9 + 1;
                    kb2 kb2Var12 = new kb2();
                    kb2VarArr[i9] = kb2Var12;
                    int i11 = i;
                    while (i11 < i6) {
                        if (i11 == 0) {
                            P(as2Var, kb2Var12);
                        } else {
                            P(as2Var, kb2Var11);
                            M(kb2Var12, kb2Var11, kb2Var12, ot9Var);
                        }
                        Q(as2Var);
                        P(as2Var, kb2VarArr2[i11]);
                        if (i8 + i11 != 10) {
                            for (int i12 = 1; i12 < 8; i12++) {
                                Q(as2Var);
                            }
                        }
                        i11++;
                        i6 = 4;
                    }
                    int[] iArr7 = (int[]) kb2Var12.a;
                    nc8.L(iArr7, iArr7);
                    int[] iArr8 = (int[]) kb2Var12.d;
                    nc8.L(iArr8, iArr8);
                    int i13 = i;
                    i9 = i10;
                    while (i13 < 3) {
                        int i14 = 1 << i13;
                        int i15 = i;
                        while (i15 < i14) {
                            kb2 kb2Var13 = new kb2();
                            kb2VarArr[i9] = kb2Var13;
                            M(kb2VarArr[i9 - i14], kb2VarArr2[i13], kb2Var13, ot9Var);
                            i15++;
                            i9++;
                        }
                        i13++;
                        i = 0;
                    }
                    i8++;
                    i6 = 4;
                    i = 0;
                }
                F(kb2VarArr);
                y = new l22[16];
                for (int i16 = 0; i16 < 16; i16++) {
                    kb2 kb2Var14 = kb2VarArr[i16];
                    l22[] l22VarArr = y;
                    l22 l22Var = new l22();
                    l22VarArr[i16] = l22Var;
                    int[] iArr9 = (int[]) kb2Var14.a;
                    nc8.K(iArr9, (int[]) kb2Var14.c, iArr9);
                    int[] iArr10 = (int[]) kb2Var14.b;
                    nc8.K(iArr10, (int[]) kb2Var14.c, iArr10);
                    nc8.c((int[]) kb2Var14.b, (int[]) kb2Var14.a, (int[]) l22Var.c, (int[]) l22Var.b);
                    nc8.K((int[]) kb2Var14.a, (int[]) kb2Var14.b, (int[]) l22Var.d);
                    int[] iArr11 = (int[]) l22Var.d;
                    nc8.K(iArr11, t, iArr11);
                    nc8.M((int[]) l22Var.b);
                    nc8.M((int[]) l22Var.c);
                    nc8.M((int[]) l22Var.d);
                }
                G = new l22[16];
                for (int i17 = 0; i17 < 16; i17++) {
                    kb2 kb2Var15 = kb2VarArr[16 + i17];
                    l22[] l22VarArr2 = G;
                    l22 l22Var2 = new l22();
                    l22VarArr2[i17] = l22Var2;
                    int[] iArr12 = (int[]) kb2Var15.a;
                    nc8.K(iArr12, (int[]) kb2Var15.c, iArr12);
                    int[] iArr13 = (int[]) kb2Var15.b;
                    nc8.K(iArr13, (int[]) kb2Var15.c, iArr13);
                    nc8.c((int[]) kb2Var15.b, (int[]) kb2Var15.a, (int[]) l22Var2.c, (int[]) l22Var2.b);
                    nc8.K((int[]) kb2Var15.a, (int[]) kb2Var15.b, (int[]) l22Var2.d);
                    int[] iArr14 = (int[]) l22Var2.d;
                    nc8.K(iArr14, t, iArr14);
                    nc8.M((int[]) l22Var2.b);
                    nc8.M((int[]) l22Var2.c);
                    nc8.M((int[]) l22Var2.d);
                }
                H = new int[1920];
                int[] iArr15 = new int[10];
                int[] iArr16 = new int[10];
                int[] iArr17 = new int[10];
                int i18 = 0;
                for (int i19 = 32; i19 < 96; i19++) {
                    kb2 kb2Var16 = kb2VarArr[i19];
                    int[] iArr18 = (int[]) kb2Var16.a;
                    nc8.K(iArr18, (int[]) kb2Var16.c, iArr18);
                    int[] iArr19 = (int[]) kb2Var16.b;
                    nc8.K(iArr19, (int[]) kb2Var16.c, iArr19);
                    nc8.c((int[]) kb2Var16.b, (int[]) kb2Var16.a, iArr16, iArr15);
                    nc8.K((int[]) kb2Var16.a, (int[]) kb2Var16.b, iArr17);
                    nc8.K(iArr17, t, iArr17);
                    nc8.M(iArr15);
                    nc8.M(iArr16);
                    nc8.M(iArr17);
                    nc8.n(0, i18, iArr15, H);
                    nc8.n(0, i18 + 10, iArr16, H);
                    nc8.n(0, i18 + 20, iArr17, H);
                    i18 += 30;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void T(byte[] bArr, byte[] bArr2) {
        System.arraycopy(bArr, 0, bArr2, 0, 32);
        bArr2[0] = (byte) (bArr2[0] & 248);
        byte b2 = (byte) (bArr2[31] & 127);
        bArr2[31] = b2;
        bArr2[31] = (byte) (b2 | 64);
    }

    public static boolean U(Parcel parcel, int i) {
        n0(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static int V(Parcel parcel, int i) {
        n0(parcel, i, 4);
        return parcel.readInt();
    }

    public static Integer W(Parcel parcel, int i) {
        int iZ = Z(parcel, i);
        if (iZ == 0) {
            return null;
        }
        o0(parcel, iZ, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long X(Parcel parcel, int i) {
        n0(parcel, i, 8);
        return parcel.readLong();
    }

    public static Long Y(Parcel parcel, int i) {
        int iZ = Z(parcel, i);
        if (iZ == 0) {
            return null;
        }
        o0(parcel, iZ, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static int Z(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    public static void a0(Throwable th) {
        if ((th instanceof VirtualMachineError) || (th instanceof ThreadDeath) || (th instanceof InterruptedException) || (th instanceof ClassCircularityError) || (th instanceof ClassFormatError) || (th instanceof IncompatibleClassChangeError) || (th instanceof BootstrapMethodError) || (th instanceof VerifyError)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            y5.k(th);
        }
    }

    public static void b0(byte[] bArr, as2 as2Var) {
        char c2;
        int[] iArr = (int[]) as2Var.e;
        int[] iArr2 = (int[]) as2Var.d;
        int[] iArr3 = (int[]) as2Var.c;
        int[] iArr4 = (int[]) as2Var.b;
        int[] iArr5 = (int[]) as2Var.a;
        S();
        int i = 8;
        int[] iArr6 = new int[8];
        iz1.i(bArr, iArr6);
        int i2 = 0;
        int i3 = ~iArr6[0];
        int[] iArr7 = iz1.c;
        int i4 = 1;
        long j = 4294967295L;
        long j2 = ((long) (-(i3 & 1))) & 4294967295L;
        long j3 = 0;
        int i5 = 0;
        while (i5 < 8) {
            int i6 = i4;
            long j4 = j2;
            long j5 = (((long) iArr6[i5]) & j) + (((long) iArr7[i5]) & j4) + j3;
            iArr6[i5] = (int) j5;
            j3 = j5 >>> 32;
            i5++;
            i2 = i2;
            i4 = i6;
            j2 = j4;
            j = 4294967295L;
        }
        int i7 = i2;
        int i8 = 8;
        int i9 = i4;
        while (true) {
            i8--;
            if (i8 < 0) {
                break;
            }
            int i10 = iArr6[i8];
            iArr6[i8] = (i9 << 31) | (i10 >>> 1);
            i9 = i10;
        }
        int i11 = i7;
        while (true) {
            c2 = 7;
            if (i11 >= 8) {
                break;
            }
            iArr6[i11] = w13.d(w13.d(w13.d(w13.d(iArr6[i11], 11141290, 7), 52428, 14), 15728880, 4), 65280, 8);
            i11++;
        }
        int[] iArr8 = new int[10];
        int[] iArr9 = new int[10];
        int[] iArr10 = new int[10];
        int[] iArr11 = new int[10];
        for (int i12 = i7; i12 < 10; i12++) {
            iArr5[i12] = i7;
        }
        nc8.T(iArr4);
        nc8.T(iArr3);
        for (int i13 = i7; i13 < 10; i13++) {
            iArr2[i13] = i7;
        }
        nc8.T(iArr);
        int i14 = 28;
        int i15 = i7;
        while (true) {
            int i16 = i7;
            while (i16 < i) {
                int i17 = iArr6[i16] >>> i14;
                char c3 = c2;
                int i18 = (i17 >>> 3) & 1;
                int i19 = (i17 ^ (-i18)) & 7;
                int i20 = i16 * 240;
                int[] iArr12 = iArr6;
                for (int i21 = i7; i21 < 8; i21++) {
                    int i22 = ((i21 ^ i19) - 1) >> 31;
                    nc8.j(i22, i20, H, iArr8);
                    int i23 = i20;
                    nc8.j(i22, i20 + 10, H, iArr9);
                    nc8.j(i22, i23 + 20, H, iArr10);
                    i20 = i23 + 30;
                }
                int i24 = i15 ^ i18;
                nc8.k(iArr5, i24);
                nc8.k(iArr2, i24);
                nc8.c(iArr4, iArr5, iArr4, iArr5);
                nc8.K(iArr5, iArr8, iArr5);
                nc8.K(iArr4, iArr9, iArr4);
                nc8.K(iArr2, iArr, iArr11);
                nc8.K(iArr11, iArr10, iArr11);
                nc8.c(iArr4, iArr5, iArr, iArr2);
                nc8.c(iArr3, iArr11, iArr4, iArr5);
                nc8.K(iArr5, iArr4, iArr3);
                nc8.K(iArr5, iArr2, iArr5);
                nc8.K(iArr4, iArr, iArr4);
                i16++;
                i15 = i18;
                iArr6 = iArr12;
                c2 = c3;
                i = 8;
            }
            int[] iArr13 = iArr6;
            char c4 = c2;
            i14 -= 4;
            if (i14 < 0) {
                nc8.k(iArr5, i15);
                nc8.k(iArr2, i15);
                return;
            } else {
                Q(as2Var);
                iArr6 = iArr13;
                c2 = c4;
                i = 8;
            }
        }
    }

    public static String c0(Object obj) throws IOException {
        if (obj == null) {
            return "null";
        }
        if (obj instanceof String) {
            return JSONObject.quote((String) obj);
        }
        if (obj instanceof Number) {
            try {
                return JSONObject.numberToString((Number) obj);
            } catch (JSONException e2) {
                throw new IOException("Could not serialize number", e2);
            }
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? "true" : "false";
        }
        try {
            JSONStringer jSONStringer = new JSONStringer();
            d0(obj, jSONStringer);
            return jSONStringer.toString();
        } catch (JSONException e3) {
            throw new IOException("Failed to serialize JSON", e3);
        }
    }

    public static void d0(Object obj, JSONStringer jSONStringer) throws JSONException {
        if (obj instanceof Map) {
            jSONStringer.object();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                jSONStringer.key((String) entry.getKey());
                d0(entry.getValue(), jSONStringer);
            }
            jSONStringer.endObject();
            return;
        }
        if (!(obj instanceof Collection)) {
            jSONStringer.value(obj);
            return;
        }
        jSONStringer.array();
        Iterator it = ((Collection) obj).iterator();
        while (it.hasNext()) {
            d0(it.next(), jSONStringer);
        }
        jSONStringer.endArray();
    }

    public static int e(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < 14; i2++) {
            int i3 = i + i2;
            long j2 = (((long) iArr[i2]) & 4294967295L) + (4294967295L & ((long) iArr2[i3])) + j;
            iArr2[i3] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static void e0(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + Z(parcel, i));
    }

    public static void f(int[] iArr, int i) {
        long j = (((long) i) & 4294967295L) + (4294967295L & ((long) iArr[21]));
        iArr[21] = (int) j;
        if ((j >>> 32) == 0) {
            return;
        }
        for (int i2 = 22; i2 < 28; i2++) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return;
            }
        }
    }

    public static void f0(sa1 sa1Var) {
        sa1Var.getClass();
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            Const.N(sa1Var);
        } else if (V.INSTANCE.getA()) {
            ai8.q(sa1Var, ConfigListActivity.class);
        } else {
            int i = PremiumActivity.V;
            rs9.u(sa1Var);
        }
    }

    public static void g0(Activity activity, int i, String str) {
        Intent intent = new Intent(activity, (Class<?>) SettingsDetailActivity.class);
        intent.putExtra("category", i);
        intent.putExtra("category_title", str);
        activity.startActivity(intent);
    }

    public static void h(String str, boolean z) {
        if (z) {
            return;
        }
        c6.f(str);
    }

    public static int h0(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < 14; i2++) {
            int i3 = i + i2;
            long j2 = ((((long) iArr2[i3]) & 4294967295L) - (4294967295L & ((long) iArr[i2]))) + j;
            iArr2[i3] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static void i(String str, String str2) {
        j(str, str2);
        h(str2, !TextUtils.isEmpty(str));
    }

    public static Object i0(Object obj) {
        if (obj instanceof JSONObject) {
            return j0((JSONObject) obj);
        }
        if (!(obj instanceof JSONArray)) {
            if (obj.equals(JSONObject.NULL)) {
                return null;
            }
            return obj;
        }
        JSONArray jSONArray = (JSONArray) obj;
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(i0(jSONArray.get(i)));
        }
        return arrayList;
    }

    public static void j(Object obj, String str) {
        if (obj != null) {
            return;
        }
        f6.n(str);
    }

    public static HashMap j0(JSONObject jSONObject) {
        HashMap map = new HashMap(jSONObject.length());
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, i0(jSONObject.get(next)));
        }
        return map;
    }

    public static void k(String str, String str2) {
        if (str != null) {
            i(str, str2);
        }
    }

    public static int k0(Parcel parcel) {
        int i = parcel.readInt();
        int iZ = Z(parcel, i);
        char c2 = (char) i;
        int iDataPosition = parcel.dataPosition();
        if (c2 != 20293) {
            throw new hp5("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(i))), parcel);
        }
        int i2 = iZ + iDataPosition;
        if (i2 >= iDataPosition && i2 <= parcel.dataSize()) {
            return i2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(iDataPosition).length() + 32 + String.valueOf(i2).length());
        sb.append("Size read is invalid start=");
        sb.append(iDataPosition);
        sb.append(" end=");
        sb.append(i2);
        throw new hp5(sb.toString(), parcel);
    }

    public static hq3 l(Context context) {
        ProviderInfo providerInfo;
        fq3 fq3Var;
        ApplicationInfo applicationInfo;
        int i = 8;
        cz4 fe2Var = Build.VERSION.SDK_INT >= 28 ? new fe2(i) : new cz4(i);
        PackageManager packageManager = context.getPackageManager();
        yc9.f(packageManager, "Package manager required to locate emoji font provider");
        Iterator<ResolveInfo> it = packageManager.queryIntentContentProviders(new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                providerInfo = null;
                break;
            }
            providerInfo = it.next().providerInfo;
            if (providerInfo != null && (applicationInfo = providerInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                break;
            }
        }
        if (providerInfo == null) {
            fq3Var = null;
        } else {
            try {
                String str = providerInfo.authority;
                String str2 = providerInfo.packageName;
                Signature[] signatureArrE = fe2Var.e(packageManager, str2);
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArrE) {
                    arrayList.add(signature.toByteArray());
                }
                fq3Var = new fq3(str, str2, "emojicompat-emoji-font", Collections.singletonList(arrayList), null, null);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e2);
                fq3Var = null;
            }
        }
        if (fq3Var == null) {
            return null;
        }
        return new hq3(new gq3(context, fq3Var));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0182 A[Catch: all -> 0x017f, TRY_ENTER, TryCatch #16 {all -> 0x017f, blocks: (B:88:0x015e, B:90:0x016a, B:101:0x0182, B:102:0x0187), top: B:266:0x015e }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0191 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x0193 A[Catch: IllegalStateException -> 0x0179, IOException -> 0x017b, FileNotFoundException -> 0x017d, TRY_LEAVE, TryCatch #34 {FileNotFoundException -> 0x017d, IOException -> 0x017b, IllegalStateException -> 0x0179, blocks: (B:86:0x0156, B:91:0x0174, B:109:0x0193, B:107:0x0190, B:106:0x018d), top: B:293:0x0156 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:126:0x01cc A[Catch: all -> 0x01da, TRY_LEAVE, TryCatch #33 {all -> 0x01da, blocks: (B:124:0x01c0, B:126:0x01cc, B:135:0x01dd), top: B:282:0x01c0 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x01dd A[Catch: all -> 0x01da, TRY_ENTER, TRY_LEAVE, TryCatch #33 {all -> 0x01da, blocks: (B:124:0x01c0, B:126:0x01cc, B:135:0x01dd), top: B:282:0x01c0 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:150:0x0202  */
    /* JADX WARN: Code duplicated, block: B:151:0x0206  */
    /* JADX WARN: Code duplicated, block: B:160:0x0226 A[Catch: all -> 0x0264, TryCatch #1 {all -> 0x0264, blocks: (B:158:0x0220, B:160:0x0226, B:161:0x022a, B:163:0x0230), top: B:248:0x0220 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x0230 A[Catch: all -> 0x0264, TRY_LEAVE, TryCatch #1 {all -> 0x0264, blocks: (B:158:0x0220, B:160:0x0226, B:161:0x022a, B:163:0x0230), top: B:248:0x0220 }] */
    /* JADX WARN: Code duplicated, block: B:229:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:233:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:240:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:248:0x0220 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x015e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:0x020a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:0x01bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x0235 A[EDGE_INSN: B:294:0x0235->B:165:0x0235 BREAK  A[LOOP:0: B:161:0x022a->B:295:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:55:0x010f A[Catch: all -> 0x0122, IllegalStateException -> 0x0125, IOException -> 0x0127, TRY_LEAVE, TryCatch #12 {IllegalStateException -> 0x0125, blocks: (B:53:0x0105, B:55:0x010f, B:66:0x0129, B:67:0x012e), top: B:262:0x0105, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0129 A[Catch: all -> 0x0122, IllegalStateException -> 0x0125, IOException -> 0x0127, TRY_ENTER, TryCatch #12 {IllegalStateException -> 0x0125, blocks: (B:53:0x0105, B:55:0x010f, B:66:0x0129, B:67:0x012e), top: B:262:0x0105, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x016a A[Catch: all -> 0x017f, TRY_LEAVE, TryCatch #16 {all -> 0x017f, blocks: (B:88:0x015e, B:90:0x016a, B:101:0x0182, B:102:0x0187), top: B:266:0x015e }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v25, types: [int] */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v40 */
    /* JADX WARN: Type inference failed for: r7v41 */
    /* JADX WARN: Type inference failed for: r7v42 */
    /* JADX WARN: Type inference failed for: r7v43 */
    /* JADX WARN: Type inference failed for: r7v44 */
    /* JADX WARN: Type inference failed for: r7v45 */
    /* JADX WARN: Type inference failed for: r7v46 */
    /* JADX WARN: Type inference failed for: r7v47 */
    /* JADX WARN: Type inference failed for: r7v48 */
    /* JADX WARN: Type inference failed for: r7v49 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v50 */
    /* JADX WARN: Type inference failed for: r7v51 */
    /* JADX WARN: Type inference failed for: r7v52 */
    /* JADX WARN: Type inference failed for: r7v53 */
    /* JADX WARN: Type inference failed for: r7v54 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /* JADX WARN: Type inference failed for: r7v56 */
    /* JADX WARN: Type inference failed for: r7v57 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v15 */
    public static void l0(Context context, Executor executor, x76 x76Var, boolean z) {
        boolean z2;
        ?? A;
        tk2[] tk2VarArrA0;
        tk2[] tk2VarArr;
        x76 x76Var2;
        tk2[] tk2VarArr2;
        byte[] bArr;
        ?? r7;
        byte[] bArr2;
        ?? r8;
        boolean z3;
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Throwable th2;
        FileChannel channel;
        FileLock fileLockTryLock;
        byte[] bArr3;
        int i;
        ?? r9;
        boolean z4;
        boolean z5;
        ?? r10;
        ByteArrayOutputStream byteArrayOutputStream;
        sk2 sk2Var;
        ?? r11;
        String str;
        FileInputStream fileInputStreamA;
        ?? r12;
        ?? r13;
        boolean z6;
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            if (!z) {
                File file = new File(filesDir, "profileinstaller_profileWrittenFor_lastUpdateTime.dat");
                if (file.exists()) {
                    try {
                        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                        try {
                            long j = dataInputStream.readLong();
                            dataInputStream.close();
                            z6 = j == packageInfo.lastUpdateTime;
                            if (z6) {
                                x76Var.k(2, null);
                            }
                        } catch (Throwable th3) {
                            try {
                                dataInputStream.close();
                                throw th3;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                                throw th3;
                            }
                        }
                    } catch (IOException unused) {
                        z6 = false;
                    }
                } else {
                    z6 = false;
                }
                if (z6) {
                    Log.d("ProfileInstaller", "Skipping profile installation for " + context.getPackageName());
                    a86.c(context, false);
                    return;
                }
            }
            Log.d("ProfileInstaller", "Installing profile for " + context.getPackageName());
            byte[] bArr4 = yc9.l;
            File file2 = new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof");
            sk2 sk2Var2 = new sk2(assets, executor, x76Var, name, file2);
            byte[] bArr5 = sk2Var2.c;
            if (bArr5 != null) {
                if (!file2.exists()) {
                    try {
                        if (file2.createNewFile()) {
                            sk2Var2.f = true;
                            A = sk2Var2.a(assets, "dexopt/baseline.prof");
                            if (A != 0) {
                                if (Arrays.equals(bArr4, ms8.F(A, 4))) {
                                    throw new IllegalStateException("Invalid magic");
                                }
                                tk2VarArrA0 = yc9.a0(A, ms8.F(A, 4), sk2Var2.e);
                                A.close();
                                sk2Var2.g = tk2VarArrA0;
                            }
                            tk2VarArr = sk2Var2.g;
                            if (tk2VarArr != null) {
                                str = "dexopt/baseline.profm";
                                fileInputStreamA = sk2Var2.a(assets, "dexopt/baseline.profm");
                                r11 = str;
                                if (fileInputStreamA == null) {
                                    if (fileInputStreamA != null) {
                                        fileInputStreamA.close();
                                        r11 = str;
                                    }
                                    sk2Var = null;
                                    A = r11;
                                } else {
                                    if (Arrays.equals(yc9.m, ms8.F(fileInputStreamA, 4))) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    byte[] bArrF = ms8.F(fileInputStreamA, 4);
                                    sk2Var2.g = yc9.X(fileInputStreamA, bArrF, bArr5, tk2VarArr);
                                    fileInputStreamA.close();
                                    sk2Var = sk2Var2;
                                    A = bArrF;
                                }
                                if (sk2Var != null) {
                                    sk2Var2 = sk2Var;
                                }
                            }
                            x76Var2 = sk2Var2.b;
                            tk2VarArr2 = sk2Var2.g;
                            bArr = sk2Var2.c;
                            r7 = A;
                            r7 = A;
                            if (tk2VarArr2 != null) {
                                z5 = sk2Var2.f;
                                if (z5) {
                                    l0.e("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    return;
                                }
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                byteArrayOutputStream.write(bArr4);
                                byteArrayOutputStream.write(bArr);
                                if (yc9.j0(byteArrayOutputStream, bArr, tk2VarArr2)) {
                                    sk2Var2.h = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.close();
                                    r10 = byteArrayOutputStream;
                                    sk2Var2.g = null;
                                    r7 = r10;
                                } else {
                                    x76Var2.k(5, null);
                                    sk2Var2.g = null;
                                    byteArrayOutputStream.close();
                                    r7 = byteArrayOutputStream;
                                }
                            }
                            bArr2 = sk2Var2.h;
                            if (bArr2 != null) {
                                if (sk2Var2.f) {
                                    l0.e("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    return;
                                }
                                byteArrayInputStream = new ByteArrayInputStream(bArr2);
                                fileOutputStream = new FileOutputStream(sk2Var2.d);
                                channel = fileOutputStream.getChannel();
                                fileLockTryLock = channel.tryLock();
                                if (fileLockTryLock != null) {
                                    if (fileLockTryLock.isValid()) {
                                        bArr3 = new byte[512];
                                        while (true) {
                                            i = byteArrayInputStream.read(bArr3);
                                            if (i > 0) {
                                                break;
                                                break;
                                            }
                                            fileOutputStream.write(bArr3, 0, i);
                                        }
                                        r9 = 1;
                                        sk2Var2.b(1, null);
                                        fileLockTryLock.close();
                                        channel.close();
                                        fileOutputStream.close();
                                        byteArrayInputStream.close();
                                        sk2Var2.h = null;
                                        sk2Var2.g = null;
                                        z3 = true;
                                    }
                                }
                                throw new IOException("Unable to acquire a lock on the underlying file channel.");
                            }
                            z3 = false;
                            r9 = 1;
                            if (z3) {
                                I(packageInfo, filesDir);
                            }
                            z4 = z3;
                            r12 = r9;
                        } else {
                            sk2Var2.b(4, null);
                        }
                    } catch (IOException unused2) {
                        z2 = true;
                        sk2Var2.b(4, null);
                    }
                } else if (file2.canWrite()) {
                    sk2Var2.f = true;
                    try {
                        A = sk2Var2.a(assets, "dexopt/baseline.prof");
                    } catch (FileNotFoundException e2) {
                        x76Var.k(6, e2);
                        A = 0;
                    } catch (IOException e3) {
                        x76Var.k(7, e3);
                        A = 0;
                    }
                    try {
                        if (A != 0) {
                            try {
                                try {
                                    if (Arrays.equals(bArr4, ms8.F(A, 4))) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    tk2VarArrA0 = yc9.a0(A, ms8.F(A, 4), sk2Var2.e);
                                    try {
                                        A.close();
                                    } catch (IOException e4) {
                                        x76Var.k(7, e4);
                                    }
                                    sk2Var2.g = tk2VarArrA0;
                                } catch (IllegalStateException e5) {
                                    x76Var.k(8, e5);
                                    try {
                                        A.close();
                                    } catch (IOException e6) {
                                        x76Var.k(7, e6);
                                    }
                                    tk2VarArrA0 = null;
                                }
                            } catch (IOException e7) {
                                x76Var.k(7, e7);
                                A.close();
                                tk2VarArrA0 = null;
                            }
                        }
                        tk2VarArr = sk2Var2.g;
                        if (tk2VarArr != null && (A = Build.VERSION.SDK_INT) >= 31) {
                            try {
                                str = "dexopt/baseline.profm";
                                fileInputStreamA = sk2Var2.a(assets, "dexopt/baseline.profm");
                                r11 = str;
                                if (fileInputStreamA == null) {
                                    try {
                                        if (Arrays.equals(yc9.m, ms8.F(fileInputStreamA, 4))) {
                                            throw new IllegalStateException("Invalid magic");
                                        }
                                        byte[] bArrF2 = ms8.F(fileInputStreamA, 4);
                                        sk2Var2.g = yc9.X(fileInputStreamA, bArrF2, bArr5, tk2VarArr);
                                        fileInputStreamA.close();
                                        sk2Var = sk2Var2;
                                        A = bArrF2;
                                    } catch (Throwable th5) {
                                        try {
                                            fileInputStreamA.close();
                                            throw th5;
                                        } catch (Throwable th6) {
                                            th5.addSuppressed(th6);
                                            throw th5;
                                        }
                                    }
                                } else {
                                    if (fileInputStreamA != null) {
                                        fileInputStreamA.close();
                                        r11 = str;
                                    }
                                    sk2Var = null;
                                    A = r11;
                                }
                            } catch (FileNotFoundException e8) {
                                x76Var.k(9, e8);
                                r11 = A;
                            } catch (IOException e9) {
                                x76Var.k(7, e9);
                                r11 = A;
                            } catch (IllegalStateException e10) {
                                sk2Var2.g = null;
                                x76Var.k(8, e10);
                                r11 = A;
                            }
                            if (sk2Var != null) {
                                sk2Var2 = sk2Var;
                            }
                        }
                        x76Var2 = sk2Var2.b;
                        tk2VarArr2 = sk2Var2.g;
                        bArr = sk2Var2.c;
                        r7 = A;
                        r7 = A;
                        if (tk2VarArr2 != null && bArr != null) {
                            z5 = sk2Var2.f;
                            if (z5) {
                                l0.e("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                return;
                            }
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                try {
                                    byteArrayOutputStream.write(bArr4);
                                    byteArrayOutputStream.write(bArr);
                                    if (yc9.j0(byteArrayOutputStream, bArr, tk2VarArr2)) {
                                        x76Var2.k(5, null);
                                        sk2Var2.g = null;
                                        byteArrayOutputStream.close();
                                        r7 = byteArrayOutputStream;
                                    } else {
                                        sk2Var2.h = byteArrayOutputStream.toByteArray();
                                        byteArrayOutputStream.close();
                                        r10 = byteArrayOutputStream;
                                        sk2Var2.g = null;
                                        r7 = r10;
                                    }
                                } catch (Throwable th7) {
                                    try {
                                        byteArrayOutputStream.close();
                                        throw th7;
                                    } catch (Throwable th8) {
                                        th7.addSuppressed(th8);
                                        throw th7;
                                    }
                                }
                            } catch (IOException e11) {
                                x76Var2.k(7, e11);
                                r10 = z5;
                            } catch (IllegalStateException e12) {
                                x76Var2.k(8, e12);
                                r10 = z5;
                            }
                        }
                        bArr2 = sk2Var2.h;
                        if (bArr2 != null) {
                            z3 = false;
                            r9 = 1;
                        } else {
                            try {
                                if (sk2Var2.f) {
                                    l0.e("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    return;
                                }
                                try {
                                    try {
                                        byteArrayInputStream = new ByteArrayInputStream(bArr2);
                                        try {
                                            try {
                                                fileOutputStream = new FileOutputStream(sk2Var2.d);
                                                try {
                                                    try {
                                                        channel = fileOutputStream.getChannel();
                                                        try {
                                                            fileLockTryLock = channel.tryLock();
                                                            try {
                                                                try {
                                                                    if (fileLockTryLock != null) {
                                                                        try {
                                                                            if (fileLockTryLock.isValid()) {
                                                                                bArr3 = new byte[512];
                                                                                while (true) {
                                                                                    i = byteArrayInputStream.read(bArr3);
                                                                                    if (i > 0) {
                                                                                        break;
                                                                                    } else {
                                                                                        fileOutputStream.write(bArr3, 0, i);
                                                                                    }
                                                                                }
                                                                                r9 = 1;
                                                                                sk2Var2.b(1, null);
                                                                                fileLockTryLock.close();
                                                                                channel.close();
                                                                                fileOutputStream.close();
                                                                                byteArrayInputStream.close();
                                                                                sk2Var2.h = null;
                                                                                sk2Var2.g = null;
                                                                                z3 = true;
                                                                            }
                                                                        } catch (Throwable th9) {
                                                                            th = th9;
                                                                            Throwable th10 = th;
                                                                            if (fileLockTryLock == null) {
                                                                                throw th10;
                                                                            }
                                                                            try {
                                                                                fileLockTryLock.close();
                                                                                throw th10;
                                                                            } catch (Throwable th11) {
                                                                                th10.addSuppressed(th11);
                                                                                throw th10;
                                                                            }
                                                                        }
                                                                    }
                                                                    throw new IOException("Unable to acquire a lock on the underlying file channel.");
                                                                } catch (Throwable th12) {
                                                                    th = th12;
                                                                    Throwable th13 = th;
                                                                    if (channel == null) {
                                                                        throw th13;
                                                                    }
                                                                    try {
                                                                        channel.close();
                                                                        throw th13;
                                                                    } catch (Throwable th14) {
                                                                        th13.addSuppressed(th14);
                                                                        throw th13;
                                                                    }
                                                                }
                                                            } catch (Throwable th15) {
                                                                th = th15;
                                                            }
                                                        } catch (Throwable th16) {
                                                            th = th16;
                                                        }
                                                    } catch (Throwable th17) {
                                                        th = th17;
                                                        th2 = th;
                                                        try {
                                                            fileOutputStream.close();
                                                            throw th2;
                                                        } catch (Throwable th18) {
                                                            th2.addSuppressed(th18);
                                                            throw th2;
                                                        }
                                                    }
                                                } catch (Throwable th19) {
                                                    th = th19;
                                                    th2 = th;
                                                    fileOutputStream.close();
                                                    throw th2;
                                                }
                                            } catch (Throwable th20) {
                                                th = th20;
                                                th = th;
                                                try {
                                                    byteArrayInputStream.close();
                                                    throw th;
                                                } catch (Throwable th21) {
                                                    th.addSuppressed(th21);
                                                    throw th;
                                                }
                                            }
                                        } catch (Throwable th22) {
                                            th = th22;
                                            th = th;
                                            byteArrayInputStream.close();
                                            throw th;
                                        }
                                    } catch (FileNotFoundException e13) {
                                        e = e13;
                                        r7 = 1;
                                        sk2Var2.b(6, e);
                                        r8 = r7;
                                        sk2Var2.h = null;
                                        sk2Var2.g = null;
                                        z3 = false;
                                        r9 = r8;
                                    } catch (IOException e14) {
                                        e = e14;
                                        r7 = 1;
                                        sk2Var2.b(7, e);
                                        r8 = r7;
                                        sk2Var2.h = null;
                                        sk2Var2.g = null;
                                        z3 = false;
                                        r9 = r8;
                                    }
                                } catch (FileNotFoundException e15) {
                                    e = e15;
                                    sk2Var2.b(6, e);
                                    r8 = r7;
                                    sk2Var2.h = null;
                                    sk2Var2.g = null;
                                    z3 = false;
                                    r9 = r8;
                                } catch (IOException e16) {
                                    e = e16;
                                    sk2Var2.b(7, e);
                                    r8 = r7;
                                    sk2Var2.h = null;
                                    sk2Var2.g = null;
                                    z3 = false;
                                    r9 = r8;
                                }
                            } catch (Throwable th23) {
                                sk2Var2.h = null;
                                sk2Var2.g = null;
                                throw th23;
                            }
                        }
                        if (z3) {
                            I(packageInfo, filesDir);
                        }
                        z4 = z3;
                        r12 = r9;
                    } catch (Throwable th24) {
                        try {
                            A.close();
                            throw th24;
                        } catch (IOException e17) {
                            x76Var.k(7, e17);
                            throw th24;
                        }
                    }
                } else {
                    sk2Var2.b(4, null);
                }
                if (z4 || !z) {
                    r13 = 0;
                } else {
                    r13 = r12;
                }
                a86.c(context, r13);
            }
            sk2Var2.b(3, Integer.valueOf(Build.VERSION.SDK_INT));
            z2 = true;
            z4 = false;
            r12 = z2;
            if (z4) {
                r13 = 0;
            } else {
                r13 = 0;
            }
            a86.c(context, r13);
        } catch (PackageManager.NameNotFoundException e18) {
            x76Var.k(7, e18);
            a86.c(context, false);
        }
    }

    public static Bundle m(Parcel parcel, int i) {
        int iZ = Z(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iZ == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iZ);
        return bundle;
    }

    public static int m0(int i, int i2) {
        if (i2 < 0) {
            c6.f("cannot store more than Integer.MAX_VALUE elements");
            return 0;
        }
        if (i2 <= i) {
            return i;
        }
        int iHighestOneBit = i + (i >> 1) + 1;
        if (iHighestOneBit < i2) {
            iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            return Integer.MAX_VALUE;
        }
        return iHighestOneBit;
    }

    public static byte[] n(Parcel parcel, int i) {
        int iZ = Z(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iZ == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iDataPosition + iZ);
        return bArrCreateByteArray;
    }

    public static void n0(Parcel parcel, int i, int i2) {
        int iZ = Z(parcel, i);
        if (iZ == i2) {
            return;
        }
        String hexString = Integer.toHexString(iZ);
        int length = String.valueOf(i2).length();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + length + 19 + String.valueOf(iZ).length() + 4 + 1);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(iZ);
        throw new hp5(eq3.n(sb, " (0x", hexString, ")"), parcel);
    }

    public static wv3 o(String str, String str2) {
        Exception excA;
        try {
            vw3 vw3Var = new vw3(new cg4(2), null);
            if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ABORT_ERROR")) {
                excA = od2.a(new t2(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_CONSTRAINT_ERROR")) {
                excA = od2.a(new at1(), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_CLONE_ERROR")) {
                excA = od2.a(new ja2(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_ERROR")) {
                excA = od2.a(new t2(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ENCODING_ERROR")) {
                excA = od2.a(new ew2(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_HIERARCHY_REQUEST_ERROR")) {
                excA = od2.a(new r44(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_IN_USE_ATTRIBUTE_ERROR")) {
                excA = od2.a(new db4(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_CHARACTER_ERROR")) {
                excA = od2.a(new xf4(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_MODIFICATION_ERROR")) {
                excA = od2.a(new ew2(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_NODE_TYPE_ERROR")) {
                excA = od2.a(new cg4(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_STATE_ERROR")) {
                excA = od2.a(new ig4(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NAMESPACE_ERROR")) {
                excA = od2.a(new cg4(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NETWORK_ERROR")) {
                excA = od2.a(new r44(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NO_MODIFICATION_ALLOWED_ERROR")) {
                excA = od2.a(new t2(2), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_ALLOWED_ERROR")) {
                excA = od2.a(new ig4(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_FOUND_ERROR")) {
                excA = od2.a(new db4(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_READABLE_ERROR")) {
                excA = od2.a(new jo5(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_SUPPORTED_ERROR")) {
                excA = od2.a(new ja2(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPERATION_ERROR")) {
                excA = od2.a(new jo5(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPT_OUT_ERROR")) {
                excA = od2.a(new ja2(2), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_QUOTA_EXCEEDED_ERROR")) {
                excA = od2.a(new jo5(2), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_READ_ONLY_ERROR")) {
                excA = od2.a(new ig4(2), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SECURITY_ERROR")) {
                excA = od2.a(new xf4(1), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SYNTAX_ERROR")) {
                excA = od2.a(new hv7(0), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TIMEOUT_ERROR")) {
                excA = od2.a(new ew2(2), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TRANSACTION_INACTIVE_ERROR")) {
                excA = od2.a(new db4(2), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_UNKNOWN_ERROR")) {
                excA = od2.a(new cg4(2), str2, vw3Var);
            } else if (str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_VERSION_ERROR")) {
                excA = od2.a(new db4(3), str2, vw3Var);
            } else {
                if (!str.equals("androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_WRONG_DOCUMENT_ERROR")) {
                    throw new fs3();
                }
                excA = od2.a(new hv7(1), str2, vw3Var);
            }
            return (wv3) excA;
        } catch (fs3 unused) {
            return new vv3(str2, str);
        }
    }

    public static void o0(Parcel parcel, int i, int i2) {
        if (i == i2) {
            return;
        }
        String hexString = Integer.toHexString(i);
        int length = String.valueOf(i2).length();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + length + 19 + String.valueOf(i).length() + 4 + 1);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(i);
        throw new hp5(eq3.n(sb, " (0x", hexString, ")"), parcel);
    }

    public static Parcelable p(Parcel parcel, int i, Parcelable.Creator creator) {
        int iZ = Z(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iZ == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iZ);
        return parcelable;
    }

    public static String q(Parcel parcel, int i) {
        int iZ = Z(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iZ == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iZ);
        return string;
    }

    public static ArrayList r(Parcel parcel, int i) {
        int iZ = Z(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iZ == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iDataPosition + iZ);
        return arrayListCreateStringArrayList;
    }

    public static Object[] s(Parcel parcel, int i, Parcelable.Creator creator) {
        int iZ = Z(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iZ == 0) {
            return null;
        }
        Object[] objArrCreateTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iZ);
        return objArrCreateTypedArray;
    }

    public static ArrayList t(Parcel parcel, int i, Parcelable.Creator creator) {
        int iZ = Z(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iZ == 0) {
            return null;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(iDataPosition + iZ);
        return arrayListCreateTypedArrayList;
    }

    public static boolean v(byte[] bArr, boolean z, ix0 ix0Var) {
        int i = (bArr[31] & 128) >>> 7;
        int[] iArr = (int[]) ix0Var.c;
        nc8.s(0, 0, bArr, iArr);
        nc8.s(16, 5, bArr, iArr);
        iArr[9] = iArr[9] & 16777215;
        int[] iArr2 = new int[10];
        int[] iArr3 = new int[10];
        nc8.i0(iArr, iArr2);
        nc8.K(q, iArr2, iArr3);
        iArr2[0] = iArr2[0] - 1;
        iArr3[0] = iArr3[0] + 1;
        int[] iArr4 = (int[]) ix0Var.b;
        int[] iArr5 = new int[10];
        int[] iArr6 = new int[10];
        nc8.K(iArr2, iArr3, iArr5);
        nc8.i0(iArr3, iArr6);
        nc8.K(iArr5, iArr6, iArr5);
        nc8.i0(iArr6, iArr6);
        nc8.K(iArr6, iArr5, iArr6);
        int[] iArr7 = new int[10];
        int[] iArr8 = new int[10];
        nc8.i0(iArr6, iArr7);
        nc8.K(iArr6, iArr7, iArr7);
        int[] iArr9 = new int[10];
        nc8.i0(iArr7, iArr9);
        nc8.K(iArr6, iArr9, iArr9);
        nc8.h0(2, iArr9, iArr9);
        nc8.K(iArr7, iArr9, iArr9);
        int[] iArr10 = new int[10];
        nc8.h0(5, iArr9, iArr10);
        nc8.K(iArr9, iArr10, iArr10);
        int[] iArr11 = new int[10];
        nc8.h0(5, iArr10, iArr11);
        nc8.K(iArr9, iArr11, iArr11);
        nc8.h0(10, iArr11, iArr9);
        nc8.K(iArr10, iArr9, iArr9);
        nc8.h0(25, iArr9, iArr10);
        nc8.K(iArr9, iArr10, iArr10);
        nc8.h0(25, iArr10, iArr11);
        nc8.K(iArr9, iArr11, iArr11);
        nc8.h0(50, iArr11, iArr9);
        nc8.K(iArr10, iArr9, iArr9);
        nc8.h0(125, iArr9, iArr10);
        nc8.K(iArr9, iArr10, iArr10);
        nc8.h0(2, iArr10, iArr9);
        nc8.K(iArr9, iArr6, iArr8);
        nc8.K(iArr8, iArr5, iArr8);
        int[] iArr12 = new int[10];
        nc8.i0(iArr8, iArr12);
        nc8.K(iArr12, iArr3, iArr12);
        nc8.l0(iArr12, iArr2, iArr7);
        nc8.M(iArr7);
        if (nc8.H(iArr7) != 0) {
            nc8.n(0, 0, iArr8, iArr4);
        } else {
            nc8.b(iArr12, iArr2, iArr7);
            nc8.M(iArr7);
            if (nc8.H(iArr7) == 0) {
                return false;
            }
            nc8.K(iArr8, nc8.d, iArr4);
        }
        nc8.M(iArr4);
        if (i == 1 && nc8.H(iArr4) != 0) {
            return false;
        }
        if (z ^ (i != (iArr4[0] & 1))) {
            nc8.L(iArr4, iArr4);
            nc8.M(iArr4);
        }
        return true;
    }

    public static void w(ke keVar, byte[] bArr) {
        int[] iArr = (int[]) keVar.b;
        nc8.x(10, 0, bArr, iArr);
        nc8.x(15, 16, bArr, iArr);
        bArr[31] = (byte) (((((int[]) keVar.b)[0] & 1) << 7) | bArr[31]);
    }

    public static void x(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 26);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new hp5(sb.toString(), parcel);
    }

    public static ke y(byte[] bArr) {
        kr6 kr6Var = new kr6();
        byte[] bArr2 = new byte[64];
        kr6Var.update(bArr, 0, 32);
        kr6Var.doFinal(bArr2, 0);
        byte[] bArr3 = new byte[32];
        T(bArr2, bArr3);
        as2 as2Var = new as2();
        b0(bArr3, as2Var);
        int[] iArr = new int[10];
        int[] iArr2 = new int[10];
        nc8.E((int[]) as2Var.c, iArr2);
        nc8.K(iArr2, (int[]) as2Var.a, iArr);
        nc8.K(iArr2, (int[]) as2Var.b, iArr2);
        nc8.M(iArr);
        nc8.M(iArr2);
        int[] iArr3 = new int[10];
        int[] iArr4 = new int[10];
        int[] iArr5 = new int[10];
        nc8.i0(iArr, iArr4);
        nc8.i0(iArr2, iArr5);
        nc8.K(iArr4, iArr5, iArr3);
        nc8.l0(iArr4, iArr5, iArr4);
        nc8.K(iArr3, q, iArr3);
        iArr3[0] = iArr3[0] + 1;
        nc8.b(iArr3, iArr4, iArr3);
        nc8.M(iArr3);
        nc8.M(iArr5);
        if ((nc8.H(iArr3) & (~nc8.H(iArr5))) == 0) {
            g84.c();
            return null;
        }
        int[] iArr6 = new int[20];
        nc8.n(0, 0, iArr, iArr6);
        nc8.n(0, 10, iArr2, iArr6);
        return new ke(iArr6, 6);
    }

    public abstract int A();

    public abstract String B();

    public abstract Class C();

    public abstract gc8 D();

    public abstract void G(p60 p60Var);

    public abstract void J(int i);

    public abstract void K(Typeface typeface, boolean z);

    public abstract void g(p60 p60Var);

    public abstract Annotation z(Class cls);

    @Override // defpackage.om8
    public void a() {
    }

    @Override // defpackage.om8
    public void b() {
    }
}
