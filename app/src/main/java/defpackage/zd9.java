package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class zd9 {
    public static final /* synthetic */ int a = 0;

    static {
        int i = be9.F;
    }

    public static String a(Exception exc) {
        if (exc == null) {
            return null;
        }
        try {
            String simpleName = exc.getClass().getSimpleName();
            String message = exc.getMessage();
            if (message == null) {
                message = "";
            }
            String str = simpleName + ":" + message;
            int i = ta9.a;
            return str.length() > 40 ? str.substring(0, 40) : str;
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to get truncated exception info", th);
            return null;
        }
    }

    public static do9 b(int i, int i2, yq0 yq0Var, String str, wo9 wo9Var) {
        try {
            oo9 oo9VarQ = ro9.q();
            int i3 = yq0Var.a;
            oo9VarQ.b();
            ro9.p((ro9) oo9VarQ.b, i3);
            String str2 = yq0Var.c;
            oo9VarQ.b();
            ro9.s((ro9) oo9VarQ.b, str2);
            int i4 = yq0Var.b;
            if (i4 != 0) {
                oo9VarQ.b();
                ro9.u((ro9) oo9VarQ.b, i4);
            }
            if (i != 0) {
                oo9VarQ.b();
                ro9.v((ro9) oo9VarQ.b, i);
            }
            if (str != null) {
                oo9VarQ.b();
                ro9.r((ro9) oo9VarQ.b, str);
            }
            co9 co9VarS = do9.s();
            co9VarS.c(oo9VarQ);
            co9VarS.b();
            do9.r((do9) co9VarS.b, i2);
            if (!wo9Var.equals(wo9.BROADCAST_ACTION_UNSPECIFIED)) {
                co9VarS.b();
                do9.v((do9) co9VarS.b, wo9Var);
            }
            return (do9) co9VarS.a();
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to create logging payload", th);
            return null;
        }
    }

    public static no9 c(int i, wo9 wo9Var) {
        try {
            ho9 ho9VarQ = no9.q();
            ho9VarQ.b();
            no9.p((no9) ho9VarQ.b, i);
            if (!wo9Var.equals(wo9.BROADCAST_ACTION_UNSPECIFIED)) {
                ho9VarQ.b();
                no9.s((no9) ho9VarQ.b, wo9Var);
            }
            return (no9) ho9VarQ.a();
        } catch (Exception e) {
            ta9.i("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }
}
