package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.view.ViewGroup;
import com.jcraft.jsch.SftpATTRS;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.zip.CRC32;
import org.swiftapps.swiftbackup.settings.SettingsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bb9 {
    public static final String[] a = {"standard", "accelerate", "decelerate", "linear"};
    public static final p77[] b = new p77[0];
    public static final y53 c = new y53("is_user_verifying_platform_authenticator_available_for_credential", 1);
    public static final y53 d = new y53("is_user_verifying_platform_authenticator_available", 1);
    public static boolean e = true;

    public static final CharSequence A(int i, CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() >= 200) {
            if (i != -1) {
                int i2 = i - 30;
                int i3 = i + 30;
                String str = i2 <= 0 ? "" : ".....";
                String str2 = i3 >= charSequence.length() ? "" : ".....";
                StringBuilder sbS = dj7.s(str);
                if (i2 < 0) {
                    i2 = 0;
                }
                int length = charSequence.length();
                if (i3 > length) {
                    i3 = length;
                }
                sbS.append(charSequence.subSequence(i2, i3).toString());
                sbS.append(str2);
                return sbS.toString();
            }
            int length2 = charSequence.length() - 60;
            if (length2 > 0) {
                return "....." + charSequence.subSequence(length2, charSequence.length()).toString();
            }
        }
        return charSequence;
    }

    public static void B(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((long) iArr2[0]) & 4294967295L;
        long j2 = ((long) iArr2[1]) & 4294967295L;
        long j3 = ((long) iArr2[2]) & 4294967295L;
        long j4 = ((long) iArr2[3]) & 4294967295L;
        long j5 = ((long) iArr2[4]) & 4294967295L;
        long j6 = ((long) iArr2[5]) & 4294967295L;
        long j7 = ((long) iArr2[6]) & 4294967295L;
        long j8 = ((long) iArr[0]) & 4294967295L;
        long j9 = j8 * j;
        iArr3[0] = (int) j9;
        long j10 = (j8 * j2) + (j9 >>> 32);
        iArr3[1] = (int) j10;
        long j11 = (j8 * j3) + (j10 >>> 32);
        iArr3[2] = (int) j11;
        long j12 = (j8 * j4) + (j11 >>> 32);
        iArr3[3] = (int) j12;
        long j13 = (j8 * j5) + (j12 >>> 32);
        iArr3[4] = (int) j13;
        long j14 = (j8 * j6) + (j13 >>> 32);
        iArr3[5] = (int) j14;
        long j15 = (j8 * j7) + (j14 >>> 32);
        iArr3[6] = (int) j15;
        iArr3[7] = (int) (j15 >>> 32);
        int i = 1;
        for (int i2 = 7; i < i2; i2 = 7) {
            long j16 = ((long) iArr[i]) & 4294967295L;
            long j17 = (j16 * j) + (((long) iArr3[i]) & 4294967295L);
            iArr3[i] = (int) j17;
            int i3 = i + 1;
            long j18 = j5;
            long j19 = (j16 * j2) + (((long) iArr3[i3]) & 4294967295L) + (j17 >>> 32);
            iArr3[i3] = (int) j19;
            int i4 = i + 2;
            long j20 = (j16 * j3) + (((long) iArr3[i4]) & 4294967295L) + (j19 >>> 32);
            iArr3[i4] = (int) j20;
            int i5 = i + 3;
            long j21 = (j16 * j4) + (((long) iArr3[i5]) & 4294967295L) + (j20 >>> 32);
            iArr3[i5] = (int) j21;
            int i6 = i + 4;
            long j22 = (j16 * j18) + (((long) iArr3[i6]) & 4294967295L) + (j21 >>> 32);
            iArr3[i6] = (int) j22;
            int i7 = i + 5;
            long j23 = (j16 * j6) + (((long) iArr3[i7]) & 4294967295L) + (j22 >>> 32);
            iArr3[i7] = (int) j23;
            int i8 = i + 6;
            long j24 = (j16 * j7) + (((long) iArr3[i8]) & 4294967295L) + (j23 >>> 32);
            iArr3[i8] = (int) j24;
            iArr3[i + 7] = (int) (j24 >>> 32);
            i = i3;
            j5 = j18;
        }
    }

    public static short[][] C(short[][] sArr, short[][] sArr2) {
        if (sArr[0].length != sArr2.length) {
            g84.h("Multiplication is not possible!");
            return null;
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2[0].length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                for (int i3 = 0; i3 < sArr2[0].length; i3++) {
                    short s = (short) (iu3.a[sArr[i][i2]][sArr2[i2][i3]] & 255);
                    short[] sArr4 = sArr3[i];
                    sArr4[i3] = (short) (s ^ sArr4[i3]);
                }
            }
        }
        return sArr3;
    }

    public static short[][][] E(short[][] sArr, short[][][] sArr2, short[][][] sArr3) {
        short[][] sArr4 = sArr2[0];
        int length = sArr4.length;
        short[][] sArr5 = sArr3[0];
        if (length == sArr5.length) {
            int length2 = sArr4[0].length;
            short[] sArr6 = sArr5[0];
            if (length2 == sArr6.length && sArr2.length == sArr[0].length && sArr3.length == sArr.length) {
                short[][][] sArr7 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, sArr3.length, sArr5.length, sArr6.length);
                for (int i = 0; i < sArr2[0].length; i++) {
                    for (int i2 = 0; i2 < sArr2[0][0].length; i2++) {
                        for (int i3 = 0; i3 < sArr.length; i3++) {
                            for (int i4 = 0; i4 < sArr[0].length; i4++) {
                                short s = (short) (iu3.a[sArr[i3][i4]][sArr2[i4][i][i2]] & 255);
                                short[] sArr8 = sArr7[i3][i];
                                sArr8[i2] = (short) (s ^ sArr8[i2]);
                            }
                            short[] sArr9 = sArr7[i3][i];
                            short s2 = sArr3[i3][i][i2];
                            short s3 = sArr9[i2];
                            byte[][] bArr = iu3.a;
                            sArr9[i2] = (short) (s2 ^ s3);
                        }
                    }
                }
                return sArr7;
            }
        }
        g84.h("Multiplication not possible!");
        return null;
    }

    public static void F(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + cls.getDeclaredConstructor(null).newInstance(null));
            } catch (IllegalAccessException e2) {
                M(cls, e2);
                throw null;
            } catch (InstantiationException e3) {
                M(cls, e3);
                throw null;
            } catch (NoSuchMethodException e4) {
                M(cls, e4);
                throw null;
            } catch (InvocationTargetException e5) {
                M(cls, e5);
                throw null;
            }
        } catch (ClassNotFoundException e6) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e6);
        }
    }

    public static void G(AnimatorSet animatorSet, ArrayList arrayList) {
        int size = arrayList.size();
        long jMax = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
        valueAnimatorOfInt.setDuration(jMax);
        arrayList.add(0, valueAnimatorOfInt);
        animatorSet.playTogether(arrayList);
    }

    public static void H(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[0]) & 4294967295L;
        int i = 14;
        int i2 = 0;
        int i3 = 6;
        while (true) {
            int i4 = i3 - 1;
            long j2 = ((long) iArr[i3]) & 4294967295L;
            long j3 = j2 * j2;
            iArr2[i - 1] = (i2 << 31) | ((int) (j3 >>> 33));
            i -= 2;
            iArr2[i] = (int) (j3 >>> 1);
            i2 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | (((long) (i2 << 31)) & 4294967295L);
                iArr2[0] = (int) j4;
                int i5 = ((int) (j4 >>> 32)) & 1;
                long j6 = ((long) iArr[1]) & 4294967295L;
                long j7 = ((long) iArr2[2]) & 4294967295L;
                long j8 = (j6 * j) + j5;
                int i6 = (int) j8;
                iArr2[1] = i5 | (i6 << 1);
                long j9 = ((long) iArr[2]) & 4294967295L;
                long j10 = ((long) iArr2[3]) & 4294967295L;
                long j11 = ((long) iArr2[4]) & 4294967295L;
                long j12 = (j9 * j) + j7 + (j8 >>> 32);
                int i7 = (int) j12;
                iArr2[2] = (i7 << 1) | (i6 >>> 31);
                long jD = dj7.d(j9, j6, j12 >>> 32, j10);
                long j13 = j11 + (jD >>> 32);
                long j14 = ((long) iArr[3]) & 4294967295L;
                long j15 = (((long) iArr2[5]) & 4294967295L) + (j13 >>> 32);
                long j16 = j13 & 4294967295L;
                long j17 = (((long) iArr2[6]) & 4294967295L) + (j15 >>> 32);
                long j18 = j15 & 4294967295L;
                long j19 = (j14 * j) + (jD & 4294967295L);
                int i8 = (int) j19;
                iArr2[3] = (i7 >>> 31) | (i8 << 1);
                int i9 = i8 >>> 31;
                long jD2 = dj7.d(j14, j6, j19 >>> 32, j16);
                long jD3 = dj7.d(j14, j9, jD2 >>> 32, j18);
                long j20 = j17 + (jD3 >>> 32);
                long j21 = ((long) iArr[4]) & 4294967295L;
                long j22 = (((long) iArr2[7]) & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (((long) iArr2[8]) & 4294967295L) + (j22 >>> 32);
                long j25 = j22 & 4294967295L;
                long j26 = (j21 * j) + (jD2 & 4294967295L);
                int i10 = (int) j26;
                iArr2[4] = i9 | (i10 << 1);
                int i11 = i10 >>> 31;
                long jD4 = dj7.d(j21, j6, j26 >>> 32, jD3 & 4294967295L);
                long jD5 = dj7.d(j21, j9, jD4 >>> 32, j23);
                long jD6 = dj7.d(j21, j14, jD5 >>> 32, j25);
                long j27 = j24 + (jD6 >>> 32);
                long j28 = ((long) iArr[5]) & 4294967295L;
                long j29 = (((long) iArr2[9]) & 4294967295L) + (j27 >>> 32);
                long j30 = j27 & 4294967295L;
                long j31 = (((long) iArr2[10]) & 4294967295L) + (j29 >>> 32);
                long j32 = j29 & 4294967295L;
                long j33 = (j28 * j) + (jD4 & 4294967295L);
                int i12 = (int) j33;
                iArr2[5] = i11 | (i12 << 1);
                int i13 = i12 >>> 31;
                long jD7 = dj7.d(j28, j6, j33 >>> 32, jD5 & 4294967295L);
                long jD8 = dj7.d(j28, j9, jD7 >>> 32, jD6 & 4294967295L);
                long jD9 = dj7.d(j28, j14, jD8 >>> 32, j30);
                long j34 = jD8 & 4294967295L;
                long jD10 = dj7.d(j28, j21, jD9 >>> 32, j32);
                long j35 = j31 + (jD10 >>> 32);
                long j36 = jD10 & 4294967295L;
                long j37 = ((long) iArr[6]) & 4294967295L;
                long j38 = (((long) iArr2[11]) & 4294967295L) + (j35 >>> 32);
                long j39 = j35 & 4294967295L;
                long j40 = (((long) iArr2[12]) & 4294967295L) + (j38 >>> 32);
                long j41 = j38 & 4294967295L;
                long j42 = (j37 * j) + (jD7 & 4294967295L);
                int i14 = (int) j42;
                iArr2[6] = i13 | (i14 << 1);
                int i15 = i14 >>> 31;
                long jD11 = dj7.d(j37, j6, j42 >>> 32, j34);
                long jD12 = dj7.d(j37, j9, jD11 >>> 32, jD9 & 4294967295L);
                long jD13 = dj7.d(j37, j14, jD12 >>> 32, j36);
                long jD14 = dj7.d(j37, j21, jD13 >>> 32, j39);
                long jD15 = dj7.d(j37, j28, jD14 >>> 32, j41);
                long j43 = j40 + (jD15 >>> 32);
                int i16 = (int) jD11;
                iArr2[7] = (i16 << 1) | i15;
                int i17 = (int) jD12;
                iArr2[8] = (i16 >>> 31) | (i17 << 1);
                int i18 = i17 >>> 31;
                int i19 = (int) jD13;
                iArr2[9] = i18 | (i19 << 1);
                int i20 = i19 >>> 31;
                int i21 = (int) jD14;
                iArr2[10] = i20 | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) jD15;
                iArr2[11] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) j43;
                iArr2[12] = i24 | (i25 << 1);
                iArr2[13] = ((iArr2[13] + ((int) (j43 >>> 32))) << 1) | (i25 >>> 31);
                return;
            }
            i3 = i4;
        }
    }

    public static void I(Activity activity) {
        activity.getClass();
        activity.startActivity(new Intent(activity, (Class<?>) SettingsActivity.class));
    }

    public static final String J(fl4 fl4Var, String str) {
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX == null || (qj4VarX instanceof el4) || !(qj4VarX instanceof kl4)) {
            return null;
        }
        return qj4VarX.o();
    }

    public static void K(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3) {
        long j = (((long) iArr[i]) & 4294967295L) - (((long) iArr2[i2]) & 4294967295L);
        iArr3[0] = (int) j;
        long j2 = ((((long) iArr[i + 1]) & 4294967295L) - (((long) iArr2[i2 + 1]) & 4294967295L)) + (j >> 32);
        iArr3[1] = (int) j2;
        long j3 = ((((long) iArr[i + 2]) & 4294967295L) - (((long) iArr2[i2 + 2]) & 4294967295L)) + (j2 >> 32);
        iArr3[2] = (int) j3;
        long j4 = ((((long) iArr[i + 3]) & 4294967295L) - (((long) iArr2[i2 + 3]) & 4294967295L)) + (j3 >> 32);
        iArr3[3] = (int) j4;
        long j5 = ((((long) iArr[i + 4]) & 4294967295L) - (((long) iArr2[i2 + 4]) & 4294967295L)) + (j4 >> 32);
        iArr3[4] = (int) j5;
        long j6 = ((((long) iArr[i + 5]) & 4294967295L) - (((long) iArr2[i2 + 5]) & 4294967295L)) + (j5 >> 32);
        iArr3[5] = (int) j6;
        iArr3[6] = (int) (((((long) iArr[i + 6]) & 4294967295L) - (((long) iArr2[i2 + 6]) & 4294967295L)) + (j6 >> 32));
    }

    public static void L(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            pl8.b(viewGroup, z);
        } else if (e) {
            try {
                pl8.b(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                e = false;
            }
        }
    }

    public static void M(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(fz5.k(cls, "Unable to instantiate GlideModule implementation for "), reflectiveOperationException);
    }

    public static final void N(vr1 vr1Var, Number number) {
        vr1.k(vr1Var, "Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, 2);
        throw null;
    }

    public static short[][] O(short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr[0].length, sArr.length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr[0].length; i2++) {
                sArr2[i2][i] = sArr[i][i2];
            }
        }
        return sArr2;
    }

    public static void P(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 9);
                sb.append("at index ");
                sb.append(i2);
                throw new NullPointerException(sb.toString());
            }
        }
    }

    public static int Q(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static float a(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static final uj4 b(String str, Number number) {
        return new uj4("Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) A(-1, str)));
    }

    public static final uj4 c(p77 p77Var) {
        return new uj4("Value of type '" + p77Var.a() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + p77Var.e() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final nj4 d(int i, CharSequence charSequence, String str) {
        charSequence.getClass();
        String strK = str + "\nJSON input: " + ((Object) A(i, charSequence));
        if (i >= 0) {
            strK = u48.k(i, "Unexpected JSON token at offset ", ": ", strK);
        }
        return new nj4(strK);
    }

    public static float e(float f) {
        return f <= 0.0031308f ? f * 12.92f : (float) ((Math.pow(f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int f(int i, long j) {
        try {
            return Math.addExact(i, Math.toIntExact(j));
        } catch (ArithmeticException e2) {
            throw new IllegalArgumentException("Argument too large or result overflows", e2);
        }
    }

    public static short[][] g(short[][] sArr, short[][] sArr2) {
        if (sArr.length == sArr2.length) {
            short[] sArr3 = sArr[0];
            if (sArr3.length == sArr2[0].length) {
                short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr3.length);
                for (int i = 0; i < sArr.length; i++) {
                    for (int i2 = 0; i2 < sArr[0].length; i2++) {
                        short[] sArr5 = sArr4[i];
                        short s = sArr[i][i2];
                        short s2 = sArr2[i][i2];
                        byte[][] bArr = iu3.a;
                        sArr5[i2] = (short) (s ^ s2);
                    }
                }
                return sArr4;
            }
        }
        g84.h("Addition is not possible!");
        return null;
    }

    public static short[][] h(short[][] sArr) {
        if (sArr.length == sArr[0].length) {
            return g(sArr, O(sArr));
        }
        g84.h("Addition is not possible!");
        return null;
    }

    public static int i(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        long j = (((long) iArr[i]) & 4294967295L) + (((long) iArr2[i2]) & 4294967295L) + (((long) i3) & 4294967295L);
        iArr2[i2] = (int) j;
        int i4 = i2 + 1;
        long j2 = (((long) iArr[i + 1]) & 4294967295L) + (((long) iArr2[i4]) & 4294967295L) + (j >>> 32);
        iArr2[i4] = (int) j2;
        int i5 = i2 + 2;
        long j3 = (((long) iArr[i + 2]) & 4294967295L) + (((long) iArr2[i5]) & 4294967295L) + (j2 >>> 32);
        iArr2[i5] = (int) j3;
        int i6 = i2 + 3;
        long j4 = (((long) iArr[i + 3]) & 4294967295L) + (((long) iArr2[i6]) & 4294967295L) + (j3 >>> 32);
        iArr2[i6] = (int) j4;
        int i7 = i2 + 4;
        long j5 = (((long) iArr[i + 4]) & 4294967295L) + (((long) iArr2[i7]) & 4294967295L) + (j4 >>> 32);
        iArr2[i7] = (int) j5;
        int i8 = i2 + 5;
        long j6 = (((long) iArr[i + 5]) & 4294967295L) + (((long) iArr2[i8]) & 4294967295L) + (j5 >>> 32);
        iArr2[i8] = (int) j6;
        int i9 = i2 + 6;
        long j7 = (((long) iArr[i + 6]) & 4294967295L) + (4294967295L & ((long) iArr2[i9])) + (j6 >>> 32);
        iArr2[i9] = (int) j7;
        return (int) (j7 >>> 32);
    }

    public static int j(int[] iArr, int[] iArr2) {
        long j = (((long) iArr[7]) & 4294967295L) + (((long) iArr2[14]) & 4294967295L);
        int i = (int) j;
        iArr[7] = i;
        iArr2[14] = i;
        long j2 = (((long) iArr[8]) & 4294967295L) + (((long) iArr2[15]) & 4294967295L) + (j >>> 32);
        int i2 = (int) j2;
        iArr[8] = i2;
        iArr2[15] = i2;
        long j3 = (((long) iArr[9]) & 4294967295L) + (((long) iArr2[16]) & 4294967295L) + (j2 >>> 32);
        int i3 = (int) j3;
        iArr[9] = i3;
        iArr2[16] = i3;
        long j4 = (((long) iArr[10]) & 4294967295L) + (((long) iArr2[17]) & 4294967295L) + (j3 >>> 32);
        int i4 = (int) j4;
        iArr[10] = i4;
        iArr2[17] = i4;
        long j5 = (((long) iArr[11]) & 4294967295L) + (((long) iArr2[18]) & 4294967295L) + (j4 >>> 32);
        int i5 = (int) j5;
        iArr[11] = i5;
        iArr2[18] = i5;
        long j6 = (((long) iArr[12]) & 4294967295L) + (((long) iArr2[19]) & 4294967295L) + (j5 >>> 32);
        int i6 = (int) j6;
        iArr[12] = i6;
        iArr2[19] = i6;
        long j7 = (((long) iArr[13]) & 4294967295L) + (4294967295L & ((long) iArr2[20])) + (j6 >>> 32);
        int i7 = (int) j7;
        iArr[13] = i7;
        iArr2[20] = i7;
        return (int) (j7 >>> 32);
    }

    public static final fl4 k(qj4 qj4Var) {
        if (qj4Var == null || !(qj4Var instanceof fl4)) {
            return null;
        }
        return qj4Var.i();
    }

    public static final Set l(p77 p77Var) {
        p77Var.getClass();
        if (p77Var instanceof jz0) {
            return ((jz0) p77Var).b();
        }
        HashSet hashSet = new HashSet(p77Var.f());
        int iF = p77Var.f();
        for (int i = 0; i < iF; i++) {
            hashSet.add(p77Var.g(i));
        }
        return hashSet;
    }

    public static void m(Object obj, String str) {
        if (obj != null) {
            return;
        }
        f6.n(str);
    }

    public static void n(String str, boolean z) {
        if (z) {
            return;
        }
        l0.e(str);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x003e A[RETURN] */
    public static final int o(nw6 nw6Var, String str) {
        nw6Var.getClass();
        int columnCount = nw6Var.getColumnCount();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= columnCount) {
                i2 = -1;
                break;
            }
            if (str.equals(nw6Var.getColumnName(i2))) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return i2;
        }
        String strJ = u48.j('`', "`", str);
        int columnCount2 = nw6Var.getColumnCount();
        while (i < columnCount2) {
            if (strJ.equals(nw6Var.getColumnName(i))) {
                if (i >= 0) {
                    return i;
                }
                return -1;
            }
            i++;
        }
        i = -1;
        if (i >= 0) {
            return i;
        }
        return -1;
    }

    public static final p77[] p(List list) {
        p77[] p77VarArr;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        return (list == null || (p77VarArr = (p77[]) list.toArray(new p77[0])) == null) ? b : p77VarArr;
    }

    public static ep7 q(byte[] bArr, int i) throws hf8 {
        if (bArr[i] == 0) {
            byte b2 = bArr[i + 1];
            if ((b2 & 255) < 16) {
                ep7 ep7Var = new ep7();
                ep7Var.b = -1L;
                ep7Var.a = b2;
                return ep7Var;
            }
        }
        throw new hf8();
    }

    public static long r(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i == -1) {
            d6.d();
            return 0L;
        }
        long j = i & 127;
        int i2 = 0;
        while ((i & 128) != 0) {
            i2++;
            if (i2 >= 9) {
                throw new cy1();
            }
            i = inputStream.read();
            if (i == -1) {
                d6.d();
                return 0L;
            }
            if (i == 0) {
                throw new cy1();
            }
            j |= ((long) (i & 127)) << (i2 * 7);
        }
        return j;
    }

    public static boolean s(int[] iArr, int[] iArr2, int[] iArr3) {
        boolean z;
        int i = 6;
        while (true) {
            z = true;
            if (i < 0) {
                break;
            }
            int i2 = iArr[7 + i] ^ SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                z = false;
                break;
            }
            if (i2 > i3) {
                break;
            }
            i--;
        }
        if (z) {
            K(iArr, 7, iArr2, 0, iArr3);
            return z;
        }
        K(iArr2, 0, iArr, 7, iArr3);
        return z;
    }

    public static int t(float f, int i, int i2) {
        if (i == i2) {
            return i;
        }
        float f2 = ((i >> 24) & 255) / 255.0f;
        float f3 = ((i2 >> 24) & 255) / 255.0f;
        float fA = a(((i >> 16) & 255) / 255.0f);
        float fA2 = a(((i >> 8) & 255) / 255.0f);
        float fA3 = a((i & 255) / 255.0f);
        float fA4 = a(((i2 >> 16) & 255) / 255.0f);
        float fA5 = a(((i2 >> 8) & 255) / 255.0f);
        float fA6 = a((i2 & 255) / 255.0f);
        float fE = xs1.e(f3, f2, f, f2);
        float fE2 = xs1.e(fA4, fA, f, fA);
        float fE3 = xs1.e(fA5, fA2, f, fA2);
        float fE4 = xs1.e(fA6, fA3, f, fA3);
        float fE5 = e(fE2) * 255.0f;
        float fE6 = e(fE3) * 255.0f;
        return Math.round(e(fE4) * 255.0f) | (Math.round(fE5) << 16) | (Math.round(fE * 255.0f) << 24) | (Math.round(fE6) << 8);
    }

    public static final int u(nw6 nw6Var, String str) {
        int iO = o(nw6Var, str);
        if (iO >= 0) {
            return iO;
        }
        int columnCount = nw6Var.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(nw6Var.getColumnName(i));
        }
        d6.j("Column '", str, "' does not exist. Available columns: [", el1.Y0(arrayList, null, null, null, null, 63), 93);
        return 0;
    }

    public static int v(long j) {
        int i = 0;
        do {
            i++;
            j >>= 7;
        } while (j != 0);
        return i;
    }

    public static final Integer w(fl4 fl4Var, String str) {
        Long lZ = z(fl4Var, str);
        if (lZ != null) {
            return Integer.valueOf((int) lZ.longValue());
        }
        return null;
    }

    public static final void x(vr1 vr1Var, String str) {
        vr1Var.j(vr1Var.b - 1, "Trailing comma before the end of JSON ".concat(str), "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingCommas = true' in 'Json {}' builder to support them.");
        throw null;
    }

    public static boolean y(int i, byte[] bArr, int i2, int i3) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i, i2);
        long value = crc32.getValue();
        for (int i4 = 0; i4 < 4; i4++) {
            if (((byte) (value >>> (i4 * 8))) != bArr[i3 + i4]) {
                return false;
            }
        }
        return true;
    }

    public static final Long z(fl4 fl4Var, String str) {
        Object bn6Var;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX == null || (qj4VarX instanceof el4) || !(qj4VarX instanceof kl4)) {
            return null;
        }
        try {
            bn6Var = Long.valueOf(qj4VarX.l());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Long l = (Long) (bn6Var instanceof bn6 ? null : bn6Var);
        if (l != null) {
            return l;
        }
        String strO = qj4VarX.o();
        strO.getClass();
        return uq7.Y(strO);
    }

    public abstract Object D();
}
