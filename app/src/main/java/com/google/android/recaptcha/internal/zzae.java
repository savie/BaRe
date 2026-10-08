package com.google.android.recaptcha.internal;

import android.content.Context;
import com.jcraft.jsch.SftpATTRS;
import defpackage.be8;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.xx1;
import defpackage.yx1;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzae implements zzy {
    private final zzek zza;
    private final Context zzb;
    private final zzan zzc;
    private boolean zzd = true;
    private String zze = "";
    private final zzbs zzf;

    public zzae(zzek zzekVar, Context context, xx1 xx1Var, zzan zzanVar, zzbs zzbsVar) {
        this.zza = zzekVar;
        this.zzb = context;
        this.zzc = zzanVar;
        this.zzf = zzbsVar;
    }

    private static final String zzi(zzle zzleVar) {
        zzkh zzkhVarZzg = zzkh.zzg();
        byte[] bArrZzl = zzleVar.zzl();
        byte[] bArrZzd = zzjz.zza().zza(zzkhVarZzg.zzi(bArrZzl, 0, bArrZzl.length), StandardCharsets.UTF_8).zzd();
        zzle zzleVarZzk = zzle.zzk(bArrZzd, 0, bArrZzd.length);
        zzkh zzkhVarZzh = zzkh.zzh();
        byte[] bArrZzl2 = zzleVarZzk.zzl();
        return zzkhVarZzh.zzi(bArrZzl2, 0, bArrZzl2.length);
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final zzek zzb() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final Object zzc(String str, jv1 jv1Var) {
        return l73.k(new zzac(this, str, null), jv1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzy
    public final Object zzd(zzse zzseVar, jv1 jv1Var) {
        zzad zzadVar;
        zzen zzenVarZzc;
        zzen zzenVar;
        if (jv1Var instanceof zzad) {
            zzadVar = (zzad) jv1Var;
            int i = zzadVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzadVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzadVar = new zzad(this, jv1Var);
            }
        } else {
            zzadVar = new zzad(this, jv1Var);
        }
        Object obj = zzadVar.zzb;
        int i2 = zzadVar.zzd;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        if (i2 != 0) {
            if (i2 == 1) {
                zzen zzenVar2 = zzadVar.zze;
                zzae zzaeVar = (zzae) zzadVar.zza;
                lg7.H(obj);
                zzenVarZzc = zzenVar2;
                this = zzaeVar;
            } else {
                if (i2 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                zzenVar = (zzen) zzadVar.zza;
                lg7.H(obj);
            }
            zzenVar.zza();
            return be8Var;
        }
        lg7.H(obj);
        zzenVarZzc = zzz.zzc(this);
        if (this.zzf.zza(this.zzb) != 3 || zzseVar.zzf() == 0) {
            this.zzd = false;
            zzenVarZzc.zzb(new zzbd(zzbb.zzb, zzba.zzab, null));
            return be8Var;
        }
        this.zze = zzi(zzseVar.zzg());
        zzan zzanVar = this.zzc;
        long jZzf = zzseVar.zzf();
        zzadVar.zza = this;
        zzadVar.zze = zzenVarZzc;
        zzadVar.zzd = 1;
        if (zzanVar.zzd(jZzf, zzadVar) != yx1Var) {
        }
        return yx1Var;
        zzan zzanVar2 = this.zzc;
        zzadVar.zza = zzenVarZzc;
        zzadVar.zze = null;
        zzadVar.zzd = 2;
        if (zzanVar2.zze(zzadVar) != yx1Var) {
            zzenVar = zzenVarZzc;
            zzenVar.zza();
            return be8Var;
        }
        return yx1Var;
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final void zze(zzsr zzsrVar) {
        this.zze = zzi(zzsrVar.zzf());
    }

    @Override // com.google.android.recaptcha.internal.zzy
    public final boolean zzf() {
        return this.zzd;
    }
}
