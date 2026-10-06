package com.microsoft.identity.common.internal.ui.browser;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.microsoft.identity.common.logging.Logger;
import defpackage.h72;
import defpackage.i72;
import defpackage.ix0;
import defpackage.j72;
import defpackage.ka;
import defpackage.p74;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CustomTabsManager {
    private final WeakReference<Context> mContextRef;
    private ix0 mCustomTabsIntent;
    private boolean mCustomTabsServiceIsBound;
    private final j72 mCustomTabsServiceConnection = new j72() { // from class: com.microsoft.identity.common.internal.ui.browser.CustomTabsManager.1
        @Override // android.content.ServiceConnection
        public final void onBindingDied(ComponentName componentName) {
            StringBuilder sb = new StringBuilder("Binding died callback on custom tabs service, there will likely be failures.  Component class that failed: ");
            sb.append(componentName == null ? "null" : componentName.getClassName());
            String string = sb.toString();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("CustomTabsManager:onBindingDied", string);
            super.onBindingDied(componentName);
        }

        @Override // defpackage.j72
        public final void onCustomTabsServiceConnected(i72 i72Var) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("CustomTabsManager:onCustomTabsServiceConnection", "CustomTabsService is connected");
            try {
                ((p74) i72Var.a).g();
            } catch (RemoteException unused) {
            }
            CustomTabsManager customTabsManager = CustomTabsManager.this;
            customTabsManager.mCustomTabsServiceIsBound = true;
            customTabsManager.mCustomTabsClient.set(i72Var);
            customTabsManager.mClientLatch.countDown();
        }

        @Override // android.content.ServiceConnection
        public final void onNullBinding(ComponentName componentName) {
            StringBuilder sb = new StringBuilder("Null binding callback on custom tabs service, there will likely be failures. Component class that failed: ");
            sb.append(componentName == null ? "null" : componentName.getClassName());
            String string = sb.toString();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("CustomTabsManager:onNullBinding", string);
            super.onNullBinding(componentName);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("CustomTabsManager:onServiceDisconnected", "CustomTabsService is disconnected");
            CustomTabsManager customTabsManager = CustomTabsManager.this;
            customTabsManager.mCustomTabsServiceIsBound = false;
            customTabsManager.mCustomTabsClient.set(null);
            customTabsManager.mClientLatch.countDown();
        }
    };
    private final AtomicReference<i72> mCustomTabsClient = new AtomicReference<>();
    private final CountDownLatch mClientLatch = new CountDownLatch(1);

    public CustomTabsManager(Context context) {
        this.mContextRef = new WeakReference<>(context);
    }

    private ka createSession() {
        CountDownLatch countDownLatch = this.mClientLatch;
        try {
            countDownLatch.await(1L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("CustomTabsManager:getClient", "Interrupted while waiting for browser connection");
            countDownLatch.countDown();
        }
        i72 i72Var = this.mCustomTabsClient.get();
        if (i72Var == null) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("CustomTabsManager:createSession", "Failed to create custom tabs session with null CustomTabClient.");
            return null;
        }
        ka kaVarB = i72Var.b();
        if (kaVarB == null) {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("CustomTabsManager:createSession", "Failed to create custom tabs session through custom tabs client.");
        }
        return kaVarB;
    }

    public final synchronized boolean bind(Context context, String str) {
        if (context != null) {
            if (i72.a(context, str, this.mCustomTabsServiceConnection)) {
                h72 h72Var = new h72(createSession());
                h72Var.a.putExtra("android.support.customtabs.extra.SEND_TO_EXTERNAL_HANDLER", true);
                h72Var.a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
                this.mCustomTabsIntent = h72Var.a();
                return true;
            }
        }
        String strConcat = "Unable to bind custom tabs service ".concat(context == null ? "because the context was null" : "because the bind call failed");
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CustomTabsManager:bind", strConcat);
        this.mClientLatch.countDown();
        return false;
    }

    public final ix0 getCustomTabsIntent() {
        return this.mCustomTabsIntent;
    }

    public final synchronized void unbind() {
        Context context = this.mContextRef.get();
        if (context != null && this.mCustomTabsServiceIsBound) {
            try {
                context.unbindService(this.mCustomTabsServiceConnection);
            } catch (Exception e) {
                String str = "Error unbinding custom tabs service, likely failed to bind or previously died: " + e.getMessage();
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("CustomTabsManager:unbind", str);
                if (e instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        this.mCustomTabsServiceIsBound = false;
        this.mCustomTabsClient.set(null);
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CustomTabsManager:unbind", "CustomTabsService is unbound.");
    }
}
