package defpackage;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fj9 {
    public static final char[] a;

    static {
        char[] cArr = new char[80];
        a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        b(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(jm1.c0(new hg9(((String) obj).getBytes(vh9.a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof hg9) {
            sb.append(": \"");
            sb.append(jm1.c0((hg9) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof ih9) {
            sb.append(" {");
            c((ih9) obj, sb, i + 2);
            sb.append("\n");
            b(i, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i3 = i + 2;
        a(sb, i3, "key", entry.getKey());
        a(sb, i3, "value", entry.getValue());
        sb.append("\n");
        b(i, sb);
        sb.append("}");
    }

    public static void b(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(a, 0, i2);
            i -= i2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0200  */
    public static void c(ih9 ih9Var, StringBuilder sb, int i) {
        int i2;
        int i3;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = ih9Var.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i4 = 0;
        while (true) {
            i2 = 3;
            if (i4 >= length) {
                break;
            }
            Method method3 = declaredMethods[i4];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i4++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i2);
            if (!strSubstring.endsWith("List") || strSubstring.endsWith("OrBuilderList") || strSubstring.equals("List") || (method2 = (Method) entry.getValue()) == null) {
                i3 = i2;
            } else {
                i3 = i2;
                if (method2.getReturnType().equals(List.class)) {
                    a(sb, i, strSubstring.substring(0, strSubstring.length() - 4), ih9.c(method2, ih9Var, new Object[0]));
                }
                i2 = i3;
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i, strSubstring.substring(0, strSubstring.length() - 3), ih9.c(method, ih9Var, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(strSubstring.substring(0, strSubstring.length() - 5))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objC = ih9.c(method4, ih9Var, new Object[0]);
                    if (method5 == null) {
                        if (objC instanceof Boolean) {
                            if (((Boolean) objC).booleanValue()) {
                                a(sb, i, strSubstring, objC);
                            }
                        } else if (objC instanceof Integer) {
                            if (((Integer) objC).intValue() != 0) {
                                a(sb, i, strSubstring, objC);
                            }
                        } else if (objC instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objC).floatValue()) != 0) {
                                a(sb, i, strSubstring, objC);
                            }
                        } else if (!(objC instanceof Double)) {
                            if (objC instanceof String) {
                                zEquals = objC.equals("");
                            } else if (objC instanceof hg9) {
                                zEquals = objC.equals(hg9.c);
                            } else if (objC instanceof jf9) {
                                if (objC != ((ih9) ((ih9) ((jf9) objC)).h(6))) {
                                    a(sb, i, strSubstring, objC);
                                }
                            } else if (!(objC instanceof Enum) || ((Enum) objC).ordinal() != 0) {
                                a(sb, i, strSubstring, objC);
                            }
                            if (!zEquals) {
                                a(sb, i, strSubstring, objC);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objC).doubleValue()) != 0) {
                            a(sb, i, strSubstring, objC);
                        }
                    } else if (((Boolean) ih9.c(method5, ih9Var, new Object[0])).booleanValue()) {
                        a(sb, i, strSubstring, objC);
                    }
                }
            }
            i2 = i3;
        }
        il9 il9Var = ih9Var.zzc;
        if (il9Var != null) {
            for (int i5 = 0; i5 < il9Var.a; i5++) {
                a(sb, i, String.valueOf(il9Var.b[i5] >>> 3), il9Var.c[i5]);
            }
        }
    }
}
