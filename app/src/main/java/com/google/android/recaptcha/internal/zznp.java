package com.google.android.recaptcha.internal;

import defpackage.c6;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zznp implements Map.Entry {
    private final Map.Entry zza;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzns) this.zza.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzoi) {
            return ((zzns) this.zza.getValue()).zzc((zzoi) obj);
        }
        c6.f("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        return null;
    }

    public final zzns zza() {
        return (zzns) this.zza.getValue();
    }
}
