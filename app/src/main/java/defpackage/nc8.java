package defpackage;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.KeyEvent;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.nimbusds.jose.crypto.impl.XC20P;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UTFDataFormatException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nc8 {
    public static final p22 a = new p22();
    public static final du9 b = new du9("NO_OWNER", 2);
    public static final int[] c = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    public static final int[] d = {-32595792, -7943725, 4688975, 3500415, 6194736, 33281959, -12573105, -1002827, 163343, 5703241};

    public static SpannableString A(String str, int i, int i2, String str2) {
        str.getClass();
        str2.getClass();
        SpannableString spannableString = new SpannableString(str);
        int iH0 = nq7.h0(str, str2, 0, false, 6);
        if (iH0 != -1) {
            int length = str2.length() + iH0;
            spannableString.setSpan(new StyleSpan(1), iH0, length, 33);
            spannableString.setSpan(new RelativeSizeSpan(1.5f), iH0, length, 33);
            spannableString.setSpan(new ForegroundColorSpan(i), iH0, length, 33);
            if (iH0 > 0) {
                spannableString.setSpan(new ForegroundColorSpan(i2), 0, iH0, 33);
                spannableString.setSpan(new RelativeSizeSpan(1.0f), 0, iH0, 33);
            }
            int length2 = str.length();
            if (length < length2) {
                spannableString.setSpan(new ForegroundColorSpan(i2), length, length2, 33);
                spannableString.setSpan(new RelativeSizeSpan(1.0f), length, length2, 33);
                return spannableString;
            }
        }
        return spannableString;
    }

    public static jv1 D(jv1 jv1Var) {
        jv1 jv1VarIntercepted;
        jv1Var.getClass();
        kv1 kv1Var = jv1Var instanceof kv1 ? (kv1) jv1Var : null;
        return (kv1Var == null || (jv1VarIntercepted = kv1Var.intercepted()) == null) ? jv1Var : jv1VarIntercepted;
    }

    public static void E(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[10];
        int[] iArr4 = new int[8];
        n(0, 0, iArr, iArr3);
        M(iArr3);
        y(0, 0, iArr3, iArr4);
        y(5, 4, iArr3, iArr4);
        lg7.y(c, iArr4, iArr4);
        t(0, 0, iArr4, iArr2);
        t(4, 5, iArr4, iArr2);
        iArr2[9] = iArr2[9] & 16777215;
    }

    public static boolean G(int i, Object obj) {
        int arity;
        if (obj instanceof yt3) {
            if (obj instanceof au3) {
                arity = ((au3) obj).getArity();
            } else if (obj instanceof bt3) {
                arity = 0;
            } else if (obj instanceof mt3) {
                arity = 1;
            } else if (obj instanceof qt3) {
                arity = 2;
            } else if (obj instanceof rt3) {
                arity = 3;
            } else {
                arity = obj instanceof st3 ? 4 : -1;
            }
            if (arity == i) {
                return true;
            }
        }
        return false;
    }

    public static int H(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static List I(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        listSingletonList.getClass();
        return listSingletonList;
    }

    public static void J(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        long j = ((long) i3) * 121666;
        int i10 = ((int) j) & 33554431;
        long j2 = j >> 25;
        long j3 = ((long) i5) * 121666;
        int i11 = ((int) j3) & 33554431;
        long j4 = ((long) i8) * 121666;
        long j5 = ((long) iArr[9]) * 121666;
        int i12 = ((int) j5) & 33554431;
        long j6 = (((long) i) * 121666) + ((j5 >> 25) * 38);
        iArr2[0] = ((int) j6) & 67108863;
        long j7 = (((long) i6) * 121666) + (j3 >> 25);
        iArr2[5] = ((int) j7) & 67108863;
        long j8 = (((long) i2) * 121666) + (j6 >> 26);
        iArr2[1] = ((int) j8) & 67108863;
        long j9 = (((long) i4) * 121666) + j2;
        iArr2[3] = ((int) j9) & 67108863;
        long j10 = (((long) i7) * 121666) + (j7 >> 26);
        iArr2[6] = ((int) j10) & 67108863;
        long j11 = (((long) i9) * 121666) + (j4 >> 25);
        iArr2[8] = ((int) j11) & 67108863;
        iArr2[2] = ((int) (j8 >> 26)) + i10;
        iArr2[4] = i11 + ((int) (j9 >> 26));
        iArr2[7] = (((int) j4) & 33554431) + ((int) (j10 >> 26));
        iArr2[9] = i12 + ((int) (j11 >> 26));
    }

    public static void K(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = iArr[0];
        int i2 = iArr2[0];
        int i3 = iArr[1];
        int i4 = iArr2[1];
        int i5 = iArr[2];
        int i6 = iArr2[2];
        int i7 = iArr[3];
        int i8 = iArr2[3];
        int i9 = iArr[4];
        int i10 = iArr2[4];
        int i11 = iArr[5];
        int i12 = iArr2[5];
        int i13 = iArr[6];
        int i14 = iArr2[6];
        int i15 = iArr[7];
        int i16 = iArr2[7];
        int i17 = iArr[8];
        int i18 = iArr2[8];
        int i19 = iArr[9];
        int i20 = iArr2[9];
        long j = i;
        long j2 = i2;
        long j3 = j * j2;
        long j4 = i4;
        long j5 = j * j4;
        long j6 = i3;
        long j7 = (j6 * j2) + j5;
        long j8 = i6;
        long j9 = (j6 * j4) + (j * j8);
        long j10 = i5;
        long j11 = (j10 * j2) + j9;
        long j12 = ((j10 * j4) + (j6 * j8)) << 1;
        long j13 = i8;
        long j14 = j * j13;
        long j15 = i7;
        long jD = dj7.d(j15, j2, j14, j12);
        long j16 = (j10 * j8) << 1;
        long j17 = i10;
        long j18 = i9;
        long jD2 = dj7.d(j18, j2, (j15 * j4) + (j6 * j13) + (j * j17), j16);
        long j19 = ((j18 * j4) + ((j15 * j8) + ((j10 * j13) + (j6 * j17)))) << 1;
        long j20 = (j15 * j13) + (((j18 * j8) + (j10 * j17)) << 1);
        long j21 = (j18 * j13) + (j15 * j17);
        long j22 = (j18 * j17) << 1;
        long j23 = i11;
        long j24 = i12;
        long j25 = j23 * j24;
        long j26 = i14;
        long j27 = j23 * j26;
        long j28 = i13;
        long j29 = (j28 * j24) + j27;
        long j30 = i16;
        long j31 = (j28 * j26) + (j23 * j30);
        long j32 = i15;
        long j33 = i18;
        long j34 = j23 * j33;
        long j35 = i17;
        long jD3 = dj7.d(j35, j24, j34, ((j32 * j26) + (j28 * j30)) << 1);
        long j36 = i20;
        long j37 = (j35 * j26) + (j28 * j33) + (j23 * j36);
        long j38 = i19;
        long jD4 = dj7.d(j38, j24, j37, (j32 * j30) << 1);
        long j39 = j3 - (((j26 * j38) + ((j35 * j30) + ((j32 * j33) + (j28 * j36)))) * 76);
        long j40 = j7 - (((j35 * j33) + (((j30 * j38) + (j32 * j36)) << 1)) * 38);
        long j41 = j11 - (((j38 * j33) + (j35 * j36)) * 38);
        long j42 = jD - ((j36 * j38) * 76);
        long j43 = j19 - j25;
        long j44 = j20 - j29;
        long j45 = j21 - ((j32 * j24) + j31);
        long j46 = j22 - jD3;
        long j47 = i + i11;
        long j48 = i2 + i12;
        long j49 = j47 * j48;
        long j50 = i4 + i14;
        long j51 = j47 * j50;
        long j52 = i3 + i13;
        long j53 = (j52 * j48) + j51;
        long j54 = i6 + i16;
        long j55 = i5 + i15;
        long j56 = (j55 * j48) + (j52 * j50) + (j47 * j54);
        long j57 = ((j55 * j50) + (j52 * j54)) << 1;
        long j58 = i8 + i18;
        long j59 = i7 + i17;
        long jD5 = dj7.d(j59, j48, j47 * j58, j57);
        long j60 = i10 + i20;
        long j61 = i9 + i19;
        long jD6 = dj7.d(j61, j48, (j59 * j50) + (j52 * j58) + (j47 * j60), (j55 * j54) << 1);
        long j62 = ((j50 * j61) + ((j59 * j54) + ((j55 * j58) + (j52 * j60)))) << 1;
        long j63 = (j59 * j58) + (((j54 * j61) + (j55 * j60)) << 1);
        long j64 = (j61 * j58) + (j59 * j60);
        long j65 = (j60 * j61) << 1;
        long j66 = (jD5 - j42) + j46;
        int i21 = ((int) j66) & 67108863;
        long j67 = ((jD6 - jD2) - jD4) + (j66 >> 26);
        int i22 = ((int) j67) & 33554431;
        long j68 = ((((j67 >> 25) + j62) - j43) * 38) + j39;
        iArr3[0] = ((int) j68) & 67108863;
        long j69 = ((j63 - j44) * 38) + j40 + (j68 >> 26);
        iArr3[1] = ((int) j69) & 67108863;
        long j70 = ((j64 - j45) * 38) + j41 + (j69 >> 26);
        iArr3[2] = ((int) j70) & 33554431;
        long j71 = ((j65 - j46) * 38) + j42 + (j70 >> 25);
        iArr3[3] = ((int) j71) & 67108863;
        long jD7 = dj7.d(jD4, 38L, jD2, j71 >> 26);
        iArr3[4] = ((int) jD7) & 33554431;
        long j72 = (j49 - j39) + j43 + (jD7 >> 25);
        iArr3[5] = ((int) j72) & 67108863;
        long j73 = (j53 - j40) + j44 + (j72 >> 26);
        iArr3[6] = ((int) j73) & 67108863;
        long j74 = (j56 - j41) + j45 + (j73 >> 26);
        iArr3[7] = ((int) j74) & 33554431;
        long j75 = (j74 >> 25) + ((long) i21);
        iArr3[8] = ((int) j75) & 67108863;
        iArr3[9] = i22 + ((int) (j75 >> 26));
    }

    public static void L(int[] iArr, int[] iArr2) {
        for (int i = 0; i < 10; i++) {
            iArr2[i] = -iArr[i];
        }
    }

    public static void M(int[] iArr) {
        int i = (iArr[9] >>> 23) & 1;
        X(iArr, i);
        X(iArr, -i);
    }

    public static void T(int[] iArr) {
        iArr[0] = 1;
        for (int i = 1; i < 10; i++) {
            iArr[i] = 0;
        }
    }

    public static Task V(Task task, Task task2) {
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.getToken());
        l02 l02Var = new l02(taskCompletionSource, new AtomicBoolean(false), cancellationTokenSource);
        p22 p22Var = a;
        task.continueWithTask(p22Var, l02Var);
        task2.continueWithTask(p22Var, l02Var);
        return taskCompletionSource.getTask();
    }

    public static String W(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            y5.m("Input stream must not be null");
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        char[] cArr = new char[1024];
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = bufferedReader.read(cArr);
            if (i == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, i);
        }
    }

    public static void X(int[] iArr, int i) {
        int i2 = iArr[9];
        long j = ((long) (((i2 >> 24) + i) * 19)) + ((long) iArr[0]);
        iArr[0] = ((int) j) & 67108863;
        long j2 = (j >> 26) + ((long) iArr[1]);
        iArr[1] = ((int) j2) & 67108863;
        long j3 = (j2 >> 26) + ((long) iArr[2]);
        iArr[2] = ((int) j3) & 33554431;
        long j4 = (j3 >> 25) + ((long) iArr[3]);
        iArr[3] = ((int) j4) & 67108863;
        long j5 = (j4 >> 26) + ((long) iArr[4]);
        iArr[4] = ((int) j5) & 33554431;
        long j6 = (j5 >> 25) + ((long) iArr[5]);
        iArr[5] = ((int) j6) & 67108863;
        long j7 = (j6 >> 26) + ((long) iArr[6]);
        iArr[6] = ((int) j7) & 67108863;
        long j8 = (j7 >> 26) + ((long) iArr[7]);
        iArr[7] = 33554431 & ((int) j8);
        long j9 = (j8 >> 25) + ((long) iArr[8]);
        iArr[8] = 67108863 & ((int) j9);
        iArr[9] = (16777215 & i2) + ((int) (j9 >> 26));
    }

    public static mj5 a() {
        return new mj5();
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i = 0; i < 10; i++) {
            iArr3[i] = iArr[i] + iArr2[i];
        }
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i = 0; i < 10; i++) {
            int i2 = iArr[i];
            int i3 = iArr2[i];
            iArr3[i] = i2 + i3;
            iArr4[i] = i2 - i3;
        }
    }

    public static void d(Appendable appendable, char c2) {
        try {
            appendable.append(c2);
        } catch (IOException e) {
            y5.k(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:189:0x028c  */
    /* JADX WARN: Code duplicated, block: B:206:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:208:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:210:0x02de  */
    /* JADX WARN: Code duplicated, block: B:233:0x0370  */
    /* JADX WARN: Code duplicated, block: B:235:0x038c  */
    /* JADX WARN: Code duplicated, block: B:237:0x0391  */
    /* JADX WARN: Code duplicated, block: B:241:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:251:0x0422  */
    /* JADX WARN: Code duplicated, block: B:409:0x0698  */
    /* JADX WARN: Code duplicated, block: B:412:0x06a3  */
    /* JADX WARN: Code duplicated, block: B:413:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:416:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:417:0x06af  */
    /* JADX WARN: Code duplicated, block: B:419:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:421:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:424:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:426:0x06c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:436:0x06e3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:75:0x0114  */
    public static void e(pt1 pt1Var, bv4 bv4Var, ArrayList arrayList, int i) {
        int i2;
        i31[] i31VarArr;
        int i3;
        int i4;
        boolean z;
        boolean z2;
        boolean z3;
        int i5;
        ot1 ot1Var;
        bv4 bv4Var2;
        ot1 ot1Var2;
        ej7 ej7Var;
        ys1 ys1Var;
        ej7 ej7Var2;
        ot1 ot1Var3;
        int i6;
        ys1[] ys1VarArr;
        ys1 ys1Var2;
        ej7 ej7Var3;
        int i7;
        ys1[] ys1VarArr2;
        int i8;
        ys1 ys1Var3;
        ys1 ys1Var4;
        ej7 ej7Var4;
        ys1 ys1Var5;
        ej7 ej7Var5;
        int size;
        ArrayList arrayList2;
        int i9;
        int i10;
        float f;
        int i11;
        ej7 ej7Var6;
        ej7 ej7Var7;
        ej7 ej7Var8;
        ej7 ej7Var9;
        m50 m50VarL;
        float f2;
        ys1 ys1Var6;
        ot1 ot1Var4;
        int i12;
        int i13;
        ot1 ot1Var5;
        pt1 pt1Var2 = pt1Var;
        if (i == 0) {
            i2 = pt1Var2.z0;
            i31VarArr = pt1Var2.C0;
            i3 = 0;
        } else {
            i2 = pt1Var2.A0;
            i31VarArr = pt1Var2.B0;
            i3 = 2;
        }
        int i14 = i2;
        i31[] i31VarArr2 = i31VarArr;
        int i15 = 0;
        while (i15 < i14) {
            i31 i31Var = i31VarArr2[i15];
            boolean z4 = i31Var.q;
            ot1 ot1Var6 = i31Var.a;
            ys1[] ys1VarArr3 = ot1Var6.Q;
            int i16 = 3;
            int i17 = 8;
            float f3 = 0.0f;
            if (z4) {
                i4 = i15;
            } else {
                int i18 = i31Var.l;
                int i19 = i18 * 2;
                ot1 ot1Var7 = ot1Var6;
                ot1 ot1Var8 = ot1Var7;
                boolean z5 = false;
                while (!z5) {
                    i31Var.i++;
                    ot1[] ot1VarArr = ot1Var7.m0;
                    ys1[] ys1VarArr4 = ot1Var7.Q;
                    ot1VarArr[i18] = null;
                    ot1Var7.l0[i18] = null;
                    if (ot1Var7.g0 != i17) {
                        ot1Var7.j(i18);
                        ys1VarArr4[i19].e();
                        int i20 = i19 + 1;
                        ys1VarArr4[i20].e();
                        ys1VarArr4[i19].e();
                        ys1VarArr4[i20].e();
                        if (i31Var.b == null) {
                            i31Var.b = ot1Var7;
                        }
                        i31Var.d = ot1Var7;
                        int i21 = ot1Var7.p0[i18];
                        if (i21 == i16) {
                            int i22 = ot1Var7.t[i18];
                            if (i22 == 0 || i22 == i16 || i22 == 2) {
                                i31Var.j++;
                                float f4 = ot1Var7.k0[i18];
                                if (f4 > 0.0f) {
                                    i31Var.k += f4;
                                }
                                i13 = i18;
                                if (ot1Var7.g0 != 8 && i21 == 3 && (i22 == 0 || i22 == 3)) {
                                    if (f4 < 0.0f) {
                                        i31Var.n = true;
                                    } else {
                                        i31Var.o = true;
                                    }
                                    if (i31Var.h == null) {
                                        i31Var.h = new ArrayList();
                                    }
                                    i31Var.h.add(ot1Var7);
                                }
                                if (i31Var.f == null) {
                                    i31Var.f = ot1Var7;
                                }
                                ot1 ot1Var9 = i31Var.g;
                                if (ot1Var9 != null) {
                                    ot1Var9.l0[i13] = ot1Var7;
                                }
                                i31Var.g = ot1Var7;
                            } else {
                                i15 = i15;
                                i13 = i18;
                            }
                            if (i13 == 0) {
                                if (ot1Var7.r == 0 && ot1Var7.u == 0) {
                                    int i23 = ot1Var7.v;
                                }
                            } else if (ot1Var7.s == 0 && ot1Var7.x == 0) {
                                int i24 = ot1Var7.y;
                            }
                        } else {
                            i15 = i15;
                            i13 = i18;
                        }
                    } else {
                        i15 = i15;
                        i13 = i18;
                    }
                    ot1 ot1Var10 = ot1Var8;
                    if (ot1Var10 != ot1Var7) {
                        ot1Var10.m0[i13] = ot1Var7;
                    }
                    ys1 ys1Var7 = ys1VarArr4[i19 + 1].f;
                    if (ys1Var7 != null) {
                        ot1Var5 = ys1Var7.d;
                        ys1 ys1Var8 = ot1Var5.Q[i19].f;
                        if (ys1Var8 == null || ys1Var8.d != ot1Var7) {
                            ot1Var5 = null;
                        }
                    } else {
                        ot1Var5 = null;
                    }
                    if (ot1Var5 == null) {
                        ot1Var5 = ot1Var7;
                        z5 = true;
                    }
                    ot1Var8 = ot1Var7;
                    i18 = i13;
                    i16 = 3;
                    i17 = 8;
                    ot1Var7 = ot1Var5;
                    i15 = i15;
                }
                i4 = i15;
                int i25 = i18;
                ot1 ot1Var11 = i31Var.b;
                if (ot1Var11 != null) {
                    ot1Var11.Q[i19].e();
                }
                ot1 ot1Var12 = i31Var.d;
                if (ot1Var12 != null) {
                    ot1Var12.Q[i19 + 1].e();
                }
                i31Var.c = ot1Var7;
                if (i25 == 0 && i31Var.m) {
                    i31Var.e = ot1Var7;
                } else {
                    i31Var.e = ot1Var6;
                }
                i31Var.p = i31Var.o && i31Var.n;
            }
            i31Var.q = true;
            if (arrayList == 0 || arrayList.contains(ot1Var6)) {
                ot1 ot1Var13 = i31Var.c;
                ot1 ot1Var14 = i31Var.b;
                ot1 ot1Var15 = i31Var.d;
                ot1 ot1Var16 = i31Var.e;
                float f5 = i31Var.k;
                int[] iArr = pt1Var2.p0;
                ys1[] ys1VarArr5 = pt1Var2.Q;
                boolean z6 = iArr[i] == 2;
                if (i == 0) {
                    int i26 = ot1Var16.i0;
                    boolean z7 = i26 == 0;
                    boolean z8 = i26 == 1;
                    z = i26 == 2;
                    z3 = z8;
                    z2 = z7;
                } else {
                    int i27 = ot1Var16.j0;
                    boolean z9 = i27 == 0;
                    boolean z10 = i27 == 1;
                    z = i27 == 2;
                    z2 = z9;
                    z3 = z10;
                }
                boolean z11 = false;
                while (!z11) {
                    ys1[] ys1VarArr6 = ot1Var6.Q;
                    int[] iArr2 = ot1Var6.p0;
                    ys1 ys1Var9 = ys1VarArr6[i3];
                    int i28 = z ? 1 : 4;
                    int iE = ys1Var9.e();
                    boolean z12 = z6;
                    boolean z13 = z;
                    boolean z14 = iArr2[i] == 3 && ot1Var6.t[i] == 0;
                    ys1 ys1Var10 = ys1Var9.f;
                    if (ys1Var10 != null && ot1Var6 != ot1Var6) {
                        iE = ys1Var10.e() + iE;
                    }
                    int i29 = iE;
                    if (z13 && ot1Var6 != ot1Var6 && ot1Var6 != ot1Var14) {
                        i28 = 8;
                    }
                    ot1 ot1Var17 = ot1Var6;
                    ys1 ys1Var11 = ys1Var9.f;
                    if (ys1Var11 != null) {
                        boolean z15 = z14;
                        ej7 ej7Var10 = ys1Var9.i;
                        ej7 ej7Var11 = ys1Var11.i;
                        if (ot1Var6 == ot1Var14) {
                            bv4Var.f(ej7Var10, ej7Var11, i29, 6);
                        } else {
                            bv4Var.f(ej7Var10, ej7Var11, i29, 8);
                        }
                        if (z15 && !z13) {
                            i28 = 5;
                        }
                        bv4Var.e(ys1Var9.i, ys1Var9.f.i, i29, (ot1Var6 == ot1Var14 && z13 && ot1Var6.S[i]) ? 5 : i28);
                    }
                    if (z12) {
                        if (ot1Var6.g0 == 8 || iArr2[i] != 3) {
                            i12 = 0;
                        } else {
                            i12 = 0;
                            bv4Var.f(ys1VarArr6[i3 + 1].i, ys1VarArr6[i3].i, 0, 5);
                        }
                        bv4Var.f(ys1VarArr6[i3].i, ys1VarArr5[i3].i, i12, 8);
                    }
                    ys1 ys1Var12 = ys1VarArr6[i3 + 1].f;
                    if (ys1Var12 != null) {
                        ot1Var4 = ys1Var12.d;
                        ys1 ys1Var13 = ot1Var4.Q[i3].f;
                        if (ys1Var13 == null || ys1Var13.d != ot1Var6) {
                            ot1Var4 = null;
                        }
                    } else {
                        ot1Var4 = null;
                    }
                    if (ot1Var4 != null) {
                        ot1Var6 = ot1Var4;
                    } else {
                        z11 = true;
                    }
                    ot1Var6 = ot1Var17;
                    z6 = z12;
                    z = z13;
                }
                boolean z16 = z6;
                boolean z17 = z;
                if (ot1Var15 != null) {
                    int i30 = i3 + 1;
                    if (ot1Var13.Q[i30].f != null) {
                        ys1 ys1Var14 = ot1Var15.Q[i30];
                        if (ot1Var15.p0[i] == 3 && ot1Var15.t[i] == 0 && !z17) {
                            ys1 ys1Var15 = ys1Var14.f;
                            if (ys1Var15.d == pt1Var2) {
                                bv4Var.e(ys1Var14.i, ys1Var15.i, -ys1Var14.e(), 5);
                            } else if (z17) {
                                ys1Var6 = ys1Var14.f;
                                if (ys1Var6.d == pt1Var2) {
                                    bv4Var.e(ys1Var14.i, ys1Var6.i, -ys1Var14.e(), 4);
                                }
                            }
                        } else if (z17) {
                            ys1Var6 = ys1Var14.f;
                            if (ys1Var6.d == pt1Var2) {
                                bv4Var.e(ys1Var14.i, ys1Var6.i, -ys1Var14.e(), 4);
                            }
                        }
                        bv4Var.g(ys1Var14.i, ot1Var13.Q[i30].f.i, -ys1Var14.e(), 6);
                    }
                }
                if (z16) {
                    int i31 = i3 + 1;
                    ej7 ej7Var12 = ys1VarArr5[i31].i;
                    ys1 ys1Var16 = ot1Var13.Q[i31];
                    bv4Var.f(ej7Var12, ys1Var16.i, ys1Var16.e(), 8);
                }
                ArrayList arrayList3 = i31Var.h;
                if (arrayList3 != null && (size = arrayList3.size()) > 1) {
                    if (i31Var.n && !i31Var.p) {
                        f5 = i31Var.j;
                    }
                    ot1 ot1Var18 = null;
                    float f6 = 0.0f;
                    int i32 = 0;
                    while (i32 < size) {
                        ot1 ot1Var19 = (ot1) arrayList3.get(i32);
                        float[] fArr = ot1Var19.k0;
                        ys1[] ys1VarArr7 = ot1Var19.Q;
                        float f7 = fArr[i];
                        if (f7 >= f3) {
                            arrayList2 = arrayList3;
                            i9 = size;
                            if (f7 == f3) {
                                bv4Var.e(ys1VarArr7[i3 + 1].i, ys1VarArr7[i3].i, 0, 8);
                                i10 = i14;
                                f = f3;
                                f6 = f6;
                                i11 = i32;
                            } else {
                                float f8 = f6;
                                if (ot1Var18 != null) {
                                    ys1[] ys1VarArr8 = ot1Var18.Q;
                                    ej7Var6 = ys1VarArr8[i3].i;
                                    int i33 = i3 + 1;
                                    ej7Var7 = ys1VarArr8[i33].i;
                                    ej7Var8 = ys1VarArr7[i3].i;
                                    ej7Var9 = ys1VarArr7[i33].i;
                                    m50VarL = bv4Var.l();
                                    f2 = f3;
                                    m50VarL.b = f2;
                                    f = f2;
                                    if (f5 != f2 || f8 == f7) {
                                        i11 = i32;
                                        i10 = i14;
                                        m50VarL.d.g(ej7Var6, 1.0f);
                                        m50VarL.d.g(ej7Var7, -1.0f);
                                        m50VarL.d.g(ej7Var9, 1.0f);
                                        m50VarL.d.g(ej7Var8, -1.0f);
                                    } else {
                                        d50 d50Var = m50VarL.d;
                                        if (f8 == f) {
                                            i11 = i32;
                                            d50Var.g(ej7Var6, 1.0f);
                                            m50VarL.d.g(ej7Var7, -1.0f);
                                            i10 = i14;
                                        } else {
                                            i11 = i32;
                                            i10 = i14;
                                            if (f7 == f3) {
                                                d50Var.g(ej7Var8, 1.0f);
                                                m50VarL.d.g(ej7Var9, -1.0f);
                                            } else {
                                                float f9 = (f8 / f5) / (f7 / f5);
                                                d50Var.g(ej7Var6, 1.0f);
                                                m50VarL.d.g(ej7Var7, -1.0f);
                                                m50VarL.d.g(ej7Var9, f9);
                                                m50VarL.d.g(ej7Var8, -f9);
                                            }
                                        }
                                    }
                                    bv4Var.c(m50VarL);
                                } else {
                                    i10 = i14;
                                    f = f3;
                                    i11 = i32;
                                }
                                f6 = f7;
                                ot1Var18 = ot1Var19;
                            }
                        } else {
                            if (i31Var.p) {
                                arrayList2 = arrayList3;
                                i9 = size;
                                bv4Var.e(ys1VarArr7[i3 + 1].i, ys1VarArr7[i3].i, 0, 4);
                            } else {
                                f7 = 1.0f;
                                arrayList2 = arrayList3;
                                i9 = size;
                                if (f7 == f3) {
                                    bv4Var.e(ys1VarArr7[i3 + 1].i, ys1VarArr7[i3].i, 0, 8);
                                } else {
                                    float f10 = f6;
                                    if (ot1Var18 != null) {
                                        ys1[] ys1VarArr9 = ot1Var18.Q;
                                        ej7Var6 = ys1VarArr9[i3].i;
                                        int i34 = i3 + 1;
                                        ej7Var7 = ys1VarArr9[i34].i;
                                        ej7Var8 = ys1VarArr7[i3].i;
                                        ej7Var9 = ys1VarArr7[i34].i;
                                        m50VarL = bv4Var.l();
                                        f2 = f3;
                                        m50VarL.b = f2;
                                        f = f2;
                                        if (f5 != f2) {
                                            i11 = i32;
                                            i10 = i14;
                                            m50VarL.d.g(ej7Var6, 1.0f);
                                            m50VarL.d.g(ej7Var7, -1.0f);
                                            m50VarL.d.g(ej7Var9, 1.0f);
                                            m50VarL.d.g(ej7Var8, -1.0f);
                                        } else {
                                            i11 = i32;
                                            i10 = i14;
                                            m50VarL.d.g(ej7Var6, 1.0f);
                                            m50VarL.d.g(ej7Var7, -1.0f);
                                            m50VarL.d.g(ej7Var9, 1.0f);
                                            m50VarL.d.g(ej7Var8, -1.0f);
                                        }
                                        bv4Var.c(m50VarL);
                                    } else {
                                        i10 = i14;
                                        f = f3;
                                        i11 = i32;
                                    }
                                    f6 = f7;
                                    ot1Var18 = ot1Var19;
                                }
                            }
                            i10 = i14;
                            f = f3;
                            f6 = f6;
                            i11 = i32;
                        }
                        i32 = i11 + 1;
                        i14 = i10;
                        arrayList3 = arrayList2;
                        size = i9;
                        f3 = f;
                    }
                }
                i5 = i14;
                if (ot1Var14 == null || !(ot1Var14 == ot1Var15 || z17)) {
                    ot1Var = ot1Var15;
                    if (z2 && ot1Var14 != null) {
                        int i35 = i31Var.j;
                        boolean z18 = i35 > 0 && i31Var.i == i35;
                        ot1 ot1Var20 = ot1Var14;
                        ot1 ot1Var21 = ot1Var20;
                        while (true) {
                            ys1[] ys1VarArr10 = ot1Var21.Q;
                            if (ot1Var20 == null) {
                                break;
                            }
                            ys1[] ys1VarArr11 = ot1Var20.Q;
                            ot1 ot1Var22 = ot1Var20.m0[i];
                            while (true) {
                                if (ot1Var22 == null) {
                                    i6 = 8;
                                    break;
                                }
                                i6 = 8;
                                if (ot1Var22.g0 != 8) {
                                    break;
                                } else {
                                    ot1Var22 = ot1Var22.m0[i];
                                }
                            }
                            if (ot1Var22 != null || ot1Var20 == ot1Var) {
                                ys1 ys1Var17 = ys1VarArr11[i3];
                                ej7 ej7Var13 = ys1Var17.i;
                                ys1 ys1Var18 = ys1Var17.f;
                                ej7 ej7Var14 = ys1Var18 != null ? ys1Var18.i : null;
                                if (ot1Var21 != ot1Var20) {
                                    ej7Var14 = ys1VarArr10[i3 + 1].i;
                                } else if (ot1Var20 == ot1Var14) {
                                    ys1 ys1Var19 = ys1VarArr3[i3].f;
                                    ej7Var14 = ys1Var19 != null ? ys1Var19.i : null;
                                }
                                int iE2 = ys1Var17.e();
                                int i36 = i3 + 1;
                                int iE3 = ys1VarArr11[i36].e();
                                if (ot1Var22 != null) {
                                    ys1Var2 = ot1Var22.Q[i3];
                                    ys1VarArr = ys1VarArr10;
                                    ej7Var3 = ys1Var2.i;
                                } else {
                                    ys1VarArr = ys1VarArr10;
                                    ys1Var2 = ot1Var13.Q[i36].f;
                                    ej7Var3 = ys1Var2 != null ? ys1Var2.i : null;
                                }
                                ej7 ej7Var15 = ys1VarArr11[i36].i;
                                if (ys1Var2 != null) {
                                    iE3 += ys1Var2.e();
                                }
                                int iE4 = ys1VarArr[i36].e() + iE2;
                                if (ej7Var13 == null || ej7Var14 == null || ej7Var3 == null || ej7Var15 == null) {
                                    i7 = 8;
                                } else {
                                    if (ot1Var20 == ot1Var14) {
                                        iE4 = ot1Var14.Q[i3].e();
                                    }
                                    int i37 = iE4;
                                    if (ot1Var20 == ot1Var) {
                                        iE3 = ot1Var.Q[i36].e();
                                    }
                                    i7 = 8;
                                    bv4Var.b(ej7Var13, ej7Var14, i37, 0.5f, ej7Var3, ej7Var15, iE3, z18 ? 8 : 5);
                                }
                            } else {
                                i7 = i6;
                            }
                            if (ot1Var20.g0 != i7) {
                                ot1Var21 = ot1Var20;
                            }
                            ot1Var20 = ot1Var22;
                            ot1Var21 = ot1Var21;
                        }
                    } else {
                        int i38 = 8;
                        if (z3 && ot1Var14 != null) {
                            int i39 = i31Var.j;
                            boolean z19 = i39 > 0 && i31Var.i == i39;
                            ot1 ot1Var23 = ot1Var14;
                            ot1 ot1Var24 = ot1Var23;
                            while (true) {
                                ys1[] ys1VarArr12 = ot1Var23.Q;
                                if (ot1Var24 == null) {
                                    break;
                                }
                                ys1[] ys1VarArr13 = ot1Var24.Q;
                                ot1 ot1Var25 = ot1Var24.m0[i];
                                while (ot1Var25 != null && ot1Var25.g0 == i38) {
                                    ot1Var25 = ot1Var25.m0[i];
                                }
                                if (ot1Var24 == ot1Var14 || ot1Var24 == ot1Var || ot1Var25 == null) {
                                    ot1Var2 = ot1Var23;
                                } else {
                                    if (ot1Var25 == ot1Var) {
                                        ot1Var25 = null;
                                    }
                                    ys1 ys1Var20 = ys1VarArr13[i3];
                                    ej7 ej7Var16 = ys1Var20.i;
                                    int i40 = i3 + 1;
                                    ej7 ej7Var17 = ys1VarArr12[i40].i;
                                    int iE5 = ys1Var20.e();
                                    int iE6 = ys1VarArr13[i40].e();
                                    if (ot1Var25 != null) {
                                        ys1Var = ot1Var25.Q[i3];
                                        ej7Var = ys1Var.i;
                                        ot1Var2 = ot1Var23;
                                        ys1 ys1Var21 = ys1Var.f;
                                        ej7Var2 = ys1Var21 != null ? ys1Var21.i : null;
                                    } else {
                                        ot1Var2 = ot1Var23;
                                        ys1 ys1Var22 = ot1Var.Q[i3];
                                        ej7Var = ys1Var22 != null ? ys1Var22.i : null;
                                        ej7 ej7Var18 = ys1VarArr13[i40].i;
                                        ys1Var = ys1Var22;
                                        ej7Var2 = ej7Var18;
                                    }
                                    if (ys1Var != null) {
                                        iE6 += ys1Var.e();
                                    }
                                    int iE7 = ys1VarArr12[i40].e() + iE5;
                                    ot1 ot1Var26 = ot1Var25;
                                    int i41 = iE6;
                                    int i42 = z19 ? 8 : 4;
                                    if (ej7Var16 == null || ej7Var17 == null || ej7Var == null || ej7Var2 == null) {
                                        ot1Var3 = ot1Var26;
                                    } else {
                                        ej7 ej7Var19 = ej7Var;
                                        ot1Var3 = ot1Var26;
                                        bv4Var.b(ej7Var16, ej7Var17, iE7, 0.5f, ej7Var19, ej7Var2, i41, i42);
                                    }
                                    ot1Var25 = ot1Var3;
                                }
                                if (ot1Var24.g0 != 8) {
                                    ot1Var2 = ot1Var24;
                                }
                                ot1Var24 = ot1Var25;
                                i38 = 8;
                                ot1Var23 = ot1Var2;
                            }
                            bv4Var2 = bv4Var;
                            ys1 ys1Var23 = ot1Var14.Q[i3];
                            ys1 ys1Var24 = ys1VarArr3[i3].f;
                            int i43 = i3 + 1;
                            ys1 ys1Var25 = ot1Var.Q[i43];
                            ys1 ys1Var26 = ot1Var13.Q[i43].f;
                            if (ys1Var24 != null) {
                                if (ot1Var14 != ot1Var) {
                                    bv4Var2.e(ys1Var23.i, ys1Var24.i, ys1Var23.e(), 5);
                                } else if (ys1Var26 != null) {
                                    bv4Var2.b(ys1Var23.i, ys1Var24.i, ys1Var23.e(), 0.5f, ys1Var25.i, ys1Var26.i, ys1Var25.e(), 5);
                                }
                            }
                            if (ys1Var26 != null && ot1Var14 != ot1Var) {
                                bv4Var2.e(ys1Var25.i, ys1Var26.i, -ys1Var25.e(), 5);
                            }
                        }
                        if ((z2 || z3) && ot1Var14 != null && ot1Var14 != ot1Var) {
                            ys1VarArr2 = ot1Var14.Q;
                            ys1 ys1Var27 = ys1VarArr2[i3];
                            if (ot1Var == null) {
                                ot1Var = ot1Var14;
                            }
                            ys1[] ys1VarArr14 = ot1Var.Q;
                            i8 = i3 + 1;
                            ys1Var3 = ys1VarArr14[i8];
                            ys1Var4 = ys1Var27.f;
                            if (ys1Var4 != null) {
                                ej7Var4 = ys1Var4.i;
                            } else {
                                ej7Var4 = null;
                            }
                            ys1Var5 = ys1Var3.f;
                            if (ys1Var5 != null) {
                                ej7Var5 = ys1Var5.i;
                            } else {
                                ej7Var5 = null;
                            }
                            if (ot1Var13 != ot1Var) {
                                ys1 ys1Var28 = ot1Var13.Q[i8].f;
                                ej7Var5 = ys1Var28 != null ? ys1Var28.i : null;
                            }
                            if (ot1Var14 == ot1Var) {
                                ys1Var3 = ys1VarArr2[i8];
                            }
                            if (ej7Var4 == null && ej7Var5 != null) {
                                bv4Var2.b(ys1Var27.i, ej7Var4, ys1Var27.e(), 0.5f, ej7Var5, ys1Var3.i, ys1VarArr14[i8].e(), 5);
                            }
                        }
                    }
                } else {
                    ys1 ys1Var29 = ys1VarArr3[i3];
                    int i44 = i3 + 1;
                    ys1 ys1Var30 = ot1Var13.Q[i44];
                    ys1 ys1Var31 = ys1Var29.f;
                    ej7 ej7Var20 = ys1Var31 != null ? ys1Var31.i : null;
                    ys1 ys1Var32 = ys1Var30.f;
                    ej7 ej7Var21 = ys1Var32 != null ? ys1Var32.i : null;
                    ys1 ys1Var33 = ot1Var14.Q[i3];
                    if (ot1Var15 != null) {
                        ys1Var30 = ot1Var15.Q[i44];
                    }
                    if (ej7Var20 == null || ej7Var21 == null) {
                        ot1Var = ot1Var15;
                    } else {
                        float f11 = i == 0 ? ot1Var16.d0 : ot1Var16.e0;
                        int iE8 = ys1Var33.e();
                        int iE9 = ys1Var30.e();
                        ej7 ej7Var22 = ys1Var33.i;
                        ej7 ej7Var23 = ys1Var30.i;
                        ej7 ej7Var24 = ej7Var20;
                        ot1Var = ot1Var15;
                        bv4Var.b(ej7Var22, ej7Var24, iE8, f11, ej7Var21, ej7Var23, iE9, 7);
                    }
                }
                bv4Var2 = bv4Var;
                if (z2) {
                    ys1VarArr2 = ot1Var14.Q;
                    ys1 ys1Var210 = ys1VarArr2[i3];
                    if (ot1Var == null) {
                        ot1Var = ot1Var14;
                    }
                    ys1[] ys1VarArr15 = ot1Var.Q;
                    i8 = i3 + 1;
                    ys1Var3 = ys1VarArr15[i8];
                    ys1Var4 = ys1Var210.f;
                    if (ys1Var4 != null) {
                        ej7Var4 = ys1Var4.i;
                    } else {
                        ej7Var4 = null;
                    }
                    ys1Var5 = ys1Var3.f;
                    if (ys1Var5 != null) {
                        ej7Var5 = ys1Var5.i;
                    } else {
                        ej7Var5 = null;
                    }
                    if (ot1Var13 != ot1Var) {
                        ys1 ys1Var211 = ot1Var13.Q[i8].f;
                        ej7Var5 = ys1Var211 != null ? ys1Var211.i : null;
                    }
                    if (ot1Var14 == ot1Var) {
                        ys1Var3 = ys1VarArr2[i8];
                    }
                    if (ej7Var4 == null) {
                    }
                } else {
                    ys1VarArr2 = ot1Var14.Q;
                    ys1 ys1Var212 = ys1VarArr2[i3];
                    if (ot1Var == null) {
                        ot1Var = ot1Var14;
                    }
                    ys1[] ys1VarArr16 = ot1Var.Q;
                    i8 = i3 + 1;
                    ys1Var3 = ys1VarArr16[i8];
                    ys1Var4 = ys1Var212.f;
                    if (ys1Var4 != null) {
                        ej7Var4 = ys1Var4.i;
                    } else {
                        ej7Var4 = null;
                    }
                    ys1Var5 = ys1Var3.f;
                    if (ys1Var5 != null) {
                        ej7Var5 = ys1Var5.i;
                    } else {
                        ej7Var5 = null;
                    }
                    if (ot1Var13 != ot1Var) {
                        ys1 ys1Var213 = ot1Var13.Q[i8].f;
                        ej7Var5 = ys1Var213 != null ? ys1Var213.i : null;
                    }
                    if (ot1Var14 == ot1Var) {
                        ys1Var3 = ys1VarArr2[i8];
                    }
                    if (ej7Var4 == null) {
                    }
                }
            } else {
                i5 = i14;
            }
            i15 = i4 + 1;
            pt1Var2 = pt1Var;
            i14 = i5;
        }
    }

    public static Map f(HashMap map) {
        if (!(map instanceof bo4)) {
            return map;
        }
        o0(map, "kotlin.collections.MutableMap");
        throw null;
    }

    public static void g(int i, Object obj) {
        if (obj == null || G(i, obj)) {
            return;
        }
        o0(obj, "kotlin.jvm.functions.Function" + i);
        throw null;
    }

    public static ww4 h(ww4 ww4Var) {
        ww4Var.k();
        ww4Var.c = true;
        return ww4Var.b > 0 ? ww4Var : ww4.d;
    }

    public static void h0(int i, int[] iArr, int[] iArr2) {
        i0(iArr, iArr2);
        while (true) {
            i--;
            if (i <= 0) {
                return;
            } else {
                i0(iArr2, iArr2);
            }
        }
    }

    public static void i0(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        long j = i;
        long j2 = j * j;
        long j3 = i2 * 2;
        long j4 = j * j3;
        long j5 = i3 * 2;
        long j6 = j * j5;
        long j7 = i2;
        long j8 = (j7 * j7) + j6;
        long j9 = i4 * 2;
        long j10 = (j * j9) + (j3 * j5);
        long j11 = i5 * 2;
        long j12 = (j7 * j9) + (j * j11) + (((long) i3) * j5);
        long j13 = (j5 * j9) + (j3 * j11);
        long j14 = j5 * j11;
        long j15 = i4;
        long j16 = (j15 * j15) + j14;
        long j17 = j15 * j11;
        long j18 = i6;
        long j19 = j18 * j18;
        long j20 = i7 * 2;
        long j21 = j18 * j20;
        long j22 = i8 * 2;
        long j23 = j18 * j22;
        long j24 = i7;
        long j25 = (j24 * j24) + j23;
        long j26 = j20 * j22;
        long j27 = i9 * 2;
        long j28 = i10 * 2;
        long j29 = (j24 * j27) + (j18 * j28) + (((long) i8) * j22);
        long j30 = (j22 * j27) + (j20 * j28);
        long j31 = j22 * j28;
        long j32 = i9;
        long j33 = j2 - (j30 * 38);
        long j34 = j4 - (((j32 * j32) + j31) * 38);
        long j35 = j8 - ((j32 * j28) * 38);
        long j36 = j10 - ((((long) i10) * j28) * 38);
        long j37 = j13 - j19;
        long j38 = j16 - j21;
        long j39 = j17 - j25;
        long j40 = (((long) i5) * j11) - ((j18 * j27) + j26);
        int i11 = i2 + i7;
        int i12 = i3 + i8;
        int i13 = i4 + i9;
        int i14 = i5 + i10;
        long j41 = i + i6;
        long j42 = i11 * 2;
        long j43 = j41 * j42;
        long j44 = i12 * 2;
        long j45 = i11;
        long j46 = (j45 * j45) + (j41 * j44);
        long j47 = i13 * 2;
        long j48 = i14 * 2;
        long j49 = i13;
        long j50 = ((long) i14) * j48;
        long j51 = (((j41 * j47) + (j42 * j44)) - j36) + j40;
        int i15 = ((int) j51) & 67108863;
        long j52 = ((((j45 * j47) + ((j41 * j48) + (((long) i12) * j44))) - j12) - j29) + (j51 >> 26);
        int i16 = ((int) j52) & 33554431;
        long j53 = ((((j52 >> 25) + ((j47 * j44) + (j42 * j48))) - j37) * 38) + j33;
        iArr2[0] = ((int) j53) & 67108863;
        long j54 = ((((j49 * j49) + (j44 * j48)) - j38) * 38) + j34 + (j53 >> 26);
        iArr2[1] = ((int) j54) & 67108863;
        long j55 = (((j49 * j48) - j39) * 38) + j35 + (j54 >> 26);
        iArr2[2] = ((int) j55) & 33554431;
        long j56 = ((j50 - j40) * 38) + j36 + (j55 >> 25);
        iArr2[3] = ((int) j56) & 67108863;
        long jD = dj7.d(j29, 38L, j12, j56 >> 26);
        iArr2[4] = ((int) jD) & 33554431;
        long j57 = ((j41 * j41) - j33) + j37 + (jD >> 25);
        iArr2[5] = ((int) j57) & 67108863;
        long j58 = (j43 - j34) + j38 + (j57 >> 26);
        iArr2[6] = ((int) j58) & 67108863;
        long j59 = (j46 - j35) + j39 + (j58 >> 26);
        iArr2[7] = ((int) j59) & 33554431;
        long j60 = (j59 >> 25) + ((long) i15);
        iArr2[8] = ((int) j60) & 67108863;
        iArr2[9] = i16 + ((int) (j60 >> 26));
    }

    public static void j(int i, int i2, int[] iArr, int[] iArr2) {
        for (int i3 = 0; i3 < 10; i3++) {
            int i4 = iArr2[i3];
            iArr2[i3] = i4 ^ ((iArr[i2 + i3] ^ i4) & i);
        }
    }

    public static void k(int[] iArr, int i) {
        int i2 = 0 - i;
        for (int i3 = 0; i3 < 10; i3++) {
            iArr[i3] = (iArr[i3] ^ i2) - i2;
        }
    }

    public static void k0(il0 il0Var, to3 to3Var) {
        il0Var.getClass();
        to3Var.getClass();
        to3 to3Var2 = to3.CLOUD;
        if (to3Var == to3Var2) {
            tb1 tb1Var = tb1.a;
            to3Var = qb1.m() ? to3Var2 : null;
        }
        Intent intent = new Intent(il0Var, (Class<?>) FoldersDashActivity.class);
        intent.putExtra("KEY_SECTION", to3Var);
        il0Var.startActivity(intent);
    }

    public static void l0(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i = 0; i < 10; i++) {
            iArr3[i] = iArr[i] - iArr2[i];
        }
    }

    public static final Object m(eo6 eo6Var, mt3 mt3Var, jv1 jv1Var) {
        if (eo6Var.h() && eo6Var.j() && eo6Var.i()) {
            return mt3Var.invoke(jv1Var);
        }
        if (jv1Var.getContext().get(io6.a) == null) {
            return mt3Var.invoke(jv1Var);
        }
        o41 o41Var = new o41(mt3Var, (jv1) null, 3);
        c98 c98Var = (c98) jv1Var.getContext().get(c98.b);
        rx1 rx1Var = c98Var != null ? c98Var.a : null;
        if (rx1Var != null) {
            return l73.G(rx1Var, o41Var, jv1Var);
        }
        o21 o21Var = new o21(1, D(jv1Var));
        o21Var.u();
        try {
            d98 d98Var = eo6Var.c;
            if (d98Var != null) {
                d98Var.execute(new go6(0, o21Var, eo6Var, o41Var));
                return o21Var.s();
            }
            pe4.F("internalTransactionExecutor");
            throw null;
        } catch (RejectedExecutionException e) {
            o21Var.n(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e));
        }
    }

    public static final long m0(long j, long j2, long j3, String str) {
        String property;
        int i = pv7.a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j;
        }
        Long lY = uq7.Y(property);
        if (lY == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = lY.longValue();
        if (j2 <= jLongValue && jLongValue <= j3) {
            return jLongValue;
        }
        StringBuilder sbO = u48.o("System property '", str, j2, "' should be in range ");
        fz5.r(sbO, "..", j3, ", but is '");
        sbO.append(jLongValue);
        sbO.append('\'');
        throw new IllegalStateException(sbO.toString().toString());
    }

    public static void n(int i, int i2, int[] iArr, int[] iArr2) {
        for (int i3 = 0; i3 < 10; i3++) {
            iArr2[i2 + i3] = iArr[i + i3];
        }
    }

    public static int n0(int i, int i2, String str) {
        return (int) m0(i, 1L, (i2 & 8) != 0 ? Integer.MAX_VALUE : 2097150, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static jv1 o(jv1 jv1Var, jv1 jv1Var2, qt3 qt3Var) {
        qt3Var.getClass();
        if (qt3Var instanceof ml0) {
            return ((ml0) qt3Var).create(jv1Var, jv1Var2);
        }
        ox1 context = jv1Var2.getContext();
        return context == lv2.a ? new qe4(jv1Var2, jv1Var, qt3Var) : new re4(jv1Var2, context, qt3Var, jv1Var);
    }

    public static void o0(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException(dj7.k(obj == null ? "null" : obj.getClass().getName(), " cannot be cast to ", str));
        pe4.z(classCastException, nc8.class.getName());
        throw classCastException;
    }

    public static ww4 p() {
        return new ww4(10);
    }

    public static final void p0(int i, int i2, p77 p77Var) {
        p77Var.getClass();
        ArrayList arrayList = new ArrayList();
        int i3 = (~i) & i2;
        for (int i4 = 0; i4 < 32; i4++) {
            if ((i3 & 1) != 0) {
                arrayList.add(p77Var.g(i4));
            }
            i3 >>>= 1;
        }
        throw new ug5(p77Var.a(), arrayList);
    }

    public static void q(int i, int[] iArr, int[] iArr2) {
        int i2 = 0 - i;
        for (int i3 = 0; i3 < 10; i3++) {
            int i4 = iArr[i3];
            int i5 = iArr2[i3];
            int i6 = (i4 ^ i5) & i2;
            iArr[i3] = i4 ^ i6;
            iArr2[i3] = i5 ^ i6;
        }
    }

    public static void q0(int i, hl2 hl2Var) {
        hl2Var.a((byte) (i >>> 24));
        hl2Var.a((byte) (i >>> 16));
        hl2Var.a((byte) (i >>> 8));
        hl2Var.a((byte) i);
    }

    public static String r(byte[] bArr, char[] cArr, int i, int i2) throws UTFDataFormatException {
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = i4 + 1;
            char c2 = (char) bArr[i + i4];
            cArr[i5] = c2;
            if (c2 < 128) {
                i5++;
                i4 = i6;
            } else {
                if ((c2 & 224) == 192) {
                    if (i6 >= i2) {
                        throw new UTFDataFormatException(fz5.j(i6, "bad second byte at "));
                    }
                    i4 += 2;
                    byte b2 = bArr[i + i6];
                    if ((b2 & 192) != 128) {
                        throw new UTFDataFormatException(fz5.j(i6, "bad second byte at "));
                    }
                    i3 = i5 + 1;
                    cArr[i5] = (char) (((c2 & 31) << 6) | (b2 & 63));
                } else {
                    if ((c2 & 240) != 224) {
                        throw new UTFDataFormatException(fz5.j(i4, "bad byte at "));
                    }
                    int i7 = i4 + 2;
                    if (i7 >= i2) {
                        throw new UTFDataFormatException(fz5.j(i7, "bad third byte at "));
                    }
                    byte b3 = bArr[i + i6];
                    i4 += 3;
                    byte b4 = bArr[i7 + i];
                    if ((b3 & 192) != 128 || (b4 & 192) != 128) {
                        throw new UTFDataFormatException(fz5.j(i6, "bad second or third byte at "));
                    }
                    i3 = i5 + 1;
                    cArr[i5] = (char) (((c2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
                }
                i5 = i3;
            }
        }
        return new String(cArr, 0, i5);
    }

    public static Object r0(qt3 qt3Var, Object obj, jv1 jv1Var) {
        qt3Var.getClass();
        ox1 context = jv1Var.getContext();
        Object se4Var = context == lv2.a ? new se4(jv1Var) : new te4(jv1Var, context);
        g(2, qt3Var);
        return qt3Var.invoke(obj, se4Var);
    }

    public static void s(int i, int i2, byte[] bArr, int[] iArr) {
        int iU = u(bArr, i);
        int iU2 = u(bArr, i + 4);
        int iU3 = u(bArr, i + 8);
        int iU4 = u(bArr, i + 12);
        iArr[i2] = iU & 67108863;
        iArr[i2 + 1] = ((iU >>> 26) | (iU2 << 6)) & 67108863;
        iArr[i2 + 2] = ((iU2 >>> 20) | (iU3 << 12)) & 33554431;
        iArr[i2 + 3] = 67108863 & ((iU4 << 19) | (iU3 >>> 13));
        iArr[i2 + 4] = iU4 >>> 7;
    }

    public static int s0(int i) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i) * (-862048943)), 15)) * 461845907);
    }

    public static void t(int i, int i2, int[] iArr, int[] iArr2) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        iArr2[i2] = i3 & 67108863;
        iArr2[i2 + 1] = ((i3 >>> 26) | (i4 << 6)) & 67108863;
        iArr2[i2 + 2] = ((i4 >>> 20) | (i5 << 12)) & 33554431;
        iArr2[i2 + 3] = 67108863 & ((i6 << 19) | (i5 >>> 13));
        iArr2[i2 + 4] = i6 >>> 7;
    }

    public static bd9 t0(byte[] bArr) throws GeneralSecurityException {
        try {
            mz9 mz9VarU = mz9.u(bArr, f79.a);
            xs9 xs9Var = xs9.b;
            d2a d2aVarA = au9.a(mz9VarU.B());
            ot9 ot9Var = new ot9(mz9VarU, d2aVarA);
            ut9 ut9Var = (ut9) xs9Var.a.get();
            ut9Var.getClass();
            return !ut9Var.d.containsKey(new wt9(ot9.class, d2aVarA)) ? new qs9(ot9Var) : xs9Var.b(ot9Var);
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }

    public static int u(byte[] bArr, int i) {
        return (bArr[i + 3] << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static byte[] u0(bd9 bd9Var) {
        return bd9Var instanceof qs9 ? ((mz9) ((qs9) bd9Var).a.b).c() : ((mz9) ((ot9) xs9.b.d(bd9Var)).b).c();
    }

    public static byte[] v0(byte[] bArr) throws InvalidKeyException {
        if (bArr.length != 32) {
            d6.f("Private key must have 32 bytes.");
            return null;
        }
        byte[] bArr2 = new byte[32];
        bArr2[0] = 9;
        return w0(bArr, bArr2);
    }

    public static void w(String str, int i, byte[] bArr) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != 0 && cCharAt <= 127) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else if (cCharAt <= 2047) {
                int i3 = i + 1;
                bArr[i] = (byte) (((cCharAt >> 6) & 31) | XC20P.IV_BIT_LENGTH);
                i += 2;
                bArr[i3] = (byte) ((cCharAt & '?') | 128);
            } else {
                bArr[i] = (byte) (((cCharAt >> '\f') & 15) | 224);
                int i4 = i + 2;
                bArr[i + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                i += 3;
                bArr[i4] = (byte) ((cCharAt & '?') | 128);
            }
        }
    }

    public static byte[] w0(byte[] bArr, byte[] bArr2) throws InvalidKeyException {
        int i = 32;
        if (bArr.length != 32) {
            d6.f("Private key must have 32 bytes.");
            return null;
        }
        long[] jArr = new long[11];
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 32);
        int i2 = 0;
        bArrCopyOf[0] = (byte) (bArrCopyOf[0] & 248);
        byte b2 = (byte) (bArrCopyOf[31] & 127);
        bArrCopyOf[31] = b2;
        bArrCopyOf[31] = (byte) (b2 | 64);
        if (bArr2.length != 32) {
            d6.f("Public key length is not 32-byte");
            return null;
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr2, bArr2.length);
        bArrCopyOf2[31] = (byte) (bArrCopyOf2[31] & 127);
        int i3 = 0;
        while (true) {
            byte[][] bArr3 = wx3.e;
            if (i3 >= 7) {
                int i4 = 10;
                long[] jArr2 = new long[10];
                for (int i5 = 0; i5 < 10; i5++) {
                    int i6 = xx3.f[i5];
                    jArr2[i5] = (((((((long) (bArrCopyOf2[i6 + 1] & 255)) << 8) | ((long) (bArrCopyOf2[i6] & 255))) | (((long) (bArrCopyOf2[i6 + 2] & 255)) << 16)) | (((long) (bArrCopyOf2[i6 + 3] & 255)) << 24)) >> xx3.g[i5]) & ((long) xx3.h[i5 & 1]);
                }
                long[] jArr3 = new long[19];
                long[] jArr4 = new long[19];
                jArr4[0] = 1;
                long[] jArr5 = new long[19];
                jArr5[0] = 1;
                long[] jArr6 = new long[19];
                long[] jArr7 = new long[19];
                long[] jArr8 = new long[19];
                jArr8[0] = 1;
                long[] jArr9 = new long[19];
                long[] jArr10 = new long[19];
                jArr10[0] = 1;
                System.arraycopy(jArr2, 0, jArr3, 0, 10);
                while (i2 < i) {
                    int i7 = bArrCopyOf[31 - i2] & 255;
                    int i8 = 0;
                    while (i8 < 8) {
                        int i9 = (i7 >> (7 - i8)) & 1;
                        wx3.H(jArr5, jArr3, i9);
                        wx3.H(jArr6, jArr4, i9);
                        byte[] bArr4 = bArrCopyOf;
                        long[] jArrCopyOf = Arrays.copyOf(jArr5, 10);
                        int i10 = i8;
                        long[] jArr11 = new long[19];
                        int i11 = i7;
                        long[] jArr12 = new long[19];
                        int i12 = i2;
                        long[] jArr13 = new long[19];
                        long[] jArr14 = jArr;
                        long[] jArr15 = new long[19];
                        long[] jArr16 = new long[19];
                        long[] jArr17 = jArr10;
                        long[] jArr18 = new long[19];
                        long[] jArr19 = new long[19];
                        xx3.M(jArr5, jArr5, jArr6);
                        xx3.J(jArr6, jArrCopyOf, jArr6);
                        long[] jArrCopyOf2 = Arrays.copyOf(jArr3, 10);
                        xx3.M(jArr3, jArr3, jArr4);
                        xx3.J(jArr4, jArrCopyOf2, jArr4);
                        xx3.I(jArr15, jArr3, jArr6);
                        xx3.I(jArr16, jArr5, jArr4);
                        xx3.G(jArr15);
                        xx3.D(jArr15);
                        xx3.G(jArr16);
                        xx3.D(jArr16);
                        long[] jArr20 = jArr3;
                        System.arraycopy(jArr15, 0, jArrCopyOf2, 0, 10);
                        xx3.M(jArr15, jArr15, jArr16);
                        xx3.J(jArr16, jArrCopyOf2, jArr16);
                        xx3.H(jArr19, jArr15);
                        xx3.H(jArr18, jArr16);
                        xx3.I(jArr16, jArr18, jArr2);
                        xx3.G(jArr16);
                        xx3.D(jArr16);
                        System.arraycopy(jArr19, 0, jArr7, 0, 10);
                        System.arraycopy(jArr16, 0, jArr8, 0, 10);
                        xx3.H(jArr12, jArr5);
                        xx3.H(jArr13, jArr6);
                        xx3.I(jArr9, jArr12, jArr13);
                        xx3.G(jArr9);
                        xx3.D(jArr9);
                        xx3.J(jArr13, jArr12, jArr13);
                        Arrays.fill(jArr11, 10, 18, 0L);
                        int i13 = 0;
                        for (int i14 = 10; i13 < i14; i14 = 10) {
                            jArr11[i13] = jArr13[i13] * 121665;
                            i13++;
                        }
                        xx3.D(jArr11);
                        xx3.M(jArr11, jArr11, jArr12);
                        xx3.I(jArr17, jArr13, jArr11);
                        xx3.G(jArr17);
                        xx3.D(jArr17);
                        wx3.H(jArr9, jArr7, i9);
                        wx3.H(jArr17, jArr8, i9);
                        i8 = i10 + 1;
                        long[] jArr21 = jArr8;
                        jArr8 = jArr4;
                        jArr4 = jArr21;
                        long[] jArr22 = jArr9;
                        jArr9 = jArr5;
                        jArr5 = jArr22;
                        long[] jArr23 = jArr6;
                        jArr6 = jArr17;
                        jArr10 = jArr23;
                        jArr3 = jArr7;
                        bArrCopyOf = bArr4;
                        i7 = i11;
                        i2 = i12;
                        jArr = jArr14;
                        jArr7 = jArr20;
                    }
                    i2++;
                    i = 32;
                    i4 = 10;
                }
                long[] jArr24 = jArr;
                int i15 = i4;
                long[] jArr25 = new long[i15];
                long[] jArr26 = new long[i15];
                long[] jArr27 = new long[i15];
                long[] jArr28 = new long[i15];
                long[] jArr29 = new long[i15];
                long[] jArr30 = new long[i15];
                long[] jArr31 = new long[i15];
                long[] jArr32 = new long[i15];
                long[] jArr33 = new long[i15];
                long[] jArr34 = new long[i15];
                long[] jArr35 = jArr3;
                long[] jArr36 = new long[i15];
                xx3.H(jArr26, jArr6);
                xx3.H(jArr36, jArr26);
                xx3.H(jArr34, jArr36);
                xx3.E(jArr27, jArr34, jArr6);
                xx3.E(jArr28, jArr27, jArr26);
                xx3.H(jArr34, jArr28);
                xx3.E(jArr29, jArr34, jArr27);
                xx3.H(jArr34, jArr29);
                xx3.H(jArr36, jArr34);
                xx3.H(jArr34, jArr36);
                xx3.H(jArr36, jArr34);
                xx3.H(jArr34, jArr36);
                xx3.E(jArr30, jArr34, jArr29);
                xx3.H(jArr34, jArr30);
                xx3.H(jArr36, jArr34);
                for (int i16 = 2; i16 < 10; i16 += 2) {
                    xx3.H(jArr34, jArr36);
                    xx3.H(jArr36, jArr34);
                }
                xx3.E(jArr31, jArr36, jArr30);
                xx3.H(jArr34, jArr31);
                xx3.H(jArr36, jArr34);
                for (int i17 = 2; i17 < 20; i17 += 2) {
                    xx3.H(jArr34, jArr36);
                    xx3.H(jArr36, jArr34);
                }
                xx3.E(jArr34, jArr36, jArr31);
                xx3.H(jArr36, jArr34);
                xx3.H(jArr34, jArr36);
                for (int i18 = 2; i18 < 10; i18 += 2) {
                    xx3.H(jArr36, jArr34);
                    xx3.H(jArr34, jArr36);
                }
                xx3.E(jArr32, jArr34, jArr30);
                xx3.H(jArr34, jArr32);
                xx3.H(jArr36, jArr34);
                for (int i19 = 2; i19 < 50; i19 += 2) {
                    xx3.H(jArr34, jArr36);
                    xx3.H(jArr36, jArr34);
                }
                xx3.E(jArr33, jArr36, jArr32);
                xx3.H(jArr36, jArr33);
                xx3.H(jArr34, jArr36);
                for (int i20 = 2; i20 < 100; i20 += 2) {
                    xx3.H(jArr36, jArr34);
                    xx3.H(jArr34, jArr36);
                }
                xx3.E(jArr36, jArr34, jArr33);
                xx3.H(jArr34, jArr36);
                xx3.H(jArr36, jArr34);
                for (int i21 = 2; i21 < 50; i21 += 2) {
                    xx3.H(jArr34, jArr36);
                    xx3.H(jArr36, jArr34);
                }
                xx3.E(jArr34, jArr36, jArr32);
                xx3.H(jArr36, jArr34);
                xx3.H(jArr34, jArr36);
                xx3.H(jArr36, jArr34);
                xx3.H(jArr34, jArr36);
                xx3.H(jArr36, jArr34);
                xx3.E(jArr25, jArr36, jArr28);
                xx3.E(jArr24, jArr5, jArr25);
                long[] jArr37 = new long[10];
                long[] jArr38 = new long[10];
                long[] jArr39 = new long[11];
                long[] jArr40 = new long[11];
                long[] jArr41 = new long[11];
                xx3.E(jArr37, jArr2, jArr24);
                xx3.M(jArr38, jArr2, jArr24);
                long[] jArr42 = new long[10];
                jArr42[0] = 486662;
                xx3.M(jArr40, jArr38, jArr42);
                xx3.E(jArr40, jArr40, jArr4);
                xx3.M(jArr40, jArr40, jArr35);
                xx3.E(jArr40, jArr40, jArr37);
                xx3.E(jArr40, jArr40, jArr35);
                for (int i22 = 0; i22 < 10; i22++) {
                    jArr39[i22] = jArr40[i22] * 4;
                }
                xx3.D(jArr39);
                xx3.E(jArr40, jArr37, jArr4);
                xx3.J(jArr40, jArr40, jArr4);
                xx3.E(jArr41, jArr38, jArr35);
                xx3.M(jArr40, jArr40, jArr41);
                xx3.H(jArr40, jArr40);
                if (MessageDigest.isEqual(xx3.K(jArr39), xx3.K(jArr40))) {
                    return xx3.K(jArr24);
                }
                l0.e("Arithmetic error in curve multiplication with the public key: ".concat(ho6.a0(bArr2)));
                return null;
            }
            if (MessageDigest.isEqual(bArr3[i3], bArrCopyOf2)) {
                throw new InvalidKeyException("Banned public key: ".concat(ho6.a0(bArr3[i3])));
            }
            i3++;
        }
    }

    public static void x(int i, int i2, byte[] bArr, int[] iArr) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        z(bArr, (i4 << 26) | i3, i2);
        z(bArr, (i4 >>> 6) | (i5 << 20), i2 + 4);
        z(bArr, (i5 >>> 12) | (i6 << 13), i2 + 8);
        z(bArr, (i7 << 7) | (i6 >>> 19), i2 + 12);
    }

    public static void y(int i, int i2, int[] iArr, int[] iArr2) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        iArr2[i2] = (i4 << 26) | i3;
        iArr2[i2 + 1] = (i4 >>> 6) | (i5 << 20);
        iArr2[i2 + 2] = (i5 >>> 12) | (i6 << 13);
        iArr2[i2 + 3] = (i7 << 7) | (i6 >>> 19);
    }

    public static void z(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    public abstract int B();

    public abstract Context C();

    public boolean F() {
        return false;
    }

    public abstract void N();

    public abstract void P(Throwable th);

    public abstract boolean Q(int i, KeyEvent keyEvent);

    public abstract void R(kb2 kb2Var);

    public boolean S(KeyEvent keyEvent) {
        return false;
    }

    public boolean U() {
        return false;
    }

    public abstract void Y(boolean z);

    public abstract void Z(boolean z);

    public abstract void a0();

    public abstract void b0(boolean z);

    public abstract void c0(boolean z);

    public abstract void d0(CharSequence charSequence);

    public abstract void e0(int i);

    public abstract void f0(CharSequence charSequence);

    public abstract void g0(CharSequence charSequence);

    public boolean i() {
        return false;
    }

    public s8 j0(h80 h80Var) {
        return null;
    }

    public abstract boolean l();

    public abstract void v(boolean z);

    public void O() {
    }
}
