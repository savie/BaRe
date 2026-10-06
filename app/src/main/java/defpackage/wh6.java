package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wh6 extends ol1 implements s74 {
    public wh6(yr7 yr7Var) {
        super(yr7Var, 5);
    }

    @Override // defpackage.s74
    public final void b(Object obj, Object obj2, rd5 rd5Var) {
        InvocationTargetException invocationTargetException;
        IllegalAccessException illegalAccessException;
        yr7 yr7Var = (yr7) this.b;
        Method method = yr7Var.a.a;
        try {
            try {
                try {
                    method.invoke(obj, obj2);
                } catch (IllegalAccessException e) {
                    illegalAccessException = e;
                    cy6 cy6Var = new cy6(illegalAccessException, "Error during invocation of message handler. The class or method is not accessible", method, obj, rd5Var);
                    Iterator it = yr7Var.b.iterator();
                    while (it.hasNext()) {
                        ((q84) it.next()).a(cy6Var);
                    }
                } catch (InvocationTargetException e2) {
                    invocationTargetException = e2;
                    cy6 cy6Var2 = new cy6(invocationTargetException, "Error during invocation of message handler. There might be an access rights problem. Do you use non public inner classes?", method, obj, rd5Var);
                    Iterator it2 = yr7Var.b.iterator();
                    while (it2.hasNext()) {
                        ((q84) it2.next()).a(cy6Var2);
                    }
                }
            } catch (IllegalArgumentException e3) {
                cy6 cy6Var3 = new cy6(e3, "Error during invocation of message handler. Wrong arguments passed to method. Was: " + obj2.getClass() + "Expected: " + method.getParameterTypes()[0], method, obj, rd5Var);
                Iterator it3 = yr7Var.b.iterator();
                while (it3.hasNext()) {
                    ((q84) it3.next()).a(cy6Var3);
                }
            } catch (Throwable th) {
                cy6 cy6Var4 = new cy6(th, "Error during invocation of message handler. The handler code threw an exception", method, obj, rd5Var);
                Iterator it4 = yr7Var.b.iterator();
                while (it4.hasNext()) {
                    ((q84) it4.next()).a(cy6Var4);
                }
            }
        } catch (IllegalAccessException e4) {
            illegalAccessException = e4;
        } catch (InvocationTargetException e5) {
            invocationTargetException = e5;
        }
    }
}
