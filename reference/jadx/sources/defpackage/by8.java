package defpackage;

import java.io.Reader;
import java.io.StringReader;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class by8 {
    public static final fk8 a = new fk8(3);

    public static Object a(Reader reader, Class cls) throws cy8 {
        try {
            wc9 wc9Var = new wc9(2);
            x44 x44Var = new x44(new cz4(11), new vq3(3));
            nh nhVar = new nh(15);
            nhVar.b = new ThreadLocal();
            lc4 lc4VarA = rn5.a(reader);
            try {
                ai5 ai5Var = new ai5(wc9Var, x44Var, nhVar.l());
                ai5Var.n();
                Object obj = null;
                Object objB = new yo1(ai5Var, new ln5(cls, 4), null).b(lc4VarA);
                if (objB != null) {
                    ai5Var.m(objB.getClass());
                    obj = objB;
                }
                return obj;
            } finally {
                nhVar.d();
            }
        } catch (Exception e) {
            throw new cy8(e);
        }
    }

    public static Object b(Class cls, String str) throws cy8 {
        try {
            wc9 wc9Var = new wc9(2);
            x44 x44Var = new x44(new cz4(11), new vq3(3));
            nh nhVar = new nh(15);
            nhVar.b = new ThreadLocal();
            lc4 lc4VarA = rn5.a(new StringReader(str));
            try {
                ai5 ai5Var = new ai5(wc9Var, x44Var, nhVar.l());
                ai5Var.n();
                Object obj = null;
                Object objB = new yo1(ai5Var, new ln5(cls, 4), null).b(lc4VarA);
                if (objB != null) {
                    ai5Var.m(objB.getClass());
                    obj = objB;
                }
                return obj;
            } finally {
                nhVar.d();
            }
        } catch (Exception e) {
            throw new cy8(e);
        }
    }

    public static boolean c(Class cls, String str) throws cy8 {
        try {
            wc9 wc9Var = new wc9(2);
            x44 x44Var = new x44(new cz4(11), new vq3(3));
            nh nhVar = new nh(15);
            nhVar.b = new ThreadLocal();
            lc4 lc4VarA = rn5.a(new StringReader(str));
            try {
                ai5 ai5Var = new ai5(wc9Var, x44Var, nhVar.l());
                ai5Var.n();
                yo1 yo1Var = new yo1(ai5Var, new ln5(cls, 4), null);
                ai5Var.m(cls);
                return yo1Var.d(lc4VarA);
            } finally {
                nhVar.d();
            }
        } catch (Exception e) {
            throw new cy8(e);
        }
    }
}
