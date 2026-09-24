package com.google.android.recaptcha.internal;

import defpackage.an1;
import defpackage.be8;
import defpackage.bn1;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.lh6;
import defpackage.qt3;
import defpackage.tu0;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzam extends ws7 implements qt3 {
    Object zza;
    int zzb;
    final /* synthetic */ zzan zzc;
    final /* synthetic */ zzen zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzam(zzan zzanVar, zzen zzenVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzc = zzanVar;
        this.zzd = zzenVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzam(this.zzc, this.zzd, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzam) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lh6 lh6Var = this.zzb;
        try {
            if (lh6Var != 0) {
                lh6 lh6Var2 = (lh6) this.zza;
                lg7.H(obj);
                lh6Var = lh6Var2;
                this = this;
            } else {
                lg7.H(obj);
                lh6 lh6Var3 = new lh6();
                zzal zzalVar = new zzal(this.zzc, this.zzd, lh6Var3, null);
                this.zza = lh6Var3;
                this.zzb = 1;
                Object objD = tu0.D(60000L, zzalVar, this);
                yx1 yx1Var = yx1.a;
                lh6Var = lh6Var3;
                this = objD;
                if (objD == yx1Var) {
                    return yx1Var;
                }
            }
        } catch (Exception e) {
            an1 an1VarZzf = this.zzc.zzf();
            Throwable th = (Throwable) lh6Var.a;
            if (th == null) {
                th = e;
            }
            ((bn1) an1VarZzf).Y(th);
            this.zzc.zze = zzao.zza;
            this.zzd.zzb(new zzbd(zzbb.zzb, zzba.zza, e.getMessage()));
        }
        return be8.a;
    }
}
