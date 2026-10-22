package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface nw6 extends AutoCloseable {
    void C(int i, String str);

    default boolean F() {
        return getLong(0) != 0;
    }

    String R(int i);

    void e(int i, long j);

    void f(int i);

    int getColumnCount();

    String getColumnName(int i);

    long getLong(int i);

    void i();

    boolean i0();

    boolean isNull(int i);

    void reset();
}
