package com.google.android.recaptcha.internal;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import defpackage.g84;
import defpackage.hl1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzge {
    private final Map zza = new LinkedHashMap();
    private final Set zzb = new LinkedHashSet();

    private final List zzh(List list) {
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zza((zzue) it.next()));
        }
        return arrayList;
    }

    public final Object zza(zzue zzueVar) throws zzce {
        int iZzS = zzueVar.zzS();
        int i = iZzS - 1;
        if (iZzS == 0) {
            throw null;
        }
        switch (i) {
            case 0:
                return this.zza.get(Integer.valueOf(zzueVar.zzi()));
            case 1:
                return Boolean.valueOf(zzueVar.zzQ());
            case 2:
                byte[] bArrZzl = zzueVar.zzM().zzl();
                if (bArrZzl.length == 1) {
                    return Byte.valueOf(bArrZzl[0]);
                }
                g84.d(4, 6, null);
                return null;
            case 3:
                String strZzO = zzueVar.zzO();
                if (strZzO.length() == 1) {
                    return Character.valueOf(strZzO.charAt(0));
                }
                g84.d(4, 6, null);
                return null;
            case 4:
                int iZzj = zzueVar.zzj();
                if (iZzj >= -32768 && iZzj <= 32767) {
                    return Short.valueOf((short) iZzj);
                }
                g84.d(4, 6, null);
                return null;
            case 5:
                return Integer.valueOf(zzueVar.zzk());
            case 6:
            case 8:
                g84.d(4, 6, null);
                return null;
            case 7:
                return Long.valueOf(zzueVar.zzl());
            case XmlPullParser.COMMENT /* 9 */:
                return Float.valueOf(zzueVar.zzg());
            case 10:
                return Double.valueOf(zzueVar.zzf());
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return zzueVar.zzP();
            default:
                g84.d(4, 5, null);
            case 12:
                return null;
        }
    }

    public final Object zzb(int i) {
        return this.zza.remove(Integer.valueOf(i));
    }

    public final void zzc() {
        this.zza.clear();
    }

    public final void zzd(int i, Object obj) {
        zze(173, obj);
        this.zzb.add(173);
    }

    public final void zze(int i, Object obj) {
        this.zza.put(Integer.valueOf(i), obj);
    }

    public final Class[] zzf(List list) {
        List listZzh = zzh(list);
        ArrayList arrayList = new ArrayList(hl1.G0(listZzh, 10));
        Iterator it = listZzh.iterator();
        while (it.hasNext()) {
            arrayList.add(zzgc.zza(it.next()));
        }
        return (Class[]) arrayList.toArray(new Class[0]);
    }

    public final Object[] zzg(List list) {
        return zzh(list).toArray(new Object[0]);
    }
}
