package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.el1;
import defpackage.en6;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.ov2;
import defpackage.yx1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzl {
    private final List zza;
    private zzek zzb;

    public /* synthetic */ zzl(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this.zza = new ArrayList();
        zze[] zzeVarArr = (zze[]) ov2.a.toArray(new zze[0]);
        zzh((zze[]) Arrays.copyOf(zzeVarArr, zzeVarArr.length));
    }

    private final void zzh(zze... zzeVarArr) {
        el1.L0(this.zza, zzeVarArr);
    }

    public final Object zzb(String str, long j, jv1 jv1Var) {
        return l73.k(new zzh(this, str, j, null), jv1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzc(long j, zzsc zzscVar, zzek zzekVar, jv1 jv1Var) {
        zzi zziVar;
        if (jv1Var instanceof zzi) {
            zziVar = (zzi) jv1Var;
            int i = zziVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zziVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zziVar = new zzi(this, jv1Var);
            }
        } else {
            zziVar = new zzi(this, jv1Var);
        }
        Object objK = zziVar.zza;
        int i2 = zziVar.zzc;
        if (i2 == 0) {
            lg7.H(objK);
            zzk zzkVar = new zzk(this, zzekVar, j, zzscVar, null);
            zziVar.zzc = 1;
            objK = l73.k(zzkVar, zziVar);
            yx1 yx1Var = yx1.a;
            if (objK == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(objK);
        }
        return ((en6) objK).a;
    }

    public final List zzd() {
        return this.zza;
    }

    public final void zzf(zze... zzeVarArr) {
        zzh((zze[]) Arrays.copyOf(zzeVarArr, 1));
    }

    public final void zzg(zzsr zzsrVar) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zze) it.next()).zzk(zzsrVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzl() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
