package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ys2 implements y74 {
    public static boolean a(String str, fl7 fl7Var, yr7 yr7Var, Object obj) {
        try {
            return ((Boolean) xs2.a.createValueExpression(fl7Var, str, Boolean.class).getValue(fl7Var)).booleanValue();
        } catch (Throwable th) {
            cy6 cy6Var = new cy6();
            cy6Var.b = th;
            cy6Var.c = "Error while evaluating EL expression on message";
            cy6Var.d = yr7Var.a.a;
            cy6Var.f = obj;
            Iterator it = yr7Var.b.iterator();
            while (it.hasNext()) {
                ((q84) it.next()).a(cy6Var);
            }
            return false;
        }
    }
}
