package com.google.firebase;

import defpackage.bk0;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements bk0 {
    public static final AtomicReference a = new AtomicReference();

    @Override // defpackage.bk0
    public final void a(boolean z) {
        synchronized (FirebaseApp.LOCK) {
            try {
                for (FirebaseApp firebaseApp : new ArrayList(FirebaseApp.INSTANCES.values())) {
                    if (firebaseApp.automaticResourceManagementEnabled.get()) {
                        firebaseApp.notifyBackgroundStateChangeListeners(z);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
