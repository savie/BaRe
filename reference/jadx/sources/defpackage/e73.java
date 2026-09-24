package defpackage;

import com.topjohnwu.superuser.Shell;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e73 {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();

    public static final boolean a(String str) {
        o93 o93Var;
        try {
            int i = Shell.UNKNOWN;
            zd7 zd7VarK = k55.k();
            if ((zd7VarK == null || !zd7VarK.isRoot()) && !k55.j().isRoot()) {
                gv7 gv7Var = qe7.a;
                o93Var = (le7.f() && qe7.b()) ? o93.SHIZUKU : o93.NORMAL;
            } else {
                o93Var = o93.ROOT;
            }
            return c(str, o93Var) == d73.FOUND;
        } catch (Exception e) {
            String strK = eq3.k("Failed to select a shell backend for '", str, "'");
            try {
                boolean z = q63.d;
                cy0.b.a("FileContentProbe", strK, e);
                return false;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public static d73 b(ub ubVar) {
        List list = (List) ubVar.b;
        if (!ubVar.a() || list.isEmpty()) {
            return d73.UNKNOWN;
        }
        String str = (String) el1.a1(list);
        if (!uq7.V(str, "__SWIFTBACKUP_FIND_STATUS__:", false)) {
            return list.size() == 1 ? d73.FOUND : d73.UNKNOWN;
        }
        Integer numW = uq7.W(10, nq7.q0(str, "__SWIFTBACKUP_FIND_STATUS__:"));
        if (numW == null) {
            return d73.UNKNOWN;
        }
        if (numW.intValue() != 0) {
            return d73.UNKNOWN;
        }
        return list.size() > 1 ? d73.FOUND : d73.EMPTY;
    }

    public static d73 c(String str, o93 o93Var) {
        Object objPutIfAbsent;
        o93Var.getClass();
        try {
            ConcurrentHashMap concurrentHashMap = a;
            Object objValueOf = concurrentHashMap.get(o93Var);
            if (objValueOf == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(o93Var, (objValueOf = Boolean.valueOf(iz1.z("toybox find /dev/null -quit >/dev/null 2>&1", o93Var).a())))) != null) {
                objValueOf = objPutIfAbsent;
            }
            boolean zBooleanValue = ((Boolean) objValueOf).booleanValue();
            String strK = eq3.k("{ ", eq3.k("toybox find ", jr7.c(str), zBooleanValue ? " ! -type d ! -type s -print -quit 2>/dev/null" : " ! -type d ! -type s -print 2>/dev/null"), "; status=$?; printf '__SWIFTBACKUP_FIND_STATUS__:%s\\n' \"$status\"; }");
            if (!zBooleanValue) {
                strK = strK.concat(" | toybox head -n 1");
            }
            return b(iz1.z(strK, o93Var));
        } catch (Exception e) {
            String str2 = "Content probe failed for '" + str + "' using " + o93Var;
            try {
                boolean z = q63.d;
                cy0.b.a("FileContentProbe", str2, e);
            } catch (Exception unused) {
            }
            return d73.UNKNOWN;
        }
    }
}
