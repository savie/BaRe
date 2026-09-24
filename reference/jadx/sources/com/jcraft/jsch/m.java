package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {
    public final /* synthetic */ PortWatcher a;

    public /* synthetic */ m(PortWatcher portWatcher) {
        this.a = portWatcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.d();
    }
}
