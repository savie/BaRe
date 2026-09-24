package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iw7 extends g3 {
    public final ArrayList c;
    public final ArrayList d;
    public final hw7 a = new hw7();
    public final ArrayList b = new ArrayList();
    public boolean e = true;

    public iw7(ArrayList arrayList, ArrayList arrayList2) {
        this.c = arrayList;
        this.d = arrayList2;
    }

    public static ArrayList i(CharSequence charSequence) {
        String strTrim = charSequence.toString().trim();
        if (strTrim.startsWith("|")) {
            strTrim = strTrim.substring(1);
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < strTrim.length()) {
            char cCharAt = strTrim.charAt(i);
            if (cCharAt == '\\') {
                int i2 = i + 1;
                if (i2 >= strTrim.length() || strTrim.charAt(i2) != '|') {
                    sb.append('\\');
                } else {
                    sb.append('|');
                    i = i2;
                }
            } else if (cCharAt != '|') {
                sb.append(cCharAt);
            } else {
                arrayList.add(sb.toString());
                sb.setLength(0);
            }
            i++;
        }
        if (sb.length() > 0) {
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    @Override // defpackage.g3
    public final void a(CharSequence charSequence) {
        if (this.e) {
            this.e = false;
        } else {
            this.b.add(charSequence);
        }
    }

    @Override // defpackage.g3
    public final ws0 e() {
        return this.a;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.g3
    public final void g(ic4 ic4Var) {
        ArrayList arrayList;
        ArrayList arrayList2 = this.d;
        int size = arrayList2.size();
        mw7 mw7Var = new mw7();
        hw7 hw7Var = this.a;
        hw7Var.b(mw7Var);
        on5 ww7Var = new ww7();
        mw7Var.b(ww7Var);
        int i = 0;
        while (true) {
            arrayList = this.c;
            if (i >= size) {
                break;
            }
            String str = (String) arrayList2.get(i);
            lw7 lw7Var = new lw7();
            if (i < arrayList.size()) {
                lw7Var.g = (kw7) arrayList.get(i);
            }
            ic4Var.f(str.trim(), lw7Var);
            lw7Var.f = true;
            ww7Var.b(lw7Var);
            i++;
        }
        Iterator it = this.b.iterator();
        on5 jw7Var = null;
        while (it.hasNext()) {
            ArrayList arrayListI = i((CharSequence) it.next());
            on5 ww7Var2 = new ww7();
            int i2 = 0;
            while (i2 < size) {
                String str2 = i2 < arrayListI.size() ? (String) arrayListI.get(i2) : "";
                lw7 lw7Var2 = new lw7();
                if (i2 < arrayList.size()) {
                    lw7Var2.g = (kw7) arrayList.get(i2);
                }
                ic4Var.f(str2.trim(), lw7Var2);
                ww7Var2.b(lw7Var2);
                i2++;
            }
            if (jw7Var == null) {
                jw7Var = new jw7();
                hw7Var.b(jw7Var);
            }
            jw7Var.b(ww7Var2);
        }
    }

    @Override // defpackage.g3
    public final ys0 h(un2 un2Var) {
        if (un2Var.a.toString().contains("|")) {
            return ys0.a(un2Var.b);
        }
        return null;
    }
}
