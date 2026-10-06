package defpackage;

import java.io.Serializable;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jb2 extends ws7 implements mt3 {
    public Object a;
    public Serializable b;
    public Object c;
    public Object d;
    public Iterator e;
    public int f;
    public int k;
    public final /* synthetic */ ic2 n;
    public final /* synthetic */ kb2 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb2(ic2 ic2Var, kb2 kb2Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.n = ic2Var;
        this.p = kb2Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new jb2(this.n, this.p, jv1Var);
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        return ((jb2) create((jv1) obj)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:46:0x010c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:? A[LOOP:0: B:21:0x00af->B:48:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010a, code lost:
    
        if (r0 == r9) goto L37;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jb2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
