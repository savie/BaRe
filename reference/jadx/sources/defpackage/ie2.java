package defpackage;

import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ie2 {
    public static final Pattern a = Pattern.compile("(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14, types: [he8] */
    /* JADX WARN: Type inference failed for: r2v15, types: [pr1] */
    /* JADX WARN: Type inference failed for: r2v16, types: [pr1] */
    /* JADX WARN: Type inference failed for: r2v17, types: [pr1, z45] */
    /* JADX WARN: Type inference failed for: r2v18, types: [pr1] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v24, types: [pr1] */
    /* JADX WARN: Type inference failed for: r2v25, types: [he8] */
    /* JADX WARN: Type inference failed for: r2v26, types: [he8] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [h23] */
    /* JADX WARN: Type inference failed for: r8v2 */
    public static h23 a(String str, e23 e23Var) {
        ?? he8Var;
        e23 e23Var2;
        h23 zo1Var;
        if (a.matcher(str).matches()) {
            try {
                Class<?> cls = Class.forName(str);
                try {
                    he8Var = (h23) cls.getConstructor(null).newInstance(null);
                } catch (ClassCastException e) {
                    throw new fx5(cls.getName() + " does not implement the interface " + h23.class.getCanonicalName(), e);
                } catch (Exception e2) {
                    e = e2;
                    throw new fx5("Error initializing parser", e);
                } catch (LinkageError e3) {
                    e = e3;
                    throw new fx5("Error initializing parser", e);
                }
            } catch (ClassNotFoundException unused) {
                he8Var = 0;
            }
        } else {
            he8Var = 0;
        }
        if (he8Var == 0) {
            String upperCase = str.toUpperCase(Locale.ENGLISH);
            if (upperCase.contains("UNIX_LTRIM")) {
                he8Var = new he8(e23Var, true);
            } else if (upperCase.contains("UNIX")) {
                he8Var = new he8(e23Var, false);
            } else if (upperCase.contains("VMS")) {
                he8Var = new qi8("(.*?;[0-9]+)\\s*(\\d+)(?:/\\d+)?\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)");
                he8Var.a(null);
                he8Var.a(e23Var);
            } else {
                if (upperCase.contains("WINDOWS")) {
                    if (e23Var == null || !"WINDOWS".equals(e23Var.a)) {
                        e23Var2 = e23Var != null ? new e23(e23Var) : null;
                        zo1Var = new zo1(new h23[]{new tj5(e23Var), new he8(e23Var2, e23Var2 != null && "UNIX_LTRIM".equals(e23Var2.a))});
                    } else {
                        zo1Var = new tj5(e23Var);
                    }
                } else if (upperCase.contains("OS/2")) {
                    he8Var = new rq5("\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)");
                    he8Var.a(e23Var);
                } else if (upperCase.contains("OS/400") || upperCase.contains("AS/400")) {
                    if (e23Var == null || !"OS/400".equals(e23Var.a)) {
                        e23Var2 = e23Var != null ? new e23(e23Var) : null;
                        zo1Var = new zo1(new h23[]{new sq5(e23Var), new he8(e23Var2, e23Var2 != null && "UNIX_LTRIM".equals(e23Var2.a))});
                    } else {
                        zo1Var = new sq5(e23Var);
                    }
                } else if (upperCase.contains("MVS")) {
                    he8Var = new z45("");
                    he8Var.e = -1;
                    he8Var.a(null);
                } else if (upperCase.contains("NETWARE")) {
                    he8Var = new jm5("(d|-){1}\\s+\\[([-A-Z]+)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)");
                    he8Var.a(e23Var);
                } else if (upperCase.contains("MACOS PETER")) {
                    he8Var = new d55("([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)");
                    he8Var.a(e23Var);
                } else {
                    if (!upperCase.contains("TYPE: L8")) {
                        throw new fx5("Unknown parser type: ".concat(str));
                    }
                    he8Var = new he8(e23Var, false);
                }
                he8Var = zo1Var;
            }
        }
        if (he8Var instanceof or1) {
            ((or1) he8Var).a(e23Var);
        }
        return he8Var;
    }
}
