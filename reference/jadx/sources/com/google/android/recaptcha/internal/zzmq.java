package com.google.android.recaptcha.internal;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.IOException;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzmq extends zzmp {
    @Override // com.google.android.recaptcha.internal.zzmp
    public final void zza(Object obj) {
        ((zzna) obj).zzb.zzg();
    }

    @Override // com.google.android.recaptcha.internal.zzmp
    public final void zzb(zzpy zzpyVar, Map.Entry entry) throws IOException {
        zznb zznbVar = (zznb) entry.getKey();
        zzpw zzpwVar = zzpw.zza;
        switch (zznbVar.zzb.ordinal()) {
            case 0:
                zzpyVar.zzf(zznbVar.zza, ((Double) entry.getValue()).doubleValue());
                break;
            case 1:
                zzpyVar.zzo(zznbVar.zza, ((Float) entry.getValue()).floatValue());
                break;
            case 2:
                zzpyVar.zzt(zznbVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case 3:
                zzpyVar.zzK(zznbVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case 4:
                zzpyVar.zzr(zznbVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 5:
                zzpyVar.zzm(zznbVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case 6:
                zzpyVar.zzk(zznbVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 7:
                zzpyVar.zzb(zznbVar.zza, ((Boolean) entry.getValue()).booleanValue());
                break;
            case 8:
                zzpyVar.zzG(zznbVar.zza, (String) entry.getValue());
                break;
            case XmlPullParser.COMMENT /* 9 */:
                zzpyVar.zzq(zznbVar.zza, entry.getValue(), zzos.zza().zzb(entry.getValue().getClass()));
                break;
            case 10:
                zzpyVar.zzv(zznbVar.zza, entry.getValue(), zzos.zza().zzb(entry.getValue().getClass()));
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                zzpyVar.zzd(zznbVar.zza, (zzle) entry.getValue());
                break;
            case 12:
                zzpyVar.zzI(zznbVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 13:
                zzpyVar.zzr(zznbVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 14:
                zzpyVar.zzx(zznbVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 15:
                zzpyVar.zzz(zznbVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case Argon2.V10 /* 16 */:
                zzpyVar.zzB(zznbVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 17:
                zzpyVar.zzD(zznbVar.zza, ((Long) entry.getValue()).longValue());
                break;
        }
    }
}
