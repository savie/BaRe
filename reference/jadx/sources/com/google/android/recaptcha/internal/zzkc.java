package com.google.android.recaptcha.internal;

import defpackage.e6;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzkc extends zzjs implements Serializable {
    private final MessageDigest zza;
    private final int zzb;
    private final boolean zzc;
    private final String zzd;

    public zzkc(String str, String str2) {
        MessageDigest messageDigestZzc = zzc("SHA-256");
        this.zza = messageDigestZzc;
        this.zzb = messageDigestZzc.getDigestLength();
        this.zzd = "Hashing.sha256()";
        this.zzc = zzd(messageDigestZzc);
    }

    private static MessageDigest zzc(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            e6.e(e);
            return null;
        }
    }

    private static boolean zzd(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    public final String toString() {
        return this.zzd;
    }

    @Override // com.google.android.recaptcha.internal.zzjw
    public final zzjx zzb() {
        zzkb zzkbVar = null;
        if (this.zzc) {
            try {
                return new zzka((MessageDigest) this.zza.clone(), this.zzb, zzkbVar);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new zzka(zzc(this.zza.getAlgorithm()), this.zzb, zzkbVar);
    }
}
