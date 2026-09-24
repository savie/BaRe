package defpackage;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.SpannableStringBuilder;
import android.view.Gravity;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.widget.FrameLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.client.claims.ClaimsRequest;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class lg7 {
    public static final u00 h;
    public static u00 i;
    public static final q86 a = new q86("list-item-type");
    public static final q86 b = new q86("bullet-list-item-level");
    public static final q86 c = new q86("ordered-list-item-number");
    public static final q86 d = new q86("heading-level");
    public static final q86 e = new q86("link-destination");
    public static final q86 f = new q86("paragraph-is-in-tight-list");
    public static final q86 g = new q86("code-block-info");
    public static final int[] j = {R.attr.stateListAnimator};

    static {
        Object obj = null;
        h = new u00(5, obj, obj, obj);
    }

    public static void A(int i2, int i3, byte[] bArr, short[] sArr, short[] sArr2) {
        int i4 = i2 + i2;
        int i5 = i4 - 1;
        short[] sArr3 = new short[i5];
        for (int i6 = 0; i6 < i2; i6++) {
            short sQ = 0;
            for (int i7 = 0; i7 <= i6; i7++) {
                sQ = (short) q((sArr2[i7] * bArr[i6 - i7]) + sQ, i3);
            }
            sArr3[i6] = sQ;
        }
        for (int i8 = i2; i8 < i5; i8++) {
            short sQ2 = 0;
            for (int i9 = (i8 - i2) + 1; i9 < i2; i9++) {
                sQ2 = (short) q((sArr2[i9] * bArr[i8 - i9]) + sQ2, i3);
            }
            sArr3[i8] = sQ2;
        }
        for (int i10 = i4 - 2; i10 >= i2; i10--) {
            int i11 = i10 - i2;
            sArr3[i11] = (short) q(sArr3[i11] + sArr3[i10], i3);
            int i12 = i11 + 1;
            sArr3[i12] = (short) q(sArr3[i12] + sArr3[i10], i3);
        }
        for (int i13 = 0; i13 < i2; i13++) {
            sArr[i13] = sArr3[i13];
        }
    }

    public static int B(int[] iArr, int i2) {
        int i3 = i2 - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i4 - iArr[i5];
            iArr[i5] = 1073741823 & i6;
            i4 = i6 >> 30;
        }
        int i7 = i4 - iArr[i3];
        iArr[i3] = i7;
        return i7 >> 30;
    }

    public static void C(AppBarLayout appBarLayout, float f2) {
        int integer = appBarLayout.getResources().getInteger(org.swiftapps.swiftbackup.R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j2 = integer;
        stateListAnimator.addState(new int[]{R.attr.state_enabled, org.swiftapps.swiftbackup.R.attr.state_liftable, -org.swiftapps.swiftbackup.R.attr.state_lifted}, ObjectAnimator.ofFloat(appBarLayout, "elevation", 0.0f).setDuration(j2));
        stateListAnimator.addState(new int[]{R.attr.state_enabled}, ObjectAnimator.ofFloat(appBarLayout, "elevation", f2).setDuration(j2));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(appBarLayout, "elevation", 0.0f).setDuration(0L));
        appBarLayout.setStateListAnimator(stateListAnimator);
    }

    public static void D(oe oeVar, float f2) {
        mq6 mq6Var = (mq6) oeVar.b;
        r21 r21Var = (r21) oeVar.c;
        boolean useCompatPadding = r21Var.getUseCompatPadding();
        boolean preventCornerOverlap = r21Var.getPreventCornerOverlap();
        if (f2 != mq6Var.e || mq6Var.f != useCompatPadding || mq6Var.g != preventCornerOverlap) {
            mq6Var.e = f2;
            mq6Var.f = useCompatPadding;
            mq6Var.g = preventCornerOverlap;
            mq6Var.b(null);
            mq6Var.invalidateSelf();
        }
        if (!r21Var.getUseCompatPadding()) {
            oeVar.j(0, 0, 0, 0);
            return;
        }
        mq6 mq6Var2 = (mq6) oeVar.b;
        float f3 = mq6Var2.e;
        float f4 = mq6Var2.a;
        int iCeil = (int) Math.ceil(nq6.a(f3, f4, r21Var.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(nq6.b(f3, f4, r21Var.getPreventCornerOverlap()));
        oeVar.j(iCeil, iCeil2, iCeil, iCeil2);
    }

    public static void E(EditorInfo editorInfo, CharSequence charSequence, int i2, int i3) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i2);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i3);
    }

    public static void F(sa1 sa1Var, SyncOption syncOption, mt3 mt3Var) {
        sa1Var.getClass();
        syncOption.getClass();
        List entries = SyncOption.getEntries();
        ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
        w3 w3Var = new w3((z3) entries);
        while (w3Var.hasNext()) {
            arrayList.add(((SyncOption) w3Var.next()).toDisplayString());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        lh6 lh6Var = new lh6();
        lh6Var.a = syncOption;
        s35 s35Var = new s35(sa1Var, org.swiftapps.swiftbackup.R.style.M3AlertDialogTheme, new hv1(sa1Var, org.swiftapps.swiftbackup.R.style.M3AlertDialogTheme), null);
        s35Var.v(org.swiftapps.swiftbackup.R.string.sync_options);
        kx2 kx2Var = (kx2) entries;
        s35Var.u(strArr, kx2Var.indexOf(syncOption), new b52(3, lh6Var, kx2Var));
        s35Var.s(org.swiftapps.swiftbackup.R.string.ok, new tb3(2, mt3Var, lh6Var));
        s35Var.q(org.swiftapps.swiftbackup.R.string.cancel, null);
        s35Var.m();
    }

    public static void G(il0 il0Var, lk3 lk3Var, List list) {
        il0Var.getClass();
        lk3Var.getClass();
        list.getClass();
        qo3.k = new ArrayList(list);
        Intent intent = new Intent(il0Var, (Class<?>) FoldersBatchActivity.class);
        intent.putExtra("EXTRA_FOLDER_BATCH_ACTION_ITEM", lk3Var);
        il0Var.startActivity(intent);
    }

    public static final void H(Object obj) {
        if (obj instanceof bn6) {
            throw ((bn6) obj).a;
        }
    }

    public static int I(long j2) {
        int i2 = (int) j2;
        if (i2 == j2) {
            return i2;
        }
        l0.e("value out of integer range");
        return 0;
    }

    public static void J(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i4 = i2;
        int i5 = iArr3[0];
        int i6 = iArr3[1];
        int i7 = iArr3[2];
        int i8 = iArr3[3];
        int i9 = i4 - 1;
        int i10 = iArr[i9] >> 31;
        int i11 = iArr2[i9] >> 31;
        int i12 = (i5 & i10) + (i6 & i11);
        int i13 = (i10 & i7) + (i11 & i8);
        int i14 = iArr4[0];
        long j2 = i5;
        long j3 = iArr[0];
        long j4 = i6;
        long j5 = iArr2[0];
        long j6 = (j4 * j5) + (j2 * j3);
        long j7 = i7;
        long j8 = i8;
        long j9 = (j8 * j5) + (j3 * j7);
        int i15 = i12 - (((((int) j6) * i3) + i12) & 1073741823);
        long j10 = i14;
        long j11 = i15;
        long j12 = (j10 * j11) + j6;
        long j13 = i13 - (((((int) j9) * i3) + i13) & 1073741823);
        char c2 = 30;
        long j14 = j12 >> 30;
        long j15 = ((j10 * j13) + j9) >> 30;
        int i16 = 1;
        while (i16 < i4) {
            int i17 = iArr4[i16];
            char c3 = c2;
            long j16 = j13;
            long j17 = iArr[i16];
            long j18 = j2 * j17;
            long j19 = iArr2[i16];
            long j20 = i17;
            long j21 = j11;
            long jD = dj7.d(j20, j21, (j4 * j19) + j18, j14);
            long jD2 = dj7.d(j20, j16, (j19 * j8) + (j7 * j17), j15);
            int i18 = i16 - 1;
            iArr[i18] = ((int) jD) & 1073741823;
            j14 = jD >> c3;
            iArr2[i18] = ((int) jD2) & 1073741823;
            j15 = jD2 >> c3;
            i16++;
            i4 = i2;
            c2 = c3;
            j11 = j21;
            j13 = j16;
        }
        iArr[i9] = (int) j14;
        iArr2[i9] = (int) j15;
    }

    public static void K(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        int i3 = iArr3[0];
        int i4 = 1;
        int i5 = iArr3[1];
        int i6 = iArr3[2];
        int i7 = iArr3[3];
        long j2 = i3;
        long j3 = iArr[0];
        long j4 = i5;
        long j5 = iArr2[0];
        long j6 = (j4 * j5) + (j2 * j3);
        long j7 = i6;
        long j8 = i7;
        long j9 = ((j5 * j8) + (j3 * j7)) >> 30;
        int i8 = 1;
        long j10 = j6 >> 30;
        while (i8 < i2) {
            long j11 = iArr[i8];
            int i9 = i4;
            long j12 = j7;
            long j13 = iArr2[i8];
            long jD = dj7.d(j4, j13, j2 * j11, j10);
            long j14 = j8;
            long jD2 = dj7.d(j14, j13, j12 * j11, j9);
            int i10 = i8 - 1;
            iArr[i10] = ((int) jD) & 1073741823;
            j10 = jD >> 30;
            iArr2[i10] = ((int) jD2) & 1073741823;
            j9 = jD2 >> 30;
            i8++;
            i4 = i9;
            j8 = j14;
            j7 = j12;
        }
        int i11 = i2 - i4;
        iArr[i11] = (int) j10;
        iArr2[i11] = (int) j9;
    }

    public static int L(pb9 pb9Var) {
        Iterator it = pb9Var.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public static String M(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e2) {
            String strK = dj7.k(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
            Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strK), (Throwable) e2);
            return eq3.l("<", strK, " threw ", e2.getClass().getName(), ">");
        }
    }

    public static String N(String str) {
        if (str.toLowerCase(Locale.US).startsWith("android-keystore://")) {
            return str.substring(19);
        }
        c6.f("key URI must start with android-keystore://");
        return null;
    }

    public static String O(String str, Object... objArr) {
        int iIndexOf;
        StringBuilder sb = new StringBuilder((objArr.length * 16) + str.length());
        int i2 = 0;
        int i3 = 0;
        while (i2 < objArr.length && (iIndexOf = str.indexOf("%s", i3)) != -1) {
            sb.append((CharSequence) str, i3, iIndexOf);
            sb.append(M(objArr[i2]));
            i3 = iIndexOf + 2;
            i2++;
        }
        sb.append((CharSequence) str, i3, str.length());
        if (i2 < objArr.length) {
            String str2 = " [";
            while (i2 < objArr.length) {
                sb.append(str2);
                sb.append(M(objArr[i2]));
                i2++;
                str2 = ", ";
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static void P(int i2) {
        if (i2 != 16 && i2 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i2 << 3)));
        }
    }

    public static int a(int i2, int[] iArr, int[] iArr2) {
        int i3 = i2 - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = iArr[i5] + iArr2[i5] + i4;
            iArr[i5] = 1073741823 & i6;
            i4 = i6 >> 30;
        }
        int i7 = iArr[i3] + iArr2[i3] + i4;
        iArr[i3] = i7;
        return i7 >> 30;
    }

    public static String b(v00 v00Var) {
        v00Var.getClass();
        StringBuilder sb = new StringBuilder("App visibility diagnostics\nPackageManager query: getInstalledPackages(0)\n");
        sb.append("App identity: ".concat(v00Var.b));
        sb.append('\n');
        sb.append("Total raw package count: " + v00Var.a);
        sb.append('\n');
        sb.append("Swift Backup package visible: ".concat(v00Var.d ? "Yes" : "No"));
        sb.append('\n');
        sb.append("android visible: ".concat(v00Var.e ? "Yes" : "No"));
        sb.append('\n');
        sb.append("com.android.cts.ctsshim visible: ".concat(v00Var.f ? "Yes" : "No"));
        sb.append("\n\nAn incomplete raw list may indicate external filtering, such as an OEM app-list permission or an HMA configuration. This report cannot identify the exact cause.\n\n");
        List<r00> list = v00Var.c;
        sb.append("Packages (" + list.size() + ")");
        sb.append('\n');
        for (r00 r00Var : list) {
            sb.append(r00Var.a + " — " + r00Var.b);
            sb.append('\n');
        }
        return sb.toString();
    }

    public static void c(int i2, String str) {
        if (i2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i2);
    }

    public static int d(Context context, String str) {
        int iNoteProxyOpNoThrow;
        int iMyPid = Process.myPid();
        int iMyUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, iMyPid, iMyUid) != -1) {
            String strPermissionToOp = AppOpsManager.permissionToOp(str);
            if (strPermissionToOp != null) {
                if (packageName == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(iMyUid);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        packageName = packagesForUid[0];
                    }
                }
                int iMyUid2 = Process.myUid();
                String packageName2 = context.getPackageName();
                if (iMyUid2 == iMyUid && Objects.equals(packageName2, packageName) && Build.VERSION.SDK_INT >= 29) {
                    AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                    iNoteProxyOpNoThrow = appOpsManager == null ? 1 : appOpsManager.checkOpNoThrow(strPermissionToOp, Binder.getCallingUid(), packageName);
                    if (iNoteProxyOpNoThrow == 0) {
                        iNoteProxyOpNoThrow = appOpsManager != null ? appOpsManager.checkOpNoThrow(strPermissionToOp, iMyUid, du.e(context)) : 1;
                    }
                } else {
                    iNoteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(strPermissionToOp, packageName);
                }
                if (iNoteProxyOpNoThrow != 0) {
                    return -2;
                }
            }
            return 0;
        }
        return -1;
    }

    public static final bn6 e(Throwable th) {
        th.getClass();
        return new bn6(th);
    }

    public static void f(int i2, int i3, byte[] bArr, short[] sArr, short[] sArr2) {
        int i4;
        if (i2 == 1) {
            short s = sArr2[0];
            if (s == 1) {
                sArr[0] = 0;
            } else if (s <= 256) {
                sArr[0] = (short) t(bArr[i3] & 255, s)[1];
            } else {
                sArr[0] = (short) t((bArr[i3] & 255) + (bArr[i3 + 1] << 8), s)[1];
            }
        }
        if (i2 > 1) {
            int i5 = (i2 + 1) / 2;
            short[] sArr3 = new short[i5];
            short[] sArr4 = new short[i5];
            int i6 = i2 / 2;
            short[] sArr5 = new short[i6];
            int[] iArr = new int[i6];
            int i7 = i3;
            int i8 = 0;
            while (true) {
                i4 = i2 - 1;
                if (i8 >= i4) {
                    break;
                }
                int i9 = sArr2[i8] * sArr2[i8 + 1];
                if (i9 > 4194048) {
                    int i10 = i8 / 2;
                    iArr[i10] = 65536;
                    sArr5[i10] = (short) (((bArr[i7 + 1] & 255) * 256) + (bArr[i7] & 255));
                    i7 += 2;
                    sArr4[i10] = (short) ((((i9 + 255) >>> 8) + 255) >>> 8);
                } else if (i9 >= 16384) {
                    int i11 = i8 / 2;
                    iArr[i11] = 256;
                    sArr5[i11] = (short) (bArr[i7] & 255);
                    i7++;
                    sArr4[i11] = (short) ((i9 + 255) >>> 8);
                } else {
                    int i12 = i8 / 2;
                    iArr[i12] = 1;
                    sArr5[i12] = 0;
                    sArr4[i12] = (short) i9;
                }
                i8 += 2;
            }
            if (i8 < i2) {
                sArr4[i8 / 2] = sArr2[i8];
            }
            f(i5, i7, bArr, sArr3, sArr4);
            int i13 = 0;
            int i14 = 0;
            while (i13 < i4) {
                int i15 = i13 / 2;
                int[] iArrT = t((iArr[i15] * (sArr3[i15] & 65535)) + (sArr5[i15] & 65535), sArr2[i13]);
                int i16 = i14 + 1;
                sArr[i14] = (short) iArrT[1];
                i14 += 2;
                sArr[i16] = (short) t(iArrT[0], sArr2[i13 + 1])[1];
                i13 += 2;
            }
            if (i13 < i2) {
                sArr[i14] = sArr3[i13 / 2];
            }
        }
    }

    public static void g(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0;
        long j2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            while (i3 < Math.min(32, i2)) {
                j2 |= ((long) iArr[i4]) << i3;
                i3 += 30;
                i4++;
            }
            iArr2[i5] = (int) j2;
            j2 >>>= 32;
            i3 -= 32;
            i2 -= 32;
            i5++;
        }
    }

    public static void h(int i2, int i3, byte[] bArr, short[] sArr, short[] sArr2) {
        int i4 = 0;
        if (i2 == 1) {
            short s = sArr[0];
            short s2 = sArr2[0];
            while (s2 > 1) {
                bArr[i3] = (byte) s;
                s = (short) (s >>> 8);
                s2 = (short) ((s2 + 255) >>> 8);
                i3++;
            }
        }
        if (i2 > 1) {
            int i5 = (i2 + 1) / 2;
            short[] sArr3 = new short[i5];
            short[] sArr4 = new short[i5];
            while (i4 < i2 - 1) {
                short s3 = sArr2[i4];
                int i6 = i4 + 1;
                int i7 = (sArr[i6] * s3) + sArr[i4];
                int i8 = sArr2[i6] * s3;
                while (i8 >= 16384) {
                    bArr[i3] = (byte) i7;
                    i7 >>>= 8;
                    i8 = (i8 + 255) >>> 8;
                    i3++;
                }
                int i9 = i4 / 2;
                sArr3[i9] = (short) i7;
                sArr4[i9] = (short) i8;
                i4 += 2;
            }
            if (i4 < i2) {
                int i10 = i4 / 2;
                sArr3[i10] = sArr[i4];
                sArr4[i10] = sArr2[i4];
            }
            h(i5, i3, bArr, sArr3, sArr4);
        }
    }

    public static void i(int i2, int[] iArr, int[] iArr2) {
        int i3 = 0;
        long j2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            if (i3 < Math.min(30, i2)) {
                j2 |= (((long) iArr[i4]) & 4294967295L) << i3;
                i3 += 32;
                i4++;
            }
            iArr2[i5] = ((int) j2) & 1073741823;
            j2 >>>= 30;
            i3 -= 30;
            i2 -= 30;
            i5++;
        }
    }

    public static int j(int i2, int i3, int[] iArr) {
        int i4 = i3 ^ iArr[0];
        for (int i5 = 1; i5 < i2; i5++) {
            i4 |= iArr[i5];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static int k(int i2) {
        int i3 = i2 & 65535;
        int i4 = (i3 | (i3 << 8)) & 16711935;
        int i5 = (i4 | (i4 << 4)) & 252645135;
        int i6 = (i5 | (i5 << 2)) & 858993459;
        return (i6 | (i6 << 1)) & 1431655765;
    }

    public static void l(int i2, long j2, long[] jArr) {
        long jE = w13.e(1, w13.e(2, w13.e(4, w13.e(8, w13.e(16, j2, 4294901760L), 280375465148160L), 67555025218437360L), 868082074056920076L), 2459565876494606882L);
        jArr[i2] = jE & (-6148914691236517206L);
        jArr[i2 + 1] = (jE << 1) & (-6148914691236517206L);
    }

    public static nq2 m() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("dropbox_credential", null);
            if (string == null) {
                return null;
            }
            fl4 fl4VarI = yc9.K(string).i();
            String strH = jd4.H(fl4VarI, ClaimsRequest.ACCESS_TOKEN);
            if (strH == null && (strH = jd4.H(fl4VarI, "accessToken")) == null) {
                strH = "";
            }
            Long lA = jd4.A(fl4VarI, "expires_at");
            if (lA == null && (lA = jd4.A(fl4VarI, "expiresAt")) == null) {
                lA = jd4.A(fl4VarI, "accessTokenExpiryTimeMillis");
            }
            String strH2 = jd4.H(fl4VarI, "refresh_token");
            if (strH2 == null) {
                strH2 = jd4.H(fl4VarI, "refreshToken");
            }
            String strH3 = jd4.H(fl4VarI, "app_key");
            if (strH3 == null) {
                strH3 = jd4.H(fl4VarI, "appKey");
            }
            String strH4 = jd4.H(fl4VarI, "app_secret");
            if (strH4 == null) {
                strH4 = jd4.H(fl4VarI, "appSecret");
            }
            return new nq2(strH, lA, strH2, strH3, strH4);
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static void n(int i2, byte[] bArr, byte[] bArr2) {
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i2 / 4) {
            int i6 = i4 + 1;
            byte b2 = bArr2[i4];
            bArr[i5] = (byte) ((b2 & 3) - 1);
            byte b3 = (byte) (b2 >>> 2);
            bArr[i5 + 1] = (byte) ((b3 & 3) - 1);
            byte b4 = (byte) (b3 >>> 2);
            int i7 = i5 + 3;
            bArr[i5 + 2] = (byte) ((b4 & 3) - 1);
            i5 += 4;
            bArr[i7] = (byte) ((((byte) (b4 >>> 2)) & 3) - 1);
            i3++;
            i4 = i6;
        }
        bArr[i5] = (byte) ((bArr2[i4] & 3) - 1);
    }

    public static void o(int i2, byte[] bArr, byte[] bArr2) {
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i2 / 4) {
            int i6 = i5 + 3;
            byte b2 = (byte) (((byte) (((byte) (bArr2[i5] + 1)) + (((byte) (bArr2[i5 + 1] + 1)) << 2))) + (((byte) (bArr2[i5 + 2] + 1)) << 4));
            i5 += 4;
            bArr[i4] = (byte) (b2 + (((byte) (bArr2[i6] + 1)) << 6));
            i3++;
            i4++;
        }
        bArr[i4] = (byte) (bArr2[i5] + 1);
    }

    public static byte[] p(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        int length = bArr.length + bArr2.length;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr4, bArr.length, bArr2.length);
        kr6 kr6Var = new kr6();
        kr6Var.update(bArr4, 0, length);
        kr6Var.doFinal(bArr3, 0);
        return bArr3;
    }

    public static int q(int i2, int i3) {
        int i4 = (i3 - 1) / 2;
        int[] iArrT = t(I((((long) (i2 + i4)) & 4294967295L) - 2147483648L), i3);
        int[] iArrT2 = t(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, i3);
        int I = I((((long) iArrT[0]) & 4294967295L) - (((long) iArrT2[0]) & 4294967295L));
        int I2 = I((((long) iArrT[1]) & 4294967295L) - (4294967295L & ((long) iArrT2[1])));
        int i5 = -(I2 >>> 31);
        return new int[]{I + i5, I2 + (i3 & i5)}[1] - i4;
    }

    public static int r(SecureRandom secureRandom) {
        byte[] bArr = new byte[4];
        secureRandom.nextBytes(bArr);
        return (bArr[0] & 255) + ((bArr[1] & 255) << 8) + ((bArr[2] & 255) << 16) + ((bArr[3] & 255) << 24);
    }

    public static final n67 s(Object obj) {
        if (obj != zm5.a) {
            return (n67) obj;
        }
        l0.e("Does not contain segment");
        return null;
    }

    public static int[] t(int i2, int i3) {
        long j2 = ((long) i2) & 4294967295L;
        long j3 = i3;
        long j4 = 2147483648L / j3;
        long j5 = (j2 * j4) >>> 31;
        long j6 = j2 - (j5 * j3);
        long j7 = (j4 * j6) >>> 31;
        long j8 = (j6 - (j7 * j3)) - j3;
        long j9 = j5 + j7 + 1;
        long j10 = -(j8 >>> 63);
        return new int[]{I(j9 + j10), I(j8 + (j3 & j10))};
    }

    public static int u(int i2) {
        int i3 = (2 - (i2 * i2)) * i2;
        int i4 = (2 - (i2 * i3)) * i3;
        int i5 = (2 - (i2 * i4)) * i4;
        return (2 - (i2 * i5)) * i5;
    }

    public static final boolean v(Object obj) {
        return obj == zm5.a;
    }

    public static boolean w(View view) {
        int i2;
        if (!(view.getLayoutParams() instanceof FrameLayout.LayoutParams) || (i2 = ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity) == -1) {
            i2 = 8388613;
        }
        return (Gravity.getAbsoluteGravity(i2, view.getLayoutDirection()) & 7) == 5;
    }

    public static void x(int i2, int i3, int[] iArr) {
        int i4 = iArr[i2];
        int i5 = iArr[i3];
        int i6 = i4 ^ i5;
        int i7 = i5 - i4;
        int i8 = i6 & (-((i7 ^ (((i7 ^ i5) ^ SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) & i6)) >>> 31));
        iArr[i2] = i4 ^ i8;
        iArr[i3] = i5 ^ i8;
    }

    public static void y(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int i2 = 1;
        int iNumberOfLeadingZeros = (length << 5) - Integer.numberOfLeadingZeros(iArr[length - 1]);
        int i3 = 30;
        int i4 = (iNumberOfLeadingZeros + 29) / 30;
        int[] iArr4 = new int[i4];
        int[] iArr5 = new int[i4];
        int[] iArr6 = new int[i4];
        int[] iArr7 = new int[i4];
        int[] iArr8 = new int[i4];
        int i5 = 0;
        iArr5[0] = 1;
        i(iNumberOfLeadingZeros, iArr2, iArr7);
        i(iNumberOfLeadingZeros, iArr, iArr8);
        System.arraycopy(iArr8, 0, iArr6, 0, i4);
        int iU = u(iArr8[0]);
        int i6 = (int) (((((long) iNumberOfLeadingZeros) * 150964) + 99243) >>> 16);
        int i7 = 0;
        int i8 = 0;
        while (i8 < i6) {
            int i9 = iArr6[i5];
            int i10 = iArr7[i5];
            int i11 = i7;
            int i12 = i9;
            int i13 = i6;
            int i14 = i2;
            int i15 = i4;
            int i16 = iU;
            int i17 = i5;
            int i18 = i17;
            int i19 = i18;
            int i20 = 1073741824;
            int i21 = 1073741824;
            while (i17 < i3) {
                int i22 = i3;
                int i23 = i11 >> 31;
                int i24 = i17;
                int i25 = -(i10 & 1);
                int i26 = i10 - ((i12 ^ i23) & i25);
                int i27 = i19 - ((i21 ^ i23) & i25);
                int i28 = i20 - ((i18 ^ i23) & i25);
                int i29 = i25 & (~i23);
                i11 = (i11 ^ i29) + 1;
                i12 += i26 & i29;
                i21 += i27 & i29;
                i18 += i29 & i28;
                i10 = i26 >> 1;
                i19 = i27 >> 1;
                i20 = i28 >> 1;
                i17 = i24 + 1;
                i3 = i22;
            }
            int[] iArr9 = {i21, i18, i19, i20};
            iU = i16;
            i4 = i15;
            J(i4, iU, iArr4, iArr5, iArr9, iArr8);
            K(i4, iArr6, iArr7, iArr9);
            i8 += 30;
            i6 = i13;
            i7 = i11;
            i2 = i14;
            i5 = 0;
        }
        int i30 = i2;
        int i31 = i4 - 1;
        int i32 = iArr6[i31] >> 31;
        int i33 = 0;
        for (int i34 = 0; i34 < i31; i34++) {
            int i35 = ((iArr6[i34] ^ i32) - i32) + i33;
            iArr6[i34] = i35 & 1073741823;
            i33 = i35 >> 30;
        }
        iArr6[i31] = ((iArr6[i31] ^ i32) - i32) + i33;
        int i36 = iArr4[i31] >> 31;
        int i37 = 0;
        for (int i38 = 0; i38 < i31; i38++) {
            int i39 = (((iArr4[i38] + (iArr8[i38] & i36)) ^ i32) - i32) + i37;
            iArr4[i38] = i39 & 1073741823;
            i37 = i39 >> 30;
        }
        int i40 = (((iArr4[i31] + (i36 & iArr8[i31])) ^ i32) - i32) + i37;
        iArr4[i31] = i40;
        int i41 = i40 >> 31;
        int i42 = 0;
        for (int i43 = 0; i43 < i31; i43++) {
            int i44 = iArr4[i43] + (iArr8[i43] & i41) + i42;
            iArr4[i43] = i44 & 1073741823;
            i42 = i44 >> 30;
        }
        iArr4[i31] = iArr4[i31] + (i41 & iArr8[i31]) + i42;
        g(iNumberOfLeadingZeros, iArr4, iArr3);
        j(i4, i30, iArr6);
        j(i4, 0, iArr7);
    }

    public static void z(int[] iArr, int[] iArr2, int[] iArr3) {
        int iNumberOfLeadingZeros;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int length = iArr.length;
        int i10 = length << 5;
        int i11 = length - 1;
        int iNumberOfLeadingZeros2 = i10 - Integer.numberOfLeadingZeros(iArr[i11]);
        int i12 = 30;
        int i13 = (iNumberOfLeadingZeros2 + 29) / 30;
        while (true) {
            if (i11 < 0) {
                iNumberOfLeadingZeros = 0;
                break;
            }
            int i14 = iArr2[i11];
            if (i14 != 0) {
                iNumberOfLeadingZeros = ((i11 * 32) + 32) - Integer.numberOfLeadingZeros(i14);
                break;
            }
            i11--;
        }
        int i15 = iNumberOfLeadingZeros2 - iNumberOfLeadingZeros;
        int[] iArr4 = new int[i13];
        int[] iArr5 = new int[i13];
        int[] iArr6 = new int[i13];
        int[] iArr7 = new int[i13];
        int[] iArr8 = new int[i13];
        iArr5[0] = 1;
        i(iNumberOfLeadingZeros2, iArr2, iArr7);
        i(iNumberOfLeadingZeros2, iArr, iArr8);
        System.arraycopy(iArr8, 0, iArr6, 0, i13);
        int i16 = -i15;
        int iU = u(iArr8[0]);
        int i17 = (int) (((((long) iNumberOfLeadingZeros2) * 188898) + ((long) (iNumberOfLeadingZeros2 < 46 ? 308405 : 181188))) >>> 16);
        int i18 = i13;
        int i19 = i15;
        while (true) {
            int i20 = iArr7[0];
            if (i20 == 0) {
                for (int i21 = 1; i21 < i18; i21++) {
                    i20 |= iArr7[i21];
                }
                if (i20 == 0) {
                    int i22 = iArr6[i18 - 1] >> 31;
                    int iB = iArr4[i13 - 1] >> 31;
                    if (iB < 0) {
                        iB = a(i13, iArr4, iArr8);
                    }
                    if (i22 < 0) {
                        iB = B(iArr4, i13);
                        B(iArr6, i18);
                    }
                    int i23 = iArr6[0] ^ 1;
                    if (i23 != 0) {
                        return;
                    }
                    for (int i24 = 1; i24 < i18; i24++) {
                        i23 |= iArr6[i24];
                    }
                    if (i23 == 0) {
                        if (iB < 0) {
                            a(i13, iArr4, iArr8);
                        }
                        g(iNumberOfLeadingZeros2, iArr4, iArr3);
                        return;
                    }
                    return;
                }
            }
            if (i19 >= i17) {
                return;
            }
            int i25 = i19 + 30;
            int i26 = iArr6[0];
            int i27 = iArr7[0];
            int i28 = 1;
            int i29 = i16;
            int i30 = i12;
            int i31 = 0;
            int i32 = 0;
            int i33 = 1;
            while (true) {
                int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i27 | ((-1) << i30));
                int i34 = i27 >> iNumberOfTrailingZeros;
                i2 = i17;
                i3 = i28 << iNumberOfTrailingZeros;
                i4 = i25;
                i5 = i32 << iNumberOfTrailingZeros;
                i6 = iNumberOfLeadingZeros2;
                i7 = i29 - iNumberOfTrailingZeros;
                int i35 = i30 - iNumberOfTrailingZeros;
                if (i35 <= 0) {
                    break;
                }
                if (i7 <= 0) {
                    i7 = 2 - i7;
                    int i36 = -i26;
                    int i37 = -i3;
                    int i38 = -i5;
                    i8 = (((i34 * i34) - 2) * i34 * i36) & ((-1) >>> (32 - (i7 > i35 ? i35 : i7))) & 63;
                    i5 = i33;
                    i9 = i38;
                    int i39 = i31;
                    i31 = i37;
                    i3 = i39;
                    i34 = i36;
                    i26 = i34;
                } else {
                    i8 = ((i26 + (((i26 + 1) & 4) << 1)) * (-i34)) & ((-1) >>> (32 - (i7 > i35 ? i35 : i7))) & 15;
                    i9 = i33;
                }
                i27 = (i26 * i8) + i34;
                i31 = (i3 * i8) + i31;
                i33 = (i8 * i5) + i9;
                i29 = i7;
                i30 = i35;
                iNumberOfLeadingZeros2 = i6;
                i32 = i5;
                i25 = i4;
                i28 = i3;
                i17 = i2;
            }
            int[] iArr9 = {i3, i5, i31, i33};
            J(i13, iU, iArr4, iArr5, iArr9, iArr8);
            K(i18, iArr6, iArr7, iArr9);
            int i40 = i18 - 1;
            int i41 = iArr6[i40];
            int i42 = iArr7[i40];
            int i43 = i18 - 2;
            if (((i43 >> 31) | ((i41 >> 31) ^ i41) | ((i42 >> 31) ^ i42)) == 0) {
                iArr6[i43] = (i41 << 30) | iArr6[i43];
                iArr7[i43] = (i42 << 30) | iArr7[i43];
                i18--;
            }
            i16 = i7;
            i19 = i4;
            iNumberOfLeadingZeros2 = i6;
            i17 = i2;
            i12 = 30;
        }
    }
}
