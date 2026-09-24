package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.be8;
import defpackage.jv1;
import defpackage.kj5;
import defpackage.l0;
import defpackage.lg7;
import defpackage.mj5;
import defpackage.pe4;
import defpackage.x50;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcb {
    private Object zza;
    private final kj5 zzb = new mj5();

    public zzcb(Object obj) {
        this.zza = obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zza(Object obj, jv1 jv1Var) {
        zzby zzbyVar;
        kj5 kj5Var;
        if (jv1Var instanceof zzby) {
            zzbyVar = (zzby) jv1Var;
            int i = zzbyVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzbyVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzbyVar = new zzby(this, jv1Var);
            }
        } else {
            zzbyVar = new zzby(this, jv1Var);
        }
        Object obj2 = zzbyVar.zzb;
        int i2 = zzbyVar.zzd;
        if (i2 == 0) {
            lg7.H(obj2);
            kj5Var = this.zzb;
            zzbyVar.zze = this;
            zzbyVar.zzf = (zzje) obj;
            zzbyVar.zza = kj5Var;
            zzbyVar.zzd = 1;
            Object objA = kj5Var.a(zzbyVar);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kj5 kj5Var2 = (kj5) zzbyVar.zza;
            obj = zzbyVar.zzf;
            zzcb zzcbVar = zzbyVar.zze;
            lg7.H(obj2);
            kj5Var = kj5Var2;
            this = zzcbVar;
        }
        try {
            return Boolean.valueOf(pe4.d(this.zza, obj));
        } finally {
            kj5Var.b(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzb(Object[] objArr, jv1 jv1Var) {
        zzbz zzbzVar;
        kj5 kj5Var;
        if (jv1Var instanceof zzbz) {
            zzbzVar = (zzbz) jv1Var;
            int i = zzbzVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzbzVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzbzVar = new zzbz(this, jv1Var);
            }
        } else {
            zzbzVar = new zzbz(this, jv1Var);
        }
        Object obj = zzbzVar.zzb;
        int i2 = zzbzVar.zzd;
        if (i2 == 0) {
            lg7.H(obj);
            kj5Var = this.zzb;
            zzbzVar.zze = this;
            zzbzVar.zzf = (zzje[]) objArr;
            zzbzVar.zza = kj5Var;
            zzbzVar.zzd = 1;
            Object objA = kj5Var.a(zzbzVar);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kj5 kj5Var2 = (kj5) zzbzVar.zza;
            objArr = zzbzVar.zzf;
            zzcb zzcbVar = zzbzVar.zze;
            lg7.H(obj);
            kj5Var = kj5Var2;
            this = zzcbVar;
        }
        try {
            return Boolean.valueOf(x50.e0(objArr, this.zza));
        } finally {
            kj5Var.b(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzc(Object obj, jv1 jv1Var) {
        zzca zzcaVar;
        kj5 kj5Var;
        if (jv1Var instanceof zzca) {
            zzcaVar = (zzca) jv1Var;
            int i = zzcaVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzcaVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzcaVar = new zzca(this, jv1Var);
            }
        } else {
            zzcaVar = new zzca(this, jv1Var);
        }
        Object obj2 = zzcaVar.zzb;
        int i2 = zzcaVar.zzd;
        if (i2 == 0) {
            lg7.H(obj2);
            kj5Var = this.zzb;
            zzcaVar.zze = this;
            zzcaVar.zzf = (zzje) obj;
            zzcaVar.zza = kj5Var;
            zzcaVar.zzd = 1;
            Object objA = kj5Var.a(zzcaVar);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kj5 kj5Var2 = (kj5) zzcaVar.zza;
            obj = zzcaVar.zzf;
            zzcb zzcbVar = zzcaVar.zze;
            lg7.H(obj2);
            kj5Var = kj5Var2;
            this = zzcbVar;
        }
        try {
            this.zza = obj;
            return be8.a;
        } finally {
            kj5Var.b(null);
        }
    }
}
