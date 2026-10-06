package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uw {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public final /* synthetic */ xw i;

    public uw(xw xwVar) {
        this.i = xwVar;
    }

    public final void a(String str) {
        String str2 = this.f;
        if (str2 == null || str2.length() == 0) {
            this.f = dj7.k(this.i.h.getName(), ": ", str);
        } else {
            this.f = dj7.k(this.f, ", ", str);
        }
    }

    public final void b(iu iuVar, String str) {
        iuVar.getClass();
        String str2 = this.a;
        if (str2 == null || str2.length() == 0) {
            this.a = this.i.h.getName() + ": " + iu.toDisplayString$default(iuVar, false, 1, null) + " (" + str + ")";
            return;
        }
        this.a = this.a + ", " + iu.toDisplayString$default(iuVar, false, 1, null) + " (" + str + ")";
    }

    public final void c(String str) {
        str.getClass();
        String str2 = this.h;
        if (str2 == null || str2.length() == 0) {
            this.h = dj7.k(this.i.h.getName(), ": ", str);
        } else {
            this.h = dj7.k(this.h, ", ", str);
        }
    }

    public final void d(iu iuVar) {
        iuVar.getClass();
        String str = this.d;
        if (str == null || str.length() == 0) {
            this.d = dj7.k(this.i.h.getName(), ": ", iu.toDisplayString$default(iuVar, false, 1, null));
        } else {
            this.d = dj7.k(this.d, ", ", iu.toDisplayString$default(iuVar, false, 1, null));
        }
    }

    public final void e(String str) {
        String str2 = this.g;
        if (str2 == null || str2.length() == 0) {
            this.g = dj7.k(this.i.h.getName(), ": ", str);
        } else {
            this.g = dj7.k(this.g, ", ", str);
        }
    }

    public final boolean f() {
        String str = this.a;
        if (str != null && str.length() != 0) {
            return true;
        }
        String str2 = this.b;
        if (str2 != null && str2.length() != 0) {
            return true;
        }
        String str3 = this.d;
        if (str3 != null && str3.length() != 0) {
            return true;
        }
        String str4 = this.e;
        if (str4 != null && str4.length() != 0) {
            return true;
        }
        String str5 = this.c;
        if (str5 != null && str5.length() != 0) {
            return true;
        }
        String str6 = this.f;
        return (str6 == null || str6.length() == 0) ? false : true;
    }
}
