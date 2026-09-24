package com.google.android.recaptcha.internal;

import defpackage.g84;
import defpackage.jd4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgc {
    public static final Class zza(Object obj) throws zzce {
        Class cls;
        if (obj instanceof Class) {
            return (Class) obj;
        }
        if (!(obj instanceof Integer)) {
            if (!(obj instanceof String)) {
                g84.d(4, 5, null);
                return null;
            }
            try {
                String str = (String) obj;
                Class<?> cls2 = Class.forName(str);
                int i = zzav.zza;
                if (((zzfu) jd4.y(zzgb.zza).getValue()).zzb(str)) {
                    return cls2;
                }
                g84.d(6, 47, null);
                return null;
            } catch (Exception e) {
                g84.d(6, 8, e);
                return null;
            }
        }
        int iIntValue = ((Number) obj).intValue();
        if (iIntValue == 1) {
            cls = Integer.TYPE;
        } else if (iIntValue == 2) {
            cls = Short.TYPE;
        } else if (iIntValue == 3) {
            cls = Byte.TYPE;
        } else if (iIntValue == 4) {
            cls = Long.TYPE;
        } else if (iIntValue == 5) {
            cls = Character.TYPE;
        } else if (iIntValue == 6) {
            cls = Float.TYPE;
        } else if (iIntValue == 7) {
            cls = Double.TYPE;
        } else {
            cls = iIntValue == 8 ? Boolean.TYPE : null;
        }
        if (cls != null) {
            return cls;
        }
        g84.d(4, 6, null);
        return null;
    }
}
