package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface l15 {
    default boolean A(int i) {
        char c;
        String str;
        if (i == 1) {
            c = '(';
        } else if (i == 2) {
            c = 30;
        } else if (i == 3) {
            c = 20;
        } else if (i == 4) {
            c = '\n';
        } else {
            if (i != 5) {
                throw null;
            }
            c = 0;
        }
        if (c == 0) {
            return l();
        }
        if (c == '\n') {
            return c();
        }
        if (c == 20) {
            return j();
        }
        if (c == 30) {
            return b();
        }
        if (c == '(') {
            return h();
        }
        if (i == 1) {
            str = "ERROR";
        } else if (i == 2) {
            str = "WARN";
        } else if (i == 3) {
            str = "INFO";
        } else if (i != 4) {
            str = i != 5 ? "null" : "TRACE";
        } else {
            str = "DEBUG";
        }
        z5.d(str, "] not recognized.", "Level [");
        return false;
    }

    void B(Object obj, Object obj2, String str);

    void C(Object obj, Object obj2, String str);

    void D(Object obj, String str);

    void E(Object... objArr);

    void a(Object obj, String str);

    boolean b();

    boolean c();

    void d(String str);

    void e(Object obj, Object obj2, String str);

    void f(String str, Throwable th);

    void g(Object obj, String str);

    String getName();

    boolean h();

    void i(Object obj, String str);

    boolean j();

    void k(String str);

    boolean l();

    void m(Object obj, Object obj2, String str);

    void n(Object... objArr);

    void o(String str, Object... objArr);

    void p(String str, Throwable th);

    void q(Object... objArr);

    void r(String str, Throwable th);

    void s(String str, Throwable th);

    void t(Object obj, String str);

    void v(String str, Throwable th);

    void w(String str);

    void x(String str);

    void y(Object obj, Object obj2, String str);

    void z(String str);
}
