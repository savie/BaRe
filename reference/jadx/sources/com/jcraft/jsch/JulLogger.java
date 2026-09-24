package com.jcraft.jsch;

import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JulLogger implements Logger {
    public static final java.util.logging.Logger a = java.util.logging.Logger.getLogger(JSch.class.getName());

    public static Level a(int i) {
        if (i == 0) {
            return Level.FINE;
        }
        if (i == 1) {
            return Level.INFO;
        }
        if (i != 2) {
            return (i == 3 || i == 4) ? Level.SEVERE : Level.FINER;
        }
        return Level.WARNING;
    }

    @Override // com.jcraft.jsch.Logger
    public final boolean isEnabled(int i) {
        return a.isLoggable(a(i));
    }

    @Override // com.jcraft.jsch.Logger
    public final void log(int i, String str, Throwable th) {
        java.util.logging.Logger logger = a;
        if (th == null) {
            logger.log(a(i), str);
        } else {
            logger.log(a(i), str, th);
        }
    }

    @Override // com.jcraft.jsch.Logger
    public final void log(int i, String str) {
        log(i, str, null);
    }
}
