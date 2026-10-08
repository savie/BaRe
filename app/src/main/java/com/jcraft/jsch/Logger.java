package com.jcraft.jsch;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface Logger {
    public static final int DEBUG = 0;
    public static final int ERROR = 3;
    public static final int FATAL = 4;
    public static final int INFO = 1;
    public static final int WARN = 2;

    boolean isEnabled(int i);

    void log(int i, String str);

    default void log(int i, String str, Throwable th) {
        if (isEnabled(i)) {
            if (th != null) {
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter((Writer) stringWriter, true);
                try {
                    th.printStackTrace(printWriter);
                    printWriter.close();
                    str = str + System.lineSeparator() + stringWriter.toString();
                } catch (Throwable th2) {
                    try {
                        printWriter.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            log(i, str);
        }
    }
}
