package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.jd4;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.os4;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfj {
    private final os4 zza;

    public zzfj() {
        int i = zzav.zza;
        this.zza = jd4.y(zzfi.zza);
    }

    public static final /* synthetic */ zzex zza(zzfj zzfjVar) {
        return (zzex) zzfjVar.zza.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object zzc(zzfj zzfjVar, zzbr zzbrVar, zzsp zzspVar, jv1 jv1Var) {
        zzfg zzfgVar;
        if (jv1Var instanceof zzfg) {
            zzfgVar = (zzfg) jv1Var;
            int i = zzfgVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzfgVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzfgVar = new zzfg(zzfjVar, jv1Var);
            }
        } else {
            zzfgVar = new zzfg(zzfjVar, jv1Var);
        }
        Object obj = zzfgVar.zza;
        int i2 = zzfgVar.zzc;
        if (i2 != 0) {
            if (i2 == 1) {
                lg7.H(obj);
                return obj;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        zzfh zzfhVar = new zzfh(zzfjVar, zzbrVar, zzspVar, null);
        zzfgVar.zzc = 1;
        Object objK = l73.k(zzfhVar, zzfgVar);
        yx1 yx1Var = yx1.a;
        return objK == yx1Var ? yx1Var : objK;
    }

    public final Object zzb(zzbr zzbrVar, zzsp zzspVar, jv1 jv1Var) {
        return zzc(this, zzbrVar, zzspVar, jv1Var);
    }
}
