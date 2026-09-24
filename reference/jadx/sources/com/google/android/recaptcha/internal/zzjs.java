package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzjs implements zzjw {
    @Override // com.google.android.recaptcha.internal.zzjw
    public final zzjv zza(CharSequence charSequence, Charset charset) {
        zzjx zzjxVarZzb = zzb();
        byte[] bytes = charSequence.toString().getBytes(charset);
        bytes.getClass();
        ((zzjr) zzjxVarZzb).zza(bytes, 0, bytes.length);
        return zzjxVarZzb.zzb();
    }
}
