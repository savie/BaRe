package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x40 extends y23 {
    public final gd4 f(mc4 mc4Var) throws kd5 {
        vb8 vb8Var = (vb8) this.d;
        tr9 position = mc4Var.getPosition();
        wi8 wi8VarA = a(mc4Var);
        if (wi8VarA == null) {
            throw new wt1("Array length required for %s at %s", vb8Var, position);
        }
        Class type = wi8VarA.getType();
        Class clsB = b();
        if (!clsB.isArray()) {
            throw new w70("The %s not an array for %s", clsB, vb8Var);
        }
        Class<?> componentType = clsB.getComponentType();
        if (componentType.isAssignableFrom(type)) {
            return new y40(wi8VarA);
        }
        throw new w70("Array of type %s cannot hold %s for %s", componentType, type, vb8Var);
    }
}
