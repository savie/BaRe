package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tg4 implements Iterator {
    public static final tg4 a;
    public static final /* synthetic */ tg4[] b;

    static {
        tg4 tg4Var = new tg4("INSTANCE", 0);
        a = tg4Var;
        b = new tg4[]{tg4Var};
    }

    public static tg4 valueOf(String str) {
        return (tg4) Enum.valueOf(tg4.class, str);
    }

    public static tg4[] values() {
        return (tg4[]) b.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        sz8.j("no calls to next() since the last call to remove()", false);
    }
}
