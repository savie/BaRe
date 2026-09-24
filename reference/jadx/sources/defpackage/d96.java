package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d96 extends uz0 implements co4 {
    public final boolean a;

    public d96(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.a = false;
    }

    @Override // defpackage.uz0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final co4 getReflected() {
        if (this.a) {
            g84.j("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
            return null;
        }
        rn4 rn4VarCompute = compute();
        if (rn4VarCompute != this) {
            return (co4) rn4VarCompute;
        }
        throw new by1("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    @Override // defpackage.uz0
    public final rn4 compute() {
        return this.a ? this : super.compute();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d96) {
            d96 d96Var = (d96) obj;
            return getOwner().equals(d96Var.getOwner()) && getName().equals(d96Var.getName()) && getSignature().equals(d96Var.getSignature()) && pe4.d(getBoundReceiver(), d96Var.getBoundReceiver());
        }
        if (obj instanceof co4) {
            return obj.equals(compute());
        }
        return false;
    }

    public final int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner().hashCode() * 31)) * 31);
    }

    public final String toString() {
        rn4 rn4VarCompute = compute();
        if (rn4VarCompute != this) {
            return rn4VarCompute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}
