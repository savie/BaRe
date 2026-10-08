package com.google.android.recaptcha.internal;

import android.os.Build;
import defpackage.pw5;
import defpackage.x65;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzjb {
    public static final Map zza() {
        pw5[] pw5VarArr = {new pw5(-4, zzba.zzo), new pw5(-12, zzba.zzp), new pw5(-6, zzba.zzk), new pw5(-11, zzba.zzm), new pw5(-13, zzba.zzq), new pw5(-14, zzba.zzr), new pw5(-2, zzba.zzl), new pw5(-7, zzba.zzs), new pw5(-5, zzba.zzt), new pw5(-9, zzba.zzu), new pw5(-8, zzba.zzE), new pw5(-15, zzba.zzn), new pw5(-1, zzba.zzv), new pw5(-3, zzba.zzx), new pw5(-10, zzba.zzy)};
        LinkedHashMap linkedHashMap = new LinkedHashMap(x65.q0(15));
        x65.s0(linkedHashMap, pw5VarArr);
        linkedHashMap.put(-16, zzba.zzw);
        int i = Build.VERSION.SDK_INT;
        if (i >= 27) {
            linkedHashMap.put(1, zzba.zzA);
            linkedHashMap.put(2, zzba.zzB);
            linkedHashMap.put(0, zzba.zzC);
            linkedHashMap.put(3, zzba.zzD);
        }
        if (i >= 29) {
            linkedHashMap.put(4, zzba.zzz);
        }
        return linkedHashMap;
    }
}
