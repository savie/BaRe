package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ns7 extends Closeable {
    is3 L();

    String getDatabaseName();

    void setWriteAheadLoggingEnabled(boolean z);
}
