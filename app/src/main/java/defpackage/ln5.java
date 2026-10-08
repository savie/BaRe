package defpackage;

import android.R;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import androidx.fragment.app.o;
import androidx.fragment.app.z;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.lang.annotation.Annotation;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ln5 implements xs0, vc5, dh5, i60, vb8, h9, gw6, OnCompleteListener, t1a {
    public final /* synthetic */ int a;
    public Object b;
    public static final short[] c = {128, 64, 32, 16, 8, 4, 2, 1};
    public static final int[] d = {8388608, 4194304, 2097152, 1048576, 524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, RSAKeyGenerator.MIN_KEY_SIZE_BITS, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1};
    public static final byte[] e = {56, 48, 40, 32, 24, 16, 8, 0, 57, 49, 41, 33, 25, 17, 9, 1, 58, 50, 42, 34, 26, 18, 10, 2, 59, 51, 43, 35, 62, 54, 46, 38, 30, 22, 14, 6, 61, 53, 45, 37, 29, 21, 13, 5, 60, 52, 44, 36, 28, 20, 12, 4, 27, 19, 11, 3};
    public static final byte[] f = {1, 2, 4, 6, 8, 10, 12, 14, 15, 17, 19, 21, 23, 25, 27, 28};
    public static final byte[] k = {13, 16, 10, 23, 0, 4, 2, 27, 14, 5, 20, 9, 22, 18, 11, 3, 25, 7, 15, 6, 26, 19, 12, 1, 40, 51, 30, 36, 46, 54, 29, 39, 50, 44, 32, 47, 43, 48, 38, 55, 33, 52, 45, 41, 49, 35, 28, 31};
    public static final int[] n = {R.attr.transitionName, 0, 65536, R.attr.fillColor, R.attr.manageSpaceActivity, 66564, 4, 65536, 1024, R.attr.transitionName, R.attr.fillColor, 1024, 16778244, R.attr.manageSpaceActivity, 16777216, 4, 1028, 16778240, 16778240, 66560, 66560, R.attr.theme, R.attr.theme, 16778244, 65540, 16777220, 16777220, 65540, 0, 1028, 66564, 16777216, 65536, R.attr.fillColor, 4, R.attr.theme, R.attr.transitionName, 16777216, 16777216, 1024, R.attr.manageSpaceActivity, 65536, 66560, 16777220, 1024, 4, 16778244, 66564, R.attr.fillColor, 65540, R.attr.theme, 16778244, 16777220, 1028, 66564, R.attr.transitionName, 1028, 16778240, 16778240, 0, 65540, 66560, 0, R.attr.manageSpaceActivity};
    public static final int[] p = {-2146402272, -2147450880, 32768, 1081376, 1048576, 32, -2146435040, -2147450848, -2147483616, -2146402272, -2146402304, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, -2147450880, 1048576, 32, -2146435040, 1081344, 1048608, -2147450848, 0, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, 32768, 1081376, -2146435072, 1048608, -2147483616, 0, 1081344, 32800, -2146402304, -2146435072, 32800, 0, 1081376, -2146435040, 1048576, -2147450848, -2146435072, -2146402304, 32768, -2146435072, -2147450880, 32, -2146402272, 1081376, 32, 32768, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, 32800, -2146402304, 1048576, -2147483616, 1048608, -2147450848, -2147483616, 1048608, 1081344, 0, -2147450880, 32800, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, -2146435040, -2146402272, 1081344};
    public static final int[] q = {520, 134349312, 0, 134348808, 134218240, 0, 131592, 134218240, 131080, 134217736, 134217736, 131072, 134349320, 131080, 134348800, 520, 134217728, 8, 134349312, 512, 131584, 134348800, 134348808, 131592, 134218248, 131584, 131072, 134218248, 8, 134349320, 512, 134217728, 134349312, 134217728, 131080, 520, 131072, 134349312, 134218240, 0, 512, 131080, 134349320, 134218240, 134217736, 512, 0, 134348808, 134218248, 131072, 134217728, 134349320, 8, 131592, 131584, 134217736, 134348800, 134218248, 520, 134348800, 131592, 8, 134348808, 131584};
    public static final int[] r = {8396801, 8321, 8321, 128, 8396928, 8388737, 8388609, 8193, 0, 8396800, 8396800, 8396929, 129, 0, 8388736, 8388609, 1, 8192, 8388608, 8396801, 128, 8388608, 8193, 8320, 8388737, 1, 8320, 8388736, 8192, 8396928, 8396929, 129, 8388736, 8388609, 8396800, 8396929, 129, 0, 0, 8396800, 8320, 8388736, 8388737, 1, 8396801, 8321, 8321, 128, 8396929, 129, 1, 8192, 8388609, 8193, 8396928, 8388737, 8193, 8320, 8388608, 8396801, 128, 8388608, 8192, 8396928};
    public static final int[] t = {256, 34078976, 34078720, 1107296512, 524288, 256, 1073741824, 34078720, 1074266368, 524288, 33554688, 1074266368, 1107296512, 1107820544, 524544, 1073741824, 33554432, 1074266112, 1074266112, 0, 1073742080, 1107820800, 1107820800, 33554688, 1107820544, 1073742080, 0, 1107296256, 34078976, 33554432, 1107296256, 524544, 524288, 1107296512, 256, 33554432, 1073741824, 34078720, 1107296512, 1074266368, 33554688, 1073741824, 1107820544, 34078976, 1074266368, 256, 33554432, 1107820544, 1107820800, 524544, 1107296256, 1107820800, 34078720, 0, 1074266112, 1107296256, 524544, 33554688, 1073742080, 524288, 0, 1074266112, 34078976, 1073742080};
    public static final int[] x = {536870928, 541065216, 16384, 541081616, 541065216, 16, 541081616, 4194304, 536887296, 4210704, 4194304, 536870928, 4194320, 536887296, 536870912, 16400, 0, 4194320, 536887312, 16384, 4210688, 536887312, 16, 541065232, 541065232, 0, 4210704, 541081600, 16400, 4210688, 541081600, 536870912, 536887296, 16, 541065232, 4210688, 541081616, 4194304, 16400, 536870928, 4194304, 536887296, 536870912, 16400, 536870928, 541081616, 4210688, 541065216, 4210704, 541081600, 0, 541065232, 16, 16384, 541065216, 4210704, 16384, 4194320, 536887312, 0, 541081600, 536870912, 4194320, 536887312};
    public static final int[] y = {2097152, 69206018, 67110914, 0, RSAKeyGenerator.MIN_KEY_SIZE_BITS, 67110914, 2099202, 69208064, 69208066, 2097152, 0, 67108866, 2, 67108864, 69206018, 2050, 67110912, 2099202, 2097154, 67110912, 67108866, 69206016, 69208064, 2097154, 69206016, RSAKeyGenerator.MIN_KEY_SIZE_BITS, 2050, 69208066, 2099200, 2, 67108864, 2099200, 67108864, 2099200, 2097152, 67110914, 67110914, 69206018, 69206018, 2, 2097154, 67108864, 67110912, 2097152, 69208064, 2050, 2099202, 69208064, 2050, 67108866, 69208066, 69206016, 2099200, 0, 2, 69208066, 0, 2099202, 69206016, RSAKeyGenerator.MIN_KEY_SIZE_BITS, 67108866, 67110912, RSAKeyGenerator.MIN_KEY_SIZE_BITS, 2097154};
    public static final int[] G = {268439616, 4096, 262144, 268701760, 268435456, 268439616, 64, 268435456, 262208, 268697600, 268701760, 266240, 268701696, 266304, 4096, 64, 268697600, 268435520, 268439552, 4160, 266240, 262208, 268697664, 268701696, 4160, 0, 0, 268697664, 268435520, 268439552, 266304, 262144, 266304, 262144, 268701696, 4096, 64, 268697664, 4096, 266304, 268439552, 64, 268435520, 268697600, 268697664, 268435456, 262144, 268439616, 0, 268701760, 262208, 268435520, 268697600, 268439552, 268439616, 0, 268701760, 266240, 266240, 4160, 4160, 262208, 268435456, 268701696};

    public ln5(g45 g45Var) {
        this.a = 10;
        int i = g45Var.c;
        this.b = new ke[i];
        for (int i2 = 0; i2 < i; i2++) {
            ((ke[]) this.b)[i2] = new ke(g45Var);
        }
    }

    public static x22 m(ln5 ln5Var, Object obj) {
        if (obj.equals("androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            return ln5Var.p();
        }
        if (obj instanceof zv3) {
            for (w22 w22Var : ((zv3) obj).a) {
            }
        }
        Context context = (Context) ln5Var.b;
        context.getClass();
        if (context.getPackageManager().hasSystemFeature("android.software.leanback") || context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return ln5Var.p();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            g32 g32Var = new g32(context);
            g32 g32Var2 = g32Var.isAvailableOnDevice() ? g32Var : null;
            return g32Var2 == null ? ln5Var.p() : g32Var2;
        }
        if (i <= 33) {
            return ln5Var.p();
        }
        return null;
    }

    @Override // defpackage.xs0
    public void a(boolean z, z61 z61Var) {
        byte[] bArr;
        int i;
        if (!(z61Var instanceof oo4)) {
            c6.f("invalid parameter passed to DES init - ".concat(z61Var.getClass().getName()));
            return;
        }
        byte[] bArr2 = ((oo4) z61Var).a;
        if (bArr2.length > 8) {
            c6.f("DES key too long - should be 8 bytes");
            return;
        }
        int[] iArr = new int[32];
        boolean[] zArr = new boolean[56];
        boolean[] zArr2 = new boolean[56];
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= 56) {
                break;
            }
            byte b = e[i2];
            if ((c[b & 7] & bArr2[b >>> 3]) == 0) {
                z2 = false;
            }
            zArr[i2] = z2;
            i2++;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            int i4 = z ? i3 << 1 : (15 - i3) << 1;
            int i5 = i4 + 1;
            iArr[i5] = 0;
            iArr[i4] = 0;
            int i6 = 0;
            while (true) {
                bArr = f;
                if (i6 >= 28) {
                    break;
                }
                int i7 = bArr[i3] + i6;
                if (i7 < 28) {
                    zArr2[i6] = zArr[i7];
                } else {
                    zArr2[i6] = zArr[i7 - 28];
                }
                i6++;
            }
            for (i = 28; i < 56; i++) {
                int i8 = bArr[i3] + i;
                if (i8 < 56) {
                    zArr2[i] = zArr[i8];
                } else {
                    zArr2[i] = zArr[i8 - 28];
                }
            }
            for (int i9 = 0; i9 < 24; i9++) {
                byte[] bArr3 = k;
                boolean z3 = zArr2[bArr3[i9]];
                int[] iArr2 = d;
                if (z3) {
                    iArr[i4] = iArr[i4] | iArr2[i9];
                }
                if (zArr2[bArr3[i9 + 24]]) {
                    iArr[i5] = iArr[i5] | iArr2[i9];
                }
            }
        }
        for (int i10 = 0; i10 != 32; i10 += 2) {
            int i11 = iArr[i10];
            int i12 = i10 + 1;
            int i13 = iArr[i12];
            iArr[i10] = ((16515072 & i13) >>> 10) | ((i11 & 16515072) << 6) | ((i11 & 4032) << 10) | ((i13 & 4032) >>> 6);
            iArr[i12] = ((i11 & 63) << 16) | ((i11 & 258048) << 12) | ((258048 & i13) >>> 4) | (i13 & 63);
        }
        this.b = iArr;
        if (z61Var instanceof b42) {
            c6.f("params should not be CryptoServicePurpose");
        } else {
            ((d42) e42.a.get()).getClass();
        }
    }

    @Override // defpackage.vc5
    public void d(fc5 fc5Var, boolean z) {
        eo eoVar;
        fo foVar = (fo) this.b;
        fc5 fc5VarK = fc5Var.k();
        int i = 0;
        boolean z2 = fc5VarK != fc5Var;
        if (z2) {
            fc5Var = fc5VarK;
        }
        eo[] eoVarArr = foVar.c0;
        int length = eoVarArr != null ? eoVarArr.length : 0;
        while (true) {
            if (i < length) {
                eoVar = eoVarArr[i];
                if (eoVar != null && eoVar.h == fc5Var) {
                    break;
                } else {
                    i++;
                }
            } else {
                eoVar = null;
                break;
            }
        }
        if (eoVar != null) {
            if (!z2) {
                foVar.s(eoVar, z);
            } else {
                foVar.q(eoVar.a, eoVar, fc5VarK);
                foVar.s(eoVar, true);
            }
        }
    }

    @Override // defpackage.xs0
    public String f() {
        return "DES";
    }

    @Override // defpackage.vb8
    public Annotation getAnnotation(Class cls) {
        return null;
    }

    @Override // defpackage.xs0
    public int getBlockSize() {
        return 8;
    }

    @Override // defpackage.vb8
    public Class getType() {
        return (Class) this.b;
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        g9 g9Var = (g9) obj;
        z zVar = (z) this.b;
        rr3 rr3Var = (rr3) zVar.F.pollFirst();
        if (rr3Var == null) {
            Log.w("FragmentManager", "No IntentSenders were started for " + this);
            return;
        }
        String str = rr3Var.a;
        int i = rr3Var.b;
        o oVarC = zVar.c.c(str);
        if (oVarC != null) {
            oVarC.onActivityResult(i, g9Var.a, g9Var.b);
            return;
        }
        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
    }

    @Override // defpackage.xs0
    public int j(byte[] bArr, byte[] bArr2, int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr == null) {
            l0.e("DES engine not initialised");
            return 0;
        }
        if (i + 8 > bArr.length) {
            throw new ua2("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new dv5("output buffer too short");
        }
        int iA = xx3.a(bArr, i);
        int iA2 = xx3.a(bArr, i + 4);
        int i3 = ((iA >>> 4) ^ iA2) & 252645135;
        int i4 = iA2 ^ i3;
        int i5 = (i3 << 4) ^ iA;
        int i6 = ((i5 >>> 16) ^ i4) & 65535;
        int i7 = i4 ^ i6;
        int i8 = i5 ^ (i6 << 16);
        int i9 = ((i7 >>> 2) ^ i8) & 858993459;
        int i10 = i8 ^ i9;
        int i11 = i7 ^ (i9 << 2);
        int i12 = ((i11 >>> 8) ^ i10) & 16711935;
        int i13 = i10 ^ i12;
        int i14 = i11 ^ (i12 << 8);
        int i15 = (i14 >>> 31) | (i14 << 1);
        int i16 = (i13 ^ i15) & (-1431655766);
        int i17 = i13 ^ i16;
        int i18 = i15 ^ i16;
        int i19 = (i17 >>> 31) | (i17 << 1);
        for (int i20 = 0; i20 < 8; i20++) {
            int i21 = i20 * 4;
            int i22 = ((i18 << 28) | (i18 >>> 4)) ^ iArr[i21];
            int[] iArr2 = y;
            int i23 = iArr2[i22 & 63];
            int[] iArr3 = t;
            int i24 = i23 | iArr3[(i22 >>> 8) & 63];
            int[] iArr4 = q;
            int i25 = i24 | iArr4[(i22 >>> 16) & 63];
            int[] iArr5 = n;
            int i26 = iArr5[(i22 >>> 24) & 63] | i25;
            int i27 = iArr[i21 + 1] ^ i18;
            int[] iArr6 = G;
            int i28 = i26 | iArr6[i27 & 63];
            int[] iArr7 = x;
            int i29 = i28 | iArr7[(i27 >>> 8) & 63];
            int[] iArr8 = r;
            int i30 = i29 | iArr8[(i27 >>> 16) & 63];
            int[] iArr9 = p;
            i19 ^= i30 | iArr9[(i27 >>> 24) & 63];
            int i31 = ((i19 << 28) | (i19 >>> 4)) ^ iArr[i21 + 2];
            int i32 = iArr5[(i31 >>> 24) & 63] | iArr2[i31 & 63] | iArr3[(i31 >>> 8) & 63] | iArr4[(i31 >>> 16) & 63];
            int i33 = iArr[i21 + 3] ^ i19;
            i18 ^= (((i32 | iArr6[i33 & 63]) | iArr7[(i33 >>> 8) & 63]) | iArr8[(i33 >>> 16) & 63]) | iArr9[(i33 >>> 24) & 63];
        }
        int i34 = (i18 >>> 1) | (i18 << 31);
        int i35 = (i19 ^ i34) & (-1431655766);
        int i36 = i19 ^ i35;
        int i37 = i34 ^ i35;
        int i38 = (i36 >>> 1) | (i36 << 31);
        int i39 = ((i38 >>> 8) ^ i37) & 16711935;
        int i40 = i37 ^ i39;
        int i41 = i38 ^ (i39 << 8);
        int i42 = ((i41 >>> 2) ^ i40) & 858993459;
        int i43 = i40 ^ i42;
        int i44 = i41 ^ (i42 << 2);
        int i45 = ((i43 >>> 16) ^ i44) & 65535;
        int i46 = i44 ^ i45;
        int i47 = i43 ^ (i45 << 16);
        int i48 = ((i47 >>> 4) ^ i46) & 252645135;
        xx3.n(bArr2, i47 ^ (i48 << 4), i2);
        xx3.n(bArr2, i46 ^ i48, i2 + 4);
        return 8;
    }

    @Override // defpackage.gw6
    public boolean k() {
        return true;
    }

    public void l(byte[] bArr) {
        int i = 0;
        while (true) {
            ke[] keVarArr = (ke[]) this.b;
            if (i >= keVarArr.length) {
                return;
            }
            ke keVar = keVarArr[i];
            int i2 = i << 8;
            int i3 = 0;
            while (true) {
                l22[] l22VarArr = (l22[]) keVar.b;
                if (i3 < l22VarArr.length) {
                    l22 l22Var = l22VarArr[i3];
                    short s = (short) (i2 + i3);
                    oe oeVar = (oe) l22Var.d;
                    oeVar.getClass();
                    lr6 lr6Var = (lr6) oeVar.b;
                    byte[] bArr2 = new byte[842];
                    lr6Var.reset();
                    lr6Var.update(bArr, 0, bArr.length);
                    lr6Var.update(new byte[]{(byte) s, (byte) (s >> 8)}, 0, 2);
                    int i4 = 840;
                    lr6Var.m(bArr2, 0, 840);
                    int iJ = l22.j(l22Var, 0, 256, bArr2, 840);
                    while (iJ < 256) {
                        int i5 = i4 % 3;
                        for (int i6 = 0; i6 < i5; i6++) {
                            bArr2[i6] = bArr2[(i4 - i5) + i6];
                        }
                        lr6Var.m(bArr2, i5, 168);
                        i4 = 168 + i5;
                        iJ += l22.j(l22Var, iJ, 256 - iJ, bArr2, i4);
                    }
                    i3++;
                }
            }
            i++;
        }
    }

    public void n(zq8 zq8Var, ke keVar) {
        l22[] l22VarArr = (l22[]) keVar.b;
        int i = 0;
        int i2 = 0;
        while (true) {
            ke[] keVarArr = (ke[]) this.b;
            if (i2 >= keVarArr.length) {
                return;
            }
            l22 l22Var = ((l22[]) zq8Var.b)[i2];
            ke keVar2 = keVarArr[i2];
            g45 g45Var = (g45) l22Var.c;
            int[] iArr = new int[256];
            g45Var.h.getClass();
            l22 l22Var2 = ((l22[]) keVar2.b)[i];
            l22 l22Var3 = l22VarArr[i];
            for (int i3 = i; i3 < 256; i3++) {
                ((int[]) l22Var.b)[i3] = xx3.w(((long) ((int[]) l22Var2.b)[i3]) * ((long) ((int[]) l22Var3.b)[i3]));
            }
            for (int i4 = 1; i4 < g45Var.d; i4++) {
                l22 l22Var4 = ((l22[]) keVar2.b)[i4];
                l22 l22Var5 = l22VarArr[i4];
                for (int i5 = 0; i5 < 256; i5++) {
                    iArr[i5] = xx3.w(((long) ((int[]) l22Var4.b)[i5]) * ((long) ((int[]) l22Var5.b)[i5]));
                }
                for (int i6 = 0; i6 < 256; i6++) {
                    int[] iArr2 = (int[]) l22Var.b;
                    iArr2[i6] = iArr2[i6] + iArr[i6];
                }
            }
            i2++;
            i = 0;
        }
    }

    public void o(Exception exc) {
        dh2 dh2Var = (dh2) this.b;
        if (h5.f.c(dh2Var, null, new c5(exc))) {
            h5.c(dh2Var);
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        o21 o21Var = (o21) this.b;
        Exception exception = task.getException();
        if (exception != null) {
            o21Var.resumeWith(new bn6(exception));
        } else if (task.isCanceled()) {
            o21Var.n(null);
        } else {
            o21Var.resumeWith(task.getResult());
        }
    }

    @Override // defpackage.gw6
    public fw6 open(String str) {
        str.getClass();
        ns7 ns7Var = (ns7) this.b;
        String databaseName = ns7Var.getDatabaseName();
        if (databaseName == null) {
            if (!str.equals(":memory:")) {
                f6.g(eq3.k("This driver is configured to open an in-memory database but a file-based named '", str, "' was requested."));
                return null;
            }
        } else if (!databaseName.equals(str) && !nq7.B0(databaseName, '/').equals(nq7.B0(str, '/'))) {
            throw new IllegalArgumentException(("This driver is configured to open a database named '" + ns7Var.getDatabaseName() + "' but '" + str + "' was requested.").toString());
        }
        return new ms7(ns7Var.L());
    }

    public x22 p() throws PackageManager.NameNotFoundException {
        String string;
        Context context = (Context) this.b;
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 132);
        ArrayList arrayList = new ArrayList();
        ServiceInfo[] serviceInfoArr = packageInfo.services;
        if (serviceInfoArr != null) {
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                Bundle bundle = serviceInfo.metaData;
                if (bundle != null && (string = bundle.getString("androidx.credentials.CREDENTIAL_PROVIDER_KEY")) != null) {
                    arrayList.add(string);
                }
            }
        }
        List listV1 = el1.v1(arrayList);
        if (listV1.isEmpty()) {
            return null;
        }
        Iterator it = listV1.iterator();
        x22 x22Var = null;
        while (it.hasNext()) {
            try {
                Object objNewInstance = Class.forName((String) it.next()).getConstructor(Context.class).newInstance(context);
                objNewInstance.getClass();
                x22 x22Var2 = (x22) objNewInstance;
                if (!x22Var2.isAvailableOnDevice()) {
                    continue;
                } else {
                    if (x22Var != null) {
                        Log.i("CredProviderFactory", "Only one active OEM CredentialProvider allowed");
                        return null;
                    }
                    x22Var = x22Var2;
                }
            } catch (Throwable unused) {
            }
        }
        return x22Var;
    }

    @Override // defpackage.vc5
    public boolean r(fc5 fc5Var) {
        Window.Callback callback;
        fo foVar = (fo) this.b;
        if (fc5Var != fc5Var.k() || !foVar.W || (callback = foVar.t.getCallback()) == null || foVar.h0) {
            return true;
        }
        callback.onMenuOpened(108, fc5Var);
        return true;
    }

    @Override // defpackage.i60
    public ra2 t(AssetManager assetManager, String str) {
        return new g73(0, str, assetManager);
    }

    public String toString() {
        switch (this.a) {
            case 4:
                return ((Class) this.b).toString();
            default:
                return super.toString();
        }
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        switch (this.a) {
            case 3:
                return new j60((AssetManager) this.b, this);
            default:
                return new wl6((Resources) this.b, ai5Var.a(Uri.class, AssetFileDescriptor.class));
        }
    }

    @Override // defpackage.t1a
    public Object zza(String str) {
        y1a y1aVar = (y1a) this.b;
        String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            Provider provider = Security.getProvider(strArr[i]);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        Iterator it = arrayList.iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return y1aVar.e(str, (Provider) it.next());
            } catch (Exception e2) {
                if (exc == null) {
                    exc = e2;
                }
            }
        }
        return y1aVar.e(str, null);
    }

    @Override // defpackage.xs0
    public void reset() {
    }

    public /* synthetic */ ln5(int i) {
        this.a = i;
    }

    public /* synthetic */ ln5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public ln5(ArrayList arrayList) {
        this.a = 16;
        this.b = Collections.unmodifiableList(arrayList);
    }

    public ln5(Context context) {
        this.a = 6;
        context.getClass();
        this.b = context;
    }

    public ln5(ns7 ns7Var) {
        this.a = 13;
        ns7Var.getClass();
        this.b = ns7Var;
    }
}
