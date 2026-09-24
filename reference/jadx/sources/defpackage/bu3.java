package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bu3 extends uz0 implements au3, ao4 {
    private final int arity;

    public bu3(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
    }

    @Override // defpackage.uz0
    public rn4 computeReflected() {
        ph6.a.getClass();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bu3) {
            bu3 bu3Var = (bu3) obj;
            return getName().equals(bu3Var.getName()) && getSignature().equals(bu3Var.getSignature()) && pe4.d(getBoundReceiver(), bu3Var.getBoundReceiver()) && pe4.d(getOwner(), bu3Var.getOwner());
        }
        if (obj instanceof ao4) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // defpackage.au3
    public int getArity() {
        return this.arity;
    }

    @Override // defpackage.uz0
    public ao4 getReflected() {
        rn4 rn4VarCompute = compute();
        if (rn4VarCompute != this) {
            return (ao4) rn4VarCompute;
        }
        throw new by1("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    @Override // defpackage.ao4
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // defpackage.ao4
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // defpackage.ao4
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // defpackage.ao4
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // defpackage.ao4
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        rn4 rn4VarCompute = compute();
        if (rn4VarCompute != this) {
            return rn4VarCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }
}
