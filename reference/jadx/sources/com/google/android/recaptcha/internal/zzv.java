package com.google.android.recaptcha.internal;

import android.content.Context;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.jcraft.jsch.SftpATTRS;
import defpackage.en6;
import defpackage.fl1;
import defpackage.hl1;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.mz3;
import defpackage.pv2;
import defpackage.q;
import defpackage.x65;
import defpackage.xx1;
import defpackage.yx1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzv extends zze {
    private final zzek zza;
    private final List zzb;
    private zzle zzc;
    private final Map zzd;

    public zzv(Context context, zzek zzekVar, zzbi zzbiVar, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        zzab zzabVar = new zzab(zzekVar.zza());
        zzp zzpVar = new zzp(zzekVar.zza());
        zzm zzmVar = new zzm(zzekVar.zza(), context.getContentResolver());
        zzn zznVar = new zzn(zzekVar.zza());
        zzek zzekVarZza = zzekVar.zza();
        xx1 xx1VarZzc = zzbiVar.zzc();
        List listA0 = fl1.A0(zzabVar, zzpVar, zzmVar, zznVar, new zzae(zzekVarZza, context, xx1VarZzc, new zzan(context, xx1VarZzc, zzekVarZza, IntegrityManagerFactory.createStandard(context), 28800000L), new zzbs(mz3.b)));
        this.zza = zzekVar;
        this.zzb = listA0;
        this.zzd = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzsi zzq(String str) {
        Map linkedHashMap;
        List<zzaa> list = (List) this.zzd.remove(str);
        if (list != null) {
            int iQ0 = x65.q0(hl1.G0(list, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            linkedHashMap = new LinkedHashMap(iQ0);
            for (zzaa zzaaVar : list) {
                linkedHashMap.put(Integer.valueOf(zzaaVar.zzb()), zzaaVar);
            }
        } else {
            linkedHashMap = pv2.a;
        }
        zzsz zzszVarZzs = zzs(linkedHashMap, str);
        zzsh zzshVarZzf = zzsi.zzf();
        zzshVarZzf.zze(str);
        zzsf zzsfVarZzf = zzsg.zzf();
        byte[] bArrZzd = zzszVarZzs.zzd();
        zzsfVarZzf.zze(zzkh.zzh().zzi(bArrZzd, 0, bArrZzd.length));
        zzshVarZzf.zzf(zzsfVarZzf);
        return (zzsi) zzshVarZzf.zzk();
    }

    private final zzsx zzr(zzaa zzaaVar) {
        zzle zzleVar;
        zzsv zzsvVarZzf = zzsx.zzf();
        zzsvVarZzf.zzq(3);
        if (zzaaVar instanceof zzx) {
            zzti zztiVarZza = ((zzx) zzaaVar).zza();
            zzle zzleVar2 = this.zzc;
            zzleVar = zzleVar2 != null ? zzleVar2 : null;
            byte[] bArrZzd = zztiVarZza.zzd();
            zzsvVarZzf.zzf(zzcf.zza(zzkh.zzh().zzi(bArrZzd, 0, bArrZzd.length), zzleVar));
        } else {
            if (!(zzaaVar instanceof zzw)) {
                q.j();
                return null;
            }
            zzte zzteVarZza = ((zzw) zzaaVar).zza();
            zzle zzleVar3 = this.zzc;
            zzleVar = zzleVar3 != null ? zzleVar3 : null;
            byte[] bArrZzd2 = zzteVarZza.zzd();
            zzsvVarZzf.zze(zzcf.zza(zzkh.zzh().zzi(bArrZzd2, 0, bArrZzd2.length), zzleVar));
        }
        return (zzsx) zzsvVarZzf.zzk();
    }

    private final zzsz zzs(Map map, String str) {
        zzsy zzsyVarZzf = zzsz.zzf();
        zzsyVarZzf.zzq(str);
        List list = this.zzb;
        ArrayList<zzy> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((zzy) obj).zzf()) {
                arrayList.add(obj);
            }
        }
        for (zzy zzyVar : arrayList) {
            if (!map.containsKey(Integer.valueOf(zzyVar.zza()))) {
                int iZza = zzyVar.zza();
                zztd zztdVarZzf = zzte.zzf();
                zztdVarZzf.zzf(iZza);
                zztdVarZzf.zzr(13);
                zztdVarZzf.zzq(27);
                zzsyVarZzf.zzf(zzr(new zzw(iZza, (zzte) zztdVarZzf.zzk())));
            }
        }
        Collection collectionValues = map.values();
        ArrayList arrayList2 = new ArrayList(hl1.G0(collectionValues, 10));
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList2.add(zzr((zzaa) it.next()));
        }
        zzsyVarZzf.zze(arrayList2);
        return (zzsz) zzsyVarZzf.zzk();
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final zzen zza(String str) {
        zzek zzekVar = this.zza;
        zzekVar.zzc(str);
        return zzekVar.zzf(35);
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final zzen zzb() {
        zzek zzekVar = this.zza;
        zzekVar.zzc(zzekVar.zzd());
        return zzekVar.zzf(34);
    }

    @Override // com.google.android.recaptcha.internal.zze
    public final Object zzd(String str, jv1 jv1Var) {
        return zzq(str);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zze
    public final Object zzf(String str, jv1 jv1Var) {
        zzq zzqVar;
        if (jv1Var instanceof zzq) {
            zzqVar = (zzq) jv1Var;
            int i = zzqVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzqVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzqVar = new zzq(this, jv1Var);
            }
        } else {
            zzqVar = new zzq(this, jv1Var);
        }
        Object objK = zzqVar.zza;
        int i2 = zzqVar.zzc;
        if (i2 == 0) {
            lg7.H(objK);
            zzs zzsVar = new zzs(this, str, null);
            zzqVar.zzc = 1;
            objK = l73.k(zzsVar, zzqVar);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zze
    public final Object zzh(zzsc zzscVar, jv1 jv1Var) {
        zzt zztVar;
        if (jv1Var instanceof zzt) {
            zztVar = (zzt) jv1Var;
            int i = zztVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zztVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zztVar = new zzt(this, jv1Var);
            }
        } else {
            zztVar = new zzt(this, jv1Var);
        }
        Object objK = zztVar.zza;
        int i2 = zztVar.zzc;
        if (i2 == 0) {
            lg7.H(objK);
            zzu zzuVar = new zzu(zzscVar, this, null);
            zztVar.zzc = 1;
            objK = l73.k(zzuVar, zztVar);
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

    @Override // com.google.android.recaptcha.internal.zze
    public final void zzk(zzsr zzsrVar) {
        Iterator it = this.zzb.iterator();
        while (it.hasNext()) {
            ((zzy) it.next()).zze(zzsrVar);
        }
    }

    public final Map zzo() {
        return this.zzd;
    }
}
