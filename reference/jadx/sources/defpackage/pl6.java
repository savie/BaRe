package defpackage;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pl6 implements jo4 {
    public static final f62 j = new f62(50);
    public final m35 b;
    public final jo4 c;
    public final jo4 d;
    public final int e;
    public final int f;
    public final Class g;
    public final ou5 h;
    public final l98 i;

    public pl6(m35 m35Var, jo4 jo4Var, jo4 jo4Var2, int i, int i2, l98 l98Var, Class cls, ou5 ou5Var) {
        this.b = m35Var;
        this.c = jo4Var;
        this.d = jo4Var2;
        this.e = i;
        this.f = i2;
        this.i = l98Var;
        this.g = cls;
        this.h = ou5Var;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        Object objE;
        m35 m35Var = this.b;
        synchronized (m35Var) {
            l35 l35Var = m35Var.b;
            s26 s26VarH = (s26) ((ArrayDeque) l35Var.b).poll();
            if (s26VarH == null) {
                s26VarH = l35Var.H();
            }
            k35 k35Var = (k35) s26VarH;
            k35Var.b = 8;
            k35Var.c = byte[].class;
            objE = m35Var.e(k35Var, byte[].class);
        }
        byte[] bArr = (byte[]) objE;
        ByteBuffer.wrap(bArr).putInt(this.e).putInt(this.f).array();
        this.d.b(messageDigest);
        this.c.b(messageDigest);
        messageDigest.update(bArr);
        l98 l98Var = this.i;
        if (l98Var != null) {
            l98Var.b(messageDigest);
        }
        this.h.b(messageDigest);
        f62 f62Var = j;
        Class cls = this.g;
        byte[] bytes = (byte[]) f62Var.a(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(jo4.a);
            f62Var.d(cls, bytes);
        }
        messageDigest.update(bytes);
        this.b.g(bArr);
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof pl6) {
            pl6 pl6Var = (pl6) obj;
            if (this.f == pl6Var.f && this.e == pl6Var.e && xh8.d(this.i, pl6Var.i) && this.g.equals(pl6Var.g) && this.c.equals(pl6Var.c) && this.d.equals(pl6Var.d) && this.h.equals(pl6Var.h)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        int iHashCode = ((((this.d.hashCode() + (this.c.hashCode() * 31)) * 31) + this.e) * 31) + this.f;
        l98 l98Var = this.i;
        if (l98Var != null) {
            iHashCode = (iHashCode * 31) + l98Var.hashCode();
        }
        int iHashCode2 = this.g.hashCode();
        return this.h.b.hashCode() + ((iHashCode2 + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.c + ", signature=" + this.d + ", width=" + this.e + ", height=" + this.f + ", decodedResourceClass=" + this.g + ", transformation='" + this.i + "', options=" + this.h + '}';
    }
}
