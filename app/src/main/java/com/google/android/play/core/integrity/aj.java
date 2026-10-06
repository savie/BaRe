package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import defpackage.b09;
import defpackage.g67;
import defpackage.h09;
import defpackage.m09;
import defpackage.n09;
import defpackage.o09;
import defpackage.r09;
import defpackage.v09;
import defpackage.zz8;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class aj {
    final zz8 a;
    private final r09 b;
    private final String c;
    private final at d;
    private final k e;

    public aj(Context context, r09 r09Var, at atVar, k kVar) {
        this.c = context.getPackageName();
        this.b = r09Var;
        this.d = atVar;
        this.e = kVar;
        r09 r09Var2 = b09.a;
        try {
            if (context.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled && b09.a(context.getPackageManager().getPackageInfo("com.android.vending", 64).signatures)) {
                this.a = new zz8(context, r09Var, "IntegrityService", ak.a, new v09() { // from class: com.google.android.play.core.integrity.ae
                    @Override // defpackage.v09
                    public final Object a(IBinder iBinder) {
                        int i = n09.k;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
                        return iInterfaceQueryLocalInterface instanceof o09 ? (o09) iInterfaceQueryLocalInterface : new m09(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService", 0);
                    }
                });
                return;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        Object[] objArr = new Object[0];
        r09Var.getClass();
        if (Log.isLoggable("PlayCore", 6)) {
            Log.e("PlayCore", r09.c(r09Var.a, "Phonesky is not installed.", objArr));
        }
        this.a = null;
    }

    public static Bundle a(aj ajVar, byte[] bArr, Long l, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", ajVar.c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 3);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new h09(3, System.currentTimeMillis()));
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(g67.b(arrayList)));
        return bundle;
    }

    public final Task b(Activity activity, Bundle bundle) {
        if (this.a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, null));
        }
        int i = bundle.getInt("dialog.intent.type");
        this.b.b("requestAndShowDialog(%s, %s)", this.c, Integer.valueOf(i));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.a.c(new ag(this, taskCompletionSource, bundle, activity, taskCompletionSource, i), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task c(IntegrityTokenRequest integrityTokenRequest) {
        if (this.a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, null));
        }
        try {
            byte[] bArrDecode = Base64.decode(integrityTokenRequest.nonce(), 10);
            Long lCloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
            this.b.b("requestIntegrityToken(%s)", integrityTokenRequest);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.a.c(new af(this, taskCompletionSource, bArrDecode, lCloudProjectNumber, null, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
            return taskCompletionSource.getTask();
        } catch (IllegalArgumentException e) {
            return Tasks.forException(new IntegrityServiceException(-13, e));
        }
    }
}
