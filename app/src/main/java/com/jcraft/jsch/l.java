package com.jcraft.jsch;

public final class l implements Runnable {
    public final PortWatcher a;

    public l(PortWatcher owner) {
        this.a = owner;
    }

    @Override
    public final void run() {
        this.a.d();
    }
}