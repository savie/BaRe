package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.en6;
import defpackage.jv1;
import defpackage.l73;
import defpackage.lg7;
import defpackage.oh4;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xh8;
import defpackage.xx1;
import defpackage.yx1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzs extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzv zzb;
    final /* synthetic */ String zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzv zzvVar, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzvVar;
        this.zzc = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        zzs zzsVar = new zzs(this.zzb, this.zzc, jv1Var);
        zzsVar.zzd = obj;
        return zzsVar;
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzs) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.zza;
        lg7.H(obj);
        if (i == 0) {
            xx1 xx1Var = (xx1) this.zzd;
            ArrayList arrayList = new ArrayList();
            zzv zzvVar = this.zzb;
            zzvVar.zzo().put(this.zzc, arrayList);
            ArrayList arrayList2 = new ArrayList();
            List list = this.zzb.zzb;
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : list) {
                if (((zzy) obj2).zzf()) {
                    arrayList3.add(obj2);
                }
            }
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                arrayList2.add(l73.v(xx1Var, null, new zzr((zzy) it.next(), this.zzc, arrayList, null), 3));
            }
            oh4[] oh4VarArr = (oh4[]) arrayList2.toArray(new oh4[0]);
            oh4[] oh4VarArr2 = (oh4[]) Arrays.copyOf(oh4VarArr, oh4VarArr.length);
            this.zza = 1;
            Object objX = xh8.x(oh4VarArr2, this);
            yx1 yx1Var = yx1.a;
            if (objX == yx1Var) {
                return yx1Var;
            }
        }
        return new en6(this.zzb.zzq(this.zzc));
    }
}
