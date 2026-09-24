package defpackage;

import java.util.LinkedList;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vk7 implements bi2 {
    public final char a;
    public int b = 0;
    public final LinkedList c = new LinkedList();

    public vk7(char c) {
        this.a = c;
    }

    @Override // defpackage.bi2
    public final void a(r08 r08Var, r08 r08Var2, int i) {
        LinkedList<bi2> linkedList = this.c;
        for (bi2 bi2Var : linkedList) {
            if (bi2Var.c() <= i) {
                bi2Var.a(r08Var, r08Var2, i);
            }
        }
        bi2Var = (bi2) linkedList.getFirst();
        bi2Var.a(r08Var, r08Var2, i);
    }

    @Override // defpackage.bi2
    public final char b() {
        return this.a;
    }

    @Override // defpackage.bi2
    public final int c() {
        return this.b;
    }

    @Override // defpackage.bi2
    public final int d(ai2 ai2Var, ai2 ai2Var2) {
        int i = ai2Var.g;
        LinkedList<bi2> linkedList = this.c;
        for (bi2 bi2Var : linkedList) {
            if (bi2Var.c() <= i) {
                return bi2Var.d(ai2Var, ai2Var2);
            }
        }
        bi2Var = (bi2) linkedList.getFirst();
        return bi2Var.d(ai2Var, ai2Var2);
    }

    @Override // defpackage.bi2
    public final char e() {
        return this.a;
    }

    public final void f(bi2 bi2Var) {
        int iC = bi2Var.c();
        LinkedList linkedList = this.c;
        ListIterator listIterator = linkedList.listIterator();
        while (listIterator.hasNext()) {
            int iC2 = ((bi2) listIterator.next()).c();
            if (iC > iC2) {
                listIterator.previous();
                listIterator.add(bi2Var);
                return;
            } else if (iC == iC2) {
                throw new IllegalArgumentException("Cannot add two delimiter processors for char '" + this.a + "' and minimum length " + iC);
            }
        }
        linkedList.add(bi2Var);
        this.b = iC;
    }
}
