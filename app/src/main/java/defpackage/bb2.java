package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bb2 {
    public static final ab2 b = new ab2();
    public final HashMap a;

    public bb2(int i) {
        switch (i) {
            case 1:
                this.a = new HashMap();
                break;
            case 2:
                this.a = new HashMap(3);
                break;
            case 3:
                this.a = new HashMap();
                break;
            default:
                this.a = new HashMap();
                break;
        }
    }

    public void a(Class cls, sj7 sj7Var) {
        this.a.put(cls, sj7Var);
    }
}
