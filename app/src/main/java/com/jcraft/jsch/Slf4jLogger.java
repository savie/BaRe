package com.jcraft.jsch;

import defpackage.l15;
import defpackage.o15;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Slf4jLogger implements Logger {
    public static final l15 a = o15.b(JSch.class);

    @Override // com.jcraft.jsch.Logger
    public final boolean isEnabled(int i) {
        l15 l15Var = a;
        if (i == 0) {
            return l15Var.c();
        }
        if (i == 1) {
            return l15Var.j();
        }
        if (i != 2) {
            return (i == 3 || i == 4) ? l15Var.h() : l15Var.l();
        }
        return l15Var.b();
    }

    @Override // com.jcraft.jsch.Logger
    public final void log(int i, String str, Throwable th) {
        if (isEnabled(i)) {
            l15 l15Var = a;
            if (i == 0) {
                l15Var.v(str, th);
                return;
            }
            if (i == 1) {
                l15Var.p(str, th);
                return;
            }
            if (i == 2) {
                l15Var.r(str, th);
            } else if (i == 3 || i == 4) {
                l15Var.f(str, th);
            } else {
                l15Var.s(str, th);
            }
        }
    }

    @Override // com.jcraft.jsch.Logger
    public final void log(int i, String str) {
        log(i, str, null);
    }
}
