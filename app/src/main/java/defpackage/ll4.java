package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ll4 extends IOException {
    public final String a() {
        return super.getMessage();
    }

    public Object b() {
        return null;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        return message == null ? "N/A" : message;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
