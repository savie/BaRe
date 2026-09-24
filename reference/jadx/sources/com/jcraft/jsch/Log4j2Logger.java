package com.jcraft.jsch;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Log4j2Logger implements Logger {
    public static final org.apache.logging.log4j.Logger a = LogManager.getLogger(JSch.class);

    public static Level a(int i) {
        if (i == 0) {
            return Level.DEBUG;
        }
        if (i == 1) {
            return Level.INFO;
        }
        if (i == 2) {
            return Level.WARN;
        }
        if (i != 3) {
            return i != 4 ? Level.TRACE : Level.FATAL;
        }
        return Level.ERROR;
    }

    @Override // com.jcraft.jsch.Logger
    public final boolean isEnabled(int i) {
        return a.isEnabled(a(i));
    }

    @Override // com.jcraft.jsch.Logger
    public final void log(int i, String str, Throwable th) {
        if (th == null) {
            a.log(a(i), str);
        } else {
            a.log(a(i), str, th);
        }
    }

    @Override // com.jcraft.jsch.Logger
    public final void log(int i, String str) {
        a.log(a(i), str);
    }
}
