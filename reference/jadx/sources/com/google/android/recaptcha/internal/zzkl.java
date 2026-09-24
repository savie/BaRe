package com.google.android.recaptcha.internal;

import defpackage.u48;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzkl {
    public static void zza(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        StringBuilder sbO = u48.o("overflow: ", str, j, "(");
        sbO.append(", ");
        sbO.append(j2);
        sbO.append(")");
        throw new ArithmeticException(sbO.toString());
    }

    public static void zzb(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
