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
final class zzh extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzl zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzh(zzl zzlVar, String str, long j, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzlVar;
        this.zzc = str;
        this.zzd = j;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        zzh zzhVar = new zzh(this.zzb, this.zzc, this.zzd, jv1Var);
        zzhVar.zze = obj;
        return zzhVar;
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzh) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        zzen zzenVarZzf;
        if (this.zza != 0) {
            zzenVarZzf = (zzen) this.zze;
            lg7.H(obj);
        } else {
            lg7.H(obj);
            xx1 xx1Var = (xx1) this.zze;
            zzek zzekVar = this.zzb.zzb;
            if (zzekVar != null) {
                zzekVar.zzc(this.zzc);
                zzenVarZzf = zzekVar.zzf(31);
            } else {
                zzenVarZzf = null;
            }
            ArrayList arrayList = new ArrayList();
            for (zze zzeVar : this.zzb.zzd()) {
                if (zzeVar.zzl()) {
                    arrayList.add(l73.e(xx1Var, null, new zzg(zzeVar, this.zzc, this.zzd, null), 3));
                }
            }
            jg2[] jg2VarArr = (jg2[]) arrayList.toArray(new jg2[0]);
            jg2[] jg2VarArr2 = (jg2[]) Arrays.copyOf(jg2VarArr, jg2VarArr.length);
            this.zze = zzenVarZzf;
            this.zza = 1;
            obj = jg2VarArr2.length == 0 ? ov2.a : new ze0(jg2VarArr2).a(this);
            yx1 yx1Var = yx1.a;
            if (obj == yx1Var) {
                return yx1Var;
            }
        }
        String str = this.zzc;
        zzsh zzshVarZzf = zzsi.zzf();
        zzshVarZzf.zze(str);
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            Object obj2 = ((en6) it.next()).a;
            if (!(obj2 instanceof bn6)) {
                zzshVarZzf.zzh((zzsi) obj2);
            }
        }
        zzsi zzsiVar = (zzsi) zzshVarZzf.zzk();
        if (zzenVarZzf != null) {
            zzenVarZzf.zza();
        }
        return zzsiVar;
    }
}
