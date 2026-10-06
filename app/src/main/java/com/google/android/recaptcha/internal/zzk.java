package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.bn6;
import defpackage.en6;
import defpackage.jg2;
import defpackage.jv1;
import defpackage.l73;
import defpackage.lg7;
import defpackage.ov2;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;
import defpackage.ze0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzk extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzl zzb;
    final /* synthetic */ zzek zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzsc zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzk(zzl zzlVar, zzek zzekVar, long j, zzsc zzscVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzlVar;
        this.zzc = zzekVar;
        this.zzd = j;
        this.zze = zzscVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        zzk zzkVar = new zzk(this.zzb, this.zzc, this.zzd, this.zze, jv1Var);
        zzkVar.zzf = obj;
        return zzkVar;
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzk) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        zzen zzenVar;
        Object bn6Var;
        if (this.zza != 0) {
            zzenVar = (zzen) this.zzf;
            lg7.H(obj);
        } else {
            lg7.H(obj);
            xx1 xx1Var = (xx1) this.zzf;
            this.zzb.zzb = this.zzc;
            zzek zzekVar = this.zzc;
            zzekVar.zzc(zzekVar.zzd());
            zzen zzenVarZzf = zzekVar.zzf(30);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzb.zzd().iterator();
            while (it.hasNext()) {
                arrayList.add(l73.e(xx1Var, null, new zzj((zze) it.next(), this.zzd, this.zze, null), 3));
            }
            jg2[] jg2VarArr = (jg2[]) arrayList.toArray(new jg2[0]);
            jg2[] jg2VarArr2 = (jg2[]) Arrays.copyOf(jg2VarArr, jg2VarArr.length);
            this.zzf = zzenVarZzf;
            this.zza = 1;
            obj = jg2VarArr2.length == 0 ? ov2.a : new ze0(jg2VarArr2).a(this);
            yx1 yx1Var = yx1.a;
            if (obj == yx1Var) {
                return yx1Var;
            }
            zzenVar = zzenVarZzf;
        }
        List list = (List) obj;
        if (list == null || !list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (!(((en6) it2.next()).a instanceof bn6)) {
                    zzenVar.zza();
                    bn6Var = be8.a;
                }
            }
            zzbd zzbdVar = new zzbd(zzbb.zzb, zzba.zzY, null);
            zzenVar.zzb(zzbdVar);
            bn6Var = new bn6(zzbdVar);
        } else {
            zzbd zzbdVar2 = new zzbd(zzbb.zzb, zzba.zzY, null);
            zzenVar.zzb(zzbdVar2);
            bn6Var = new bn6(zzbdVar2);
        }
        return new en6(bn6Var);
    }
}
