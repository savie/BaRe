package com.microsoft.identity.common.java.util.ported;

import com.microsoft.identity.common.java.logging.Logger;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.f6;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum LocalBroadcaster {
    INSTANCE;

    private static final String TAG = "LocalBroadcaster";
    private static final ExecutorService sBroadcastExecutor = Executors.newSingleThreadExecutor();
    final ConcurrentHashMap<String, IReceiverCallback> mReceivers = new ConcurrentHashMap<>();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface IReceiverCallback {
        void onReceive(PropertyBag propertyBag);
    }

    public final void broadcast(final String str, final PropertyBag propertyBag) {
        sBroadcastExecutor.execute(new Runnable() { // from class: com.microsoft.identity.common.java.util.ported.LocalBroadcaster.1
            @Override // java.lang.Runnable
            public final void run() {
                ConcurrentHashMap<String, IReceiverCallback> concurrentHashMap = LocalBroadcaster.this.mReceivers;
                String str2 = str;
                IReceiverCallback iReceiverCallback = concurrentHashMap.get(str2);
                if (iReceiverCallback != null) {
                    Logger.info(LocalBroadcaster.TAG + ":broadcast", "broadcasting to alias: ".concat(str2));
                    iReceiverCallback.onReceive(propertyBag);
                    return;
                }
                Logger.info(LocalBroadcaster.TAG + ":broadcast", "No callback is registered with alias: " + str2 + ". Do nothing.");
            }
        });
    }

    public final boolean hasReceivers(String str) {
        return this.mReceivers.containsKey(str);
    }

    public final void registerCallback(String str, IReceiverCallback iReceiverCallback) {
        if (iReceiverCallback == null) {
            f6.n("callback is marked non-null but is null");
            return;
        }
        ConcurrentHashMap<String, IReceiverCallback> concurrentHashMap = this.mReceivers;
        boolean zContainsKey = concurrentHashMap.containsKey(str);
        String str2 = TAG;
        if (zContainsKey) {
            Logger.warn(eq3.j(str2, ":registerCallback"), "The alias: " + str + " has already been registered. It will be overwritten");
        }
        Logger.info(eq3.j(str2, ":registerCallback"), "Registering alias: ".concat(str));
        concurrentHashMap.put(str, iReceiverCallback);
    }

    public final void unregisterCallback(String str) {
        Logger.info(dj7.n(new StringBuilder(), TAG, ":unregisterCallback"), "Removing alias: ".concat(str));
        this.mReceivers.remove(str);
    }
}
