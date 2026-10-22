package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface zk0 extends va4 {
    @Override // defpackage.va4
    default t40 a(t40 t40Var) {
        return t40Var.c(x13.a, this);
    }

    void forEach(on8 on8Var);

    String getEntryValue(String str);

    default boolean isEmpty() {
        return size() == 0;
    }

    int size();
}
