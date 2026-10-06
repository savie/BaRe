package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eq7 implements ch5 {
    public final /* synthetic */ int a;
    public final ch5 b;

    public /* synthetic */ eq7(ch5 ch5Var, int i) {
        this.a = i;
        this.b = ch5Var;
    }

    @Override // defpackage.ch5
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        switch (this.a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        Uri uriFromFile;
        int i3 = this.a;
        ch5 ch5Var = this.b;
        switch (i3) {
            case 0:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    uriFromFile = null;
                } else if (str.charAt(0) == '/') {
                    uriFromFile = Uri.fromFile(new File(str));
                } else {
                    Uri uri = Uri.parse(str);
                    uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str)) : uri;
                }
                if (uriFromFile == null || !ch5Var.a(uriFromFile)) {
                    return null;
                }
                return ch5Var.b(uriFromFile, i, i2, ou5Var);
            default:
                return ch5Var.b(new sy3((URL) obj), i, i2, ou5Var);
        }
    }
}
