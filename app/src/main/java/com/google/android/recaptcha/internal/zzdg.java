package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.g48;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.tu0;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdg extends ws7 implements qt3 {
    Object zza;
    int zzb;
    final /* synthetic */ zzdt zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zzsp zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdg(zzdt zzdtVar, String str, long j, zzsp zzspVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzc = zzdtVar;
        this.zzd = str;
        this.zze = j;
        this.zzf = zzspVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzdg(this.zzc, this.zzd, this.zze, this.zzf, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdg) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws zzbd {
        zzen zzenVar = this.zzb;
        try {
            if (zzenVar != 0) {
                zzen zzenVar2 = (zzen) this.zza;
                lg7.H(obj);
                zzenVar = zzenVar2;
            } else {
                lg7.H(obj);
                zzen zzenVarZzf = this.zzc.zzu(this.zzd).zzf(28);
                long j = this.zze;
                zzdf zzdfVar = new zzdf(this.zzc, this.zzf, zzenVarZzf, null);
                this.zza = zzenVarZzf;
                this.zzb = 1;
                obj = tu0.D(j, zzdfVar, this);
                yx1 yx1Var = yx1.a;
                zzenVar = zzenVarZzf;
                if (obj == yx1Var) {
                    return yx1Var;
                }
            }
            return (zzsr) obj;
        } catch (zzbd e) {
            zzbd zzbdVarZzs = this.zzc.zzs(e, e);
            zzenVar.zzb(zzbdVarZzs);
            throw zzbdVarZzs;
        } catch (g48 e2) {
            zzbd zzbdVarZzs2 = this.zzc.zzs(e2, new zzbd(zzbb.zzc, zzba.zzb, e2.getMessage()));
            zzenVar.zzb(zzbdVarZzs2);
            throw zzbdVarZzs2;
        } catch (Exception e3) {
            zzbd zzbdVarZzs3 = this.zzc.zzs(e3, new zzbd(zzbb.zzc, zzba.zzZ, e3.getMessage()));
            zzenVar.zzb(zzbdVarZzs3);
            throw zzbdVarZzs3;
        }
    }
}
