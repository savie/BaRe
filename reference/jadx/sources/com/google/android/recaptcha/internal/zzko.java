package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.internal.zzkn;
import com.google.android.recaptcha.internal.zzko;
import defpackage.e6;
import defpackage.eq3;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzko<MessageType extends zzko<MessageType, BuilderType>, BuilderType extends zzkn<MessageType, BuilderType>> implements zzoi {
    protected int zza = 0;

    public static void zzc(Iterable iterable, List list) {
        zzkn.zzd(iterable, list);
    }

    public int zza(zzow zzowVar) {
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzoi
    public final zzle zzb() {
        try {
            int iZzo = zzo();
            zzle zzleVar = zzle.zzb;
            byte[] bArr = new byte[iZzo];
            zzlk zzlkVar = new zzlk(bArr, 0, iZzo);
            zze(zzlkVar);
            zzlkVar.zzC();
            return new zzlc(bArr);
        } catch (IOException e) {
            e6.i(eq3.k("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
            return null;
        }
    }

    public final byte[] zzd() {
        try {
            int iZzo = zzo();
            byte[] bArr = new byte[iZzo];
            zzlk zzlkVar = new zzlk(bArr, 0, iZzo);
            zze(zzlkVar);
            zzlkVar.zzC();
            return bArr;
        } catch (IOException e) {
            e6.i(eq3.k("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
            return null;
        }
    }
}
