package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tl {
    public final ji a;
    public boolean b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;

    public tl(ji jiVar) {
        jiVar.getClass();
        this.a = jiVar;
    }

    public final void a(String str) {
        String str2 = this.g;
        if (str2 == null || str2.length() == 0) {
            this.g = dj7.k(this.a.getName(), ": ", str);
        } else {
            this.g = dj7.k(this.g, ", ", str);
        }
    }

    public final void b(iu iuVar, String str) {
        iuVar.getClass();
        String str2 = this.c;
        if (str2 == null || str2.length() == 0) {
            this.c = this.a.getName() + ": " + iu.toDisplayString$default(iuVar, false, 1, null) + " (" + str + ")";
            return;
        }
        this.c = this.c + ", " + iu.toDisplayString$default(iuVar, false, 1, null) + " (" + str + ")";
    }

    public final boolean c() {
        String str = this.c;
        if (str != null && str.length() != 0) {
            return true;
        }
        String str2 = this.d;
        if (str2 != null && str2.length() != 0) {
            return true;
        }
        String str3 = this.f;
        if (str3 != null && str3.length() != 0) {
            return true;
        }
        String str4 = this.g;
        return (str4 == null || str4.length() == 0) ? false : true;
    }
}
