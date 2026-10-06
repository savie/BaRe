package com.google.android.recaptcha.internal;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.google.android.recaptcha.RecaptchaAction;
import com.jcraft.jsch.SftpATTRS;
import defpackage.be8;
import defpackage.el1;
import defpackage.en6;
import defpackage.f77;
import defpackage.g48;
import defpackage.h77;
import defpackage.hl1;
import defpackage.jd4;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.nh4;
import defpackage.oh4;
import defpackage.os4;
import defpackage.pe4;
import defpackage.sz8;
import defpackage.tu0;
import defpackage.x65;
import defpackage.xh8;
import defpackage.yx1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdt {
    private final String zza;
    private final zzek zzb;
    private final zzl zzc;
    private final os4 zzd;
    private final os4 zze;
    private final os4 zzf;
    private final os4 zzg;
    private final os4 zzh;
    private final zzbi zzi;

    public zzdt(String str, zzbi zzbiVar, zzek zzekVar, zzl zzlVar) {
        this.zza = str;
        this.zzi = zzbiVar;
        this.zzb = zzekVar;
        this.zzc = zzlVar;
        int i = zzav.zza;
        this.zzd = jd4.y(zzdm.zza);
        this.zze = jd4.y(zzdn.zza);
        this.zzf = jd4.y(zzdo.zza);
        this.zzg = jd4.y(zzdp.zza);
        this.zzh = jd4.y(zzdq.zza);
    }

    public static final /* synthetic */ zzbr zzd(zzdt zzdtVar) {
        return (zzbr) zzdtVar.zze.getValue();
    }

    public static final /* synthetic */ zzff zzg(zzdt zzdtVar) {
        return (zzff) zzdtVar.zzd.getValue();
    }

    public static final /* synthetic */ zzfj zzh(zzdt zzdtVar) {
        return (zzfj) zzdtVar.zzg.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Application zzr() {
        return (Application) this.zzh.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzbd zzs(Exception exc, zzbd zzbdVar) {
        return !zzx() ? new zzbd(zzbb.zzc, zzba.zzao, exc.getMessage()) : zzbdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzbf zzt() {
        return (zzbf) this.zzf.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzek zzu(String str) {
        zzek zzekVarZza = this.zzb.zza();
        zzekVarZza.zzc(str);
        return zzekVarZza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object zzv(zzsc zzscVar, long j, jv1 jv1Var) throws Throwable {
        zzdj zzdjVar;
        Object objZzc;
        f77 children;
        if (jv1Var instanceof zzdj) {
            zzdjVar = (zzdj) jv1Var;
            int i = zzdjVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzdjVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzdjVar = new zzdj(this, jv1Var);
            }
        } else {
            zzdjVar = new zzdj(this, jv1Var);
        }
        zzdj zzdjVar2 = zzdjVar;
        Object obj = zzdjVar2.zzb;
        int i2 = zzdjVar2.zzd;
        yx1 yx1Var = yx1.a;
        if (i2 == 0) {
            lg7.H(obj);
            zzy(zzscVar.zzO());
            Iterator it = zzw().iterator();
            while (it.hasNext()) {
                this.zzc.zzf((zze) it.next());
            }
            zzl zzlVar = this.zzc;
            zzek zzekVar = this.zzb;
            zzdjVar2.zza = this;
            zzdjVar2.zzd = 1;
            objZzc = zzlVar.zzc(j, zzscVar, zzekVar, zzdjVar2);
            if (objZzc != yx1Var) {
            }
            return yx1Var;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Throwable th = (Throwable) zzdjVar2.zza;
            lg7.H(obj);
            throw th;
        }
        this = (zzdt) zzdjVar2.zza;
        lg7.H(obj);
        objZzc = ((en6) obj).a;
        Throwable thA = en6.a(objZzc);
        if (thA == null) {
            return be8.a;
        }
        oh4 oh4Var = (oh4) this.zzi.zzd().d().get(nh4.b);
        if (oh4Var != null && (children = oh4Var.getChildren()) != null) {
            Iterator it2 = children.iterator();
            while (it2.hasNext()) {
                ((oh4) it2.next()).cancel(null);
            }
        }
        List listC0 = h77.C0(sz8.s(this.zzi.zzd().d()).getChildren());
        zzdjVar2.zza = thA;
        zzdjVar2.zzd = 2;
        if (xh8.w(listC0, zzdjVar2) != yx1Var) {
            throw thA;
        }
        return yx1Var;
    }

    private final List zzw() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzv(zzr(), this.zzb.zza(), this.zzi, null, 8, null));
        arrayList.add(new zzja(this.zzb, this.zzi));
        return el1.v1(arrayList);
    }

    private final boolean zzx() {
        NetworkCapabilities networkCapabilities;
        int i = zzav.zza;
        try {
            Object systemService = zzr().getSystemService("connectivity");
            systemService.getClass();
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            Network activeNetwork = connectivityManager.getActiveNetwork();
            return (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasCapability(16)) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static final void zzy(String str) throws zzbd {
        try {
            zzrv zzrvVarZzj = zzrv.zzj(zzbt.zza(str));
            int i = zzav.zza;
            ((zzfu) jd4.y(zzde.zza).getValue()).zza(zzrvVarZzj);
        } catch (Exception e) {
            throw new zzbd(zzbb.zzl, zzba.zzan, e.getMessage());
        }
    }

    public final zzsp zzi(RecaptchaAction recaptchaAction, zzsi zzsiVar, zzsc zzscVar) {
        zzso zzsoVarZzf = zzsp.zzf();
        zzsoVarZzf.zzs(this.zza);
        zzsoVarZzf.zze(recaptchaAction.getAction());
        zzsoVarZzf.zzf(zzscVar.zzN());
        zzsoVarZzf.zzq(zzscVar.zzM());
        zzsoVarZzf.zzr(zzsiVar);
        return (zzsp) zzsoVarZzf.zzk();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzl(String str, long j, jv1 jv1Var) throws zzbd {
        zzdd zzddVar;
        Exception e;
        zzen zzenVar;
        g48 e2;
        zzbd e3;
        if (jv1Var instanceof zzdd) {
            zzddVar = (zzdd) jv1Var;
            int i = zzddVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzddVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzddVar = new zzdd(this, jv1Var);
            }
        } else {
            zzddVar = new zzdd(this, jv1Var);
        }
        Object obj = zzddVar.zza;
        int i2 = zzddVar.zzc;
        if (i2 == 0) {
            lg7.H(obj);
            zzen zzenVarZzf = zzu(str).zzf(27);
            try {
                zzl zzlVar = this.zzc;
                zzddVar.zzd = zzenVarZzf;
                zzddVar.zzc = 1;
                Object objZzb = zzlVar.zzb(str, j, zzddVar);
                yx1 yx1Var = yx1.a;
                if (objZzb == yx1Var) {
                    return yx1Var;
                }
                obj = objZzb;
                zzenVar = zzenVarZzf;
            } catch (zzbd e4) {
                e3 = e4;
                zzenVar = zzenVarZzf;
                zzenVar.zzb(e3);
                throw e3;
            } catch (g48 e5) {
                e2 = e5;
                zzenVar = zzenVarZzf;
                zzbd zzbdVar = new zzbd(zzbb.zzb, zzba.zzb, e2.getMessage());
                zzenVar.zzb(zzbdVar);
                throw zzbdVar;
            } catch (Exception e6) {
                e = e6;
                zzenVar = zzenVarZzf;
                zzbd zzbdVar2 = new zzbd(zzbb.zzb, zzba.zzaa, e.getMessage());
                zzenVar.zzb(zzbdVar2);
                throw zzbdVar2;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzenVar = zzddVar.zzd;
            try {
                lg7.H(obj);
            } catch (zzbd e7) {
                e3 = e7;
                zzenVar.zzb(e3);
                throw e3;
            } catch (g48 e8) {
                e2 = e8;
                zzbd zzbdVar3 = new zzbd(zzbb.zzb, zzba.zzb, e2.getMessage());
                zzenVar.zzb(zzbdVar3);
                throw zzbdVar3;
            } catch (Exception e9) {
                e = e9;
                zzbd zzbdVar4 = new zzbd(zzbb.zzb, zzba.zzaa, e.getMessage());
                zzenVar.zzb(zzbdVar4);
                throw zzbdVar4;
            }
        }
        zzsi zzsiVar = (zzsi) obj;
        zzenVar.zza();
        return zzsiVar;
    }

    public final Object zzm(zzsp zzspVar, String str, long j, jv1 jv1Var) {
        return l73.G(this.zzi.zza().d(), new zzdg(this, str, j, zzspVar, null), jv1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzn(zzsc zzscVar, long j, jv1 jv1Var) throws zzbd {
        zzdk zzdkVar;
        if (jv1Var instanceof zzdk) {
            zzdkVar = (zzdk) jv1Var;
            int i = zzdkVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzdkVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzdkVar = new zzdk(this, jv1Var);
            }
        } else {
            zzdkVar = new zzdk(this, jv1Var);
        }
        Object obj = zzdkVar.zza;
        int i2 = zzdkVar.zzc;
        try {
            if (i2 == 0) {
                lg7.H(obj);
                zzdl zzdlVar = new zzdl(this, zzscVar, j, null);
                zzdkVar.zzc = 1;
                Object objD = tu0.D(j, zzdlVar, zzdkVar);
                yx1 yx1Var = yx1.a;
                if (objD == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
            return be8.a;
        } catch (zzbd e) {
            throw e;
        } catch (g48 e2) {
            throw new zzbd(zzbb.zzb, zzba.zzb, e2.getMessage());
        } catch (Exception e3) {
            throw new zzbd(zzbb.zzb, zzba.zzap, e3.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzo(long j, jv1 jv1Var) throws zzbd {
        zzdr zzdrVar;
        zzen zzenVarZzf;
        Exception e;
        zzdt zzdtVar;
        zzen zzenVar;
        g48 e2;
        zzbd e3;
        if (jv1Var instanceof zzdr) {
            zzdrVar = (zzdr) jv1Var;
            int i = zzdrVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzdrVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzdrVar = new zzdr(this, jv1Var);
            }
        } else {
            zzdrVar = new zzdr(this, jv1Var);
        }
        Object obj = zzdrVar.zza;
        int i2 = zzdrVar.zzc;
        if (i2 == 0) {
            lg7.H(obj);
            zzenVarZzf = this.zzb.zzf(22);
            try {
                zzds zzdsVar = new zzds(this, zzenVarZzf, null);
                zzdrVar.zzd = this;
                zzdrVar.zze = zzenVarZzf;
                zzdrVar.zzc = 1;
                Object objD = tu0.D(j, zzdsVar, zzdrVar);
                yx1 yx1Var = yx1.a;
                if (objD == yx1Var) {
                    return yx1Var;
                }
                zzdtVar = this;
                zzenVar = zzenVarZzf;
                obj = objD;
            } catch (zzbd e4) {
                e3 = e4;
                if (pe4.d(e3.zzb(), zzbb.zzc)) {
                    e3 = this.zzs(e3, e3);
                }
                zzenVarZzf.zzb(e3);
                throw e3;
            } catch (g48 e5) {
                e2 = e5;
                zzdtVar = this;
                zzenVar = zzenVarZzf;
                zzbd zzbdVarZzs = zzdtVar.zzs(e2, new zzbd(zzbb.zzc, zzba.zzb, e2.getMessage()));
                zzenVar.zzb(zzbdVarZzs);
                throw zzbdVarZzs;
            } catch (Exception e6) {
                e = e6;
                zzdtVar = this;
                zzenVar = zzenVarZzf;
                zzbd zzbdVarZzs2 = zzdtVar.zzs(e, new zzbd(zzbb.zzc, zzba.zzaw, e.getMessage()));
                zzenVar.zzb(zzbdVarZzs2);
                throw zzbdVarZzs2;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzenVar = zzdrVar.zze;
            zzdtVar = zzdrVar.zzd;
            try {
                lg7.H(obj);
            } catch (zzbd e7) {
                e3 = e7;
                zzenVarZzf = zzenVar;
                this = zzdtVar;
                if (pe4.d(e3.zzb(), zzbb.zzc)) {
                    e3 = this.zzs(e3, e3);
                }
                zzenVarZzf.zzb(e3);
                throw e3;
            } catch (g48 e8) {
                e2 = e8;
                zzbd zzbdVarZzs3 = zzdtVar.zzs(e2, new zzbd(zzbb.zzc, zzba.zzb, e2.getMessage()));
                zzenVar.zzb(zzbdVarZzs3);
                throw zzbdVarZzs3;
            } catch (Exception e9) {
                e = e9;
                zzbd zzbdVarZzs4 = zzdtVar.zzs(e, new zzbd(zzbb.zzc, zzba.zzaw, e.getMessage()));
                zzenVar.zzb(zzbdVarZzs4);
                throw zzbdVarZzs4;
            }
        }
        return (zzsc) obj;
    }

    public final void zzq(String str, zzsr zzsrVar) {
        zzen zzenVarZzf = zzu(str).zzf(29);
        try {
            List<zzst> listZzk = zzsrVar.zzk();
            int iQ0 = x65.q0(hl1.G0(listZzk, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
            for (zzst zzstVar : listZzk) {
                linkedHashMap.put(zzstVar.zzg(), zzstVar.zzi());
            }
            zzt().zzb(linkedHashMap);
            this.zzc.zzg(zzsrVar);
            zzenVarZzf.zza();
        } catch (zzbd e) {
            zzenVarZzf.zzb(e);
        } catch (Exception e2) {
            zzenVarZzf.zzb(new zzbd(zzbb.zzb, zzba.zzas, e2.getMessage()));
        }
    }
}
