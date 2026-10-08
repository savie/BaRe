package com.google.android.recaptcha.internal;

import android.content.Context;
import defpackage.el1;
import defpackage.hl1;
import defpackage.m0;
import defpackage.pe4;
import defpackage.uq7;
import defpackage.x41;
import defpackage.y41;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbm implements zzaq {
    private final Context zza;
    private final String zzb = "rce_";

    public zzbm(Context context) {
        this.zza = context;
        new zzcd(context);
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    public final String zza(String str) {
        File file = new File(this.zza.getCacheDir(), this.zzb.concat(String.valueOf(str)));
        if (file.exists()) {
            return new String(zzcd.zza(file), StandardCharsets.UTF_8);
        }
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    public final void zzb() {
        try {
            File[] fileArrListFiles = this.zza.getCacheDir().listFiles();
            if (fileArrListFiles != null) {
                ArrayList arrayList = new ArrayList();
                for (File file : fileArrListFiles) {
                    if (uq7.V(file.getName(), this.zzb, false)) {
                        arrayList.add(file);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((File) it.next()).delete();
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    public final void zzc(String str, String str2) throws GeneralSecurityException, IOException {
        y41 y41Var = new y41('A', 'z');
        ArrayList arrayList = new ArrayList(hl1.G0(y41Var, 10));
        Iterator it = y41Var.iterator();
        while (true) {
            x41 x41Var = (x41) it;
            boolean z = x41Var.c;
            if (!z) {
                List listY1 = el1.y1(arrayList);
                Collections.shuffle(listY1);
                String strY0 = el1.Y0(((ArrayList) listY1).subList(0, 8), "", null, null, null, 62);
                File file = new File(this.zza.getCacheDir(), this.zzb.concat(strY0));
                zzcd.zzb(file, String.valueOf(str2).getBytes(StandardCharsets.UTF_8));
                file.renameTo(new File(this.zza.getCacheDir(), this.zzb.concat(String.valueOf(str))));
                return;
            }
            int i = x41Var.d;
            if (i != x41Var.b) {
                x41Var.d = x41Var.a + i;
            } else {
                if (!z) {
                    m0.d();
                    return;
                }
                x41Var.c = false;
            }
            arrayList.add(Character.valueOf((char) i));
        }
    }

    @Override // com.google.android.recaptcha.internal.zzaq
    public final boolean zzd(String str) {
        try {
            File[] fileArrListFiles = this.zza.getCacheDir().listFiles();
            File file = null;
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (pe4.d(file2.getName(), this.zzb + str)) {
                        file = file2;
                        break;
                    }
                }
            }
            return file != null;
        } catch (Exception unused) {
        }
    }
}
