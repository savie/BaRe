package com.google.android.recaptcha.internal;

import defpackage.c6;
import defpackage.d6;
import java.math.RoundingMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzkj {
    public static int zza(int i, int i2, RoundingMode roundingMode) {
        roundingMode.getClass();
        if (i2 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i3 = i / i2;
        int i4 = i - (i2 * i3);
        if (i4 == 0) {
            return i3;
        }
        int i5 = ((i ^ i2) >> 31) | 1;
        switch (zzki.zza[roundingMode.ordinal()]) {
            case 1:
                zzkl.zzb(false);
                return i3;
            case 2:
                return i3;
            case 3:
                if (i5 >= 0) {
                    return i3;
                }
                break;
            case 4:
                break;
            case 5:
                if (i5 <= 0) {
                    return i3;
                }
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i4);
                int iAbs2 = iAbs - (Math.abs(i2) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if ((i3 & 1 & (roundingMode != RoundingMode.HALF_EVEN ? 0 : 1)) == 0) {
                            return i3;
                        }
                    }
                } else if (iAbs2 <= 0) {
                    return i3;
                }
            default:
                d6.n();
                return 0;
        }
        return i3 + i5;
    }

    public static int zzb(int i, RoundingMode roundingMode) {
        if (i <= 0) {
            c6.f("x (0) must be > 0");
            return 0;
        }
        switch (zzki.zza[roundingMode.ordinal()]) {
            case 1:
                zzkl.zzb(((i + (-1)) & i) == 0);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                return (31 - iNumberOfLeadingZeros) + ((((-1257966797) >>> iNumberOfLeadingZeros) - i) >>> 31);
            default:
                d6.n();
                return 0;
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }
}
