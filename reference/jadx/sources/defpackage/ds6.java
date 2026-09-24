package defpackage;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ds6 extends ev6 {
    public EnumSet c;

    @Override // defpackage.hw5
    public final void a(zu6 zu6Var) {
        this.b = zu6Var;
        es6 es6Var = (es6) this.a;
        es6Var.getClass();
        es6Var.a = zu6Var.d;
        zu6Var.i(new byte[]{-1, 83, 77, 66}, 4);
        zu6Var.f((byte) 114);
        zu6Var.l(0L);
        zu6Var.f((byte) 24);
        zu6Var.k(51283);
        int length = 0;
        zu6Var.k(0);
        zu6Var.m(0L);
        zu6Var.v();
        zu6Var.k(0);
        zu6Var.k(0);
        zu6Var.k(0);
        zu6Var.k(0);
        zu6Var.f((byte) 0);
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add("SMB 2.002");
        EnumSet enumSet = this.c;
        if (enumSet.size() > 1 || !enumSet.contains(us6.SMB_2_0_2)) {
            arrayList.add("SMB 2.???");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            length += ((String) it.next()).length() + 2;
        }
        zu6Var.k(length);
        for (String str : arrayList) {
            zu6Var.f((byte) 2);
            zu6Var.h(str, h51.a);
        }
        ((es6) this.a).b = zu6Var.d;
    }

    public final String toString() {
        return "SMB_COM_NEGOTIATE";
    }
}
