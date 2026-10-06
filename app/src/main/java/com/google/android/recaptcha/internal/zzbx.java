package com.google.android.recaptcha.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import defpackage.bn1;
import defpackage.ci4;
import defpackage.jg2;
import defpackage.ly8;
import defpackage.mx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbx {
    public static final jg2 zza(Task task) {
        final bn1 bn1VarA = ly8.a();
        task.addOnCompleteListener(zzbv.zza, new OnCompleteListener() { // from class: com.google.android.recaptcha.internal.zzbu
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                mx1 mx1Var = bn1VarA;
                Exception exception = task2.getException();
                if (exception != null) {
                    ((bn1) mx1Var).Y(exception);
                } else if (task2.isCanceled()) {
                    ((ci4) mx1Var).cancel(null);
                } else {
                    ((bn1) mx1Var).G(task2.getResult());
                }
            }
        });
        return new zzbw(bn1VarA);
    }
}
