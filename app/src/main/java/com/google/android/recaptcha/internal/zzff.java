package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaException;
import defpackage.jd4;
import defpackage.jv1;
import defpackage.l73;
import defpackage.os4;
import defpackage.uq7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzff {
    private final os4 zza;
    private final os4 zzb;
    private final os4 zzc;

    public zzff() {
        int i = zzav.zza;
        this.zza = jd4.y(zzfc.zza);
        this.zzb = jd4.y(zzfd.zza);
        this.zzc = jd4.y(zzfe.zza);
    }

    public static final /* synthetic */ zzfk zzb(zzff zzffVar) {
        return (zzfk) zzffVar.zza.getValue();
    }

    public static /* synthetic */ Object zze(zzff zzffVar, zzsc zzscVar, zzek zzekVar, jv1 jv1Var) throws Exception {
        try {
            String strZzl = zzscVar.zzl();
            String strZzM = zzscVar.zzM();
            zzaq zzaqVarZzf = zzffVar.zzf();
            String strZzb = null;
            if (zzaqVarZzf != null && zzaqVarZzf.zzd(strZzM)) {
                zzen zzenVarZzf = zzekVar.zzf(25);
                try {
                    String strZza = zzffVar.zzf().zza(strZzM);
                    if (strZza != null) {
                        zzenVarZzf.zza();
                        strZzb = strZza;
                    } else {
                        zzenVarZzf.zzb(new zzbd(zzbb.zzk, zzba.zzS, null));
                    }
                } catch (Exception e) {
                    zzenVarZzf.zzb(new zzbd(zzbb.zzk, zzba.zzR, e.getMessage()));
                }
            }
            if (strZzb == null) {
                zzaq zzaqVarZzf2 = zzffVar.zzf();
                if (zzaqVarZzf2 != null) {
                    zzaqVarZzf2.zzb();
                }
                zzen zzenVarZzf2 = zzekVar.zzf(23);
                try {
                    strZzb = zzffVar.zzg().zzb(strZzl);
                    zzenVarZzf2.zza();
                    zzen zzenVarZzf3 = zzekVar.zzf(24);
                    try {
                        zzaq zzaqVarZzf3 = zzffVar.zzf();
                        if (zzaqVarZzf3 != null) {
                            zzaqVarZzf3.zzc(strZzM, strZzb);
                        }
                        zzenVarZzf3.zza();
                    } catch (Exception e2) {
                        zzenVarZzf3.zzb(new zzbd(zzbb.zzk, zzba.zzT, e2.getMessage()));
                    }
                } catch (zzbd e3) {
                    zzenVarZzf2.zzb(e3);
                    throw e3;
                }
            }
            return uq7.T(zzscVar.zzk(), "JAVASCRIPT_TAG", strZzb);
        } catch (Exception e4) {
            if (e4 instanceof zzbd) {
                throw e4;
            }
            throw new zzbd(zzbb.zzb, zzba.zzL, e4.getMessage());
        }
    }

    private final zzaq zzf() {
        return (zzaq) this.zzb.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzey zzg() {
        return (zzey) this.zzc.getValue();
    }

    public final Object zzc(String str, zzto zztoVar, jv1 jv1Var) throws RecaptchaException {
        return l73.k(new zzfb(this, str, zztoVar, null), jv1Var);
    }

    public final Object zzd(zzsc zzscVar, zzek zzekVar, jv1 jv1Var) throws zzbd {
        return zze(this, zzscVar, zzekVar, jv1Var);
    }
}
