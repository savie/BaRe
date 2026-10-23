package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q81 implements i98 {
    public final /* synthetic */ int a;

    @Override // defpackage.i98
    public final Object a(String str) {
        Class cls;
        switch (this.a) {
            case 0:
                if (str.equals("byte")) {
                    cls = Byte.TYPE;
                } else if (str.equals("short")) {
                    cls = Short.TYPE;
                } else if (str.equals("int")) {
                    cls = Integer.TYPE;
                } else if (str.equals("long")) {
                    cls = Long.TYPE;
                } else if (str.equals("char")) {
                    cls = Character.TYPE;
                } else if (str.equals("float")) {
                    cls = Float.TYPE;
                } else if (str.equals("double")) {
                    cls = Double.TYPE;
                } else if (str.equals("boolean")) {
                    cls = Boolean.TYPE;
                } else {
                    cls = str.equals("void") ? Void.TYPE : null;
                }
                if (cls != null) {
                    return cls;
                }
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                if (contextClassLoader == null) {
                    contextClassLoader = q81.class.getClassLoader();
                }
                return contextClassLoader.loadClass(str);
            default:
                return Byte.valueOf(str);
        }
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        switch (this.a) {
            case 0:
                return ((Class) obj).getName();
            default:
                return ((Byte) obj).toString();
        }
    }
}
