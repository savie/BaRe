package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a33 extends Error {
    public final Exception a;

    public a33(String str, Exception exc) {
        super(str);
        this.a = exc;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        if (message != null) {
            return message;
        }
        Exception exc = this.a;
        return (exc == null || (message = exc.getMessage()) != null) ? message : exc.getClass().toString();
    }
}
