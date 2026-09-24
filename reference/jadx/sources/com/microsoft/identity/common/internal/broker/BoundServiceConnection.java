package com.microsoft.identity.common.internal.broker;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.microsoft.identity.common.java.util.ResultFuture;
import com.microsoft.identity.common.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BoundServiceConnection implements ServiceConnection {
    private final ResultFuture<IBinder> mFuture;

    public BoundServiceConnection(ResultFuture<IBinder> resultFuture) {
        this.mFuture = resultFuture;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str = componentName.getClassName() + " is connected.";
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("BoundServiceConnection:onServiceConnected", str);
        this.mFuture.setResult(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        String str = componentName.getClassName() + " is disconnected.";
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("BoundServiceConnection:onServiceDisconnected", str);
    }
}
