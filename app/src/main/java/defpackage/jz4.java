package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jz4 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        ji jiVarA;
        context.getClass();
        if (intent == null || intent.getData() == null || intent.getAction() == null) {
            return;
        }
        Uri data = intent.getData();
        data.getClass();
        String schemeSpecificPart = data.getSchemeSpecificPart();
        if (pe4.d(schemeSpecificPart, "org.swiftapps.swiftbackup")) {
            return;
        }
        Log.d("LocalAppChangeReceiver", "onReceive: " + intent);
        Bundle extras = intent.getExtras();
        if (!(extras != null ? extras.getBoolean("android.intent.extra.REPLACING") : false) || pe4.d(intent.getAction(), "android.intent.action.PACKAGE_REPLACED")) {
            if (schemeSpecificPart != null) {
                CopyOnWriteArrayList copyOnWriteArrayList = hy7.c;
                ArrayList arrayList = new ArrayList();
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    qw6 qw6Var = ((rw6) it.next()).c;
                    if (qw6Var != null) {
                        arrayList.add(qw6Var);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (obj instanceof c40) {
                        arrayList2.add(obj);
                    }
                }
                if (arrayList2.size() == 1) {
                    c40 c40Var = (c40) el1.S0(arrayList2);
                    if (!c40Var.g() && (c40Var.a instanceof ry7)) {
                        kz kzVar = (kz) el1.U0(c40Var.m);
                        if (pe4.d((kzVar == null || (jiVarA = kzVar.a()) == null) ? null : jiVarA.getPackageName(), schemeSpecificPart) && c40Var.e().isRunning()) {
                            return;
                        }
                    }
                }
            }
            Log.d("LocalAppChangeReceiver", "onReceive: Posting event for pkg = " + schemeSpecificPart);
            w13.q(jz4.class, schemeSpecificPart);
        }
    }
}
