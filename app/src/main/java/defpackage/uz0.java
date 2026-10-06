package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class uz0 implements rn4, Serializable {
    public static final Object NO_RECEIVER = tz0.a;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient rn4 reflected;
    private final String signature;

    public uz0(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }

    @Override // defpackage.rn4
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // defpackage.rn4
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public rn4 compute() {
        rn4 rn4Var = this.reflected;
        if (rn4Var != null) {
            return rn4Var;
        }
        rn4 rn4VarComputeReflected = computeReflected();
        this.reflected = rn4VarComputeReflected;
        return rn4VarComputeReflected;
    }

    public abstract rn4 computeReflected();

    @Override // defpackage.qn4
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override // defpackage.rn4
    public String getName() {
        return this.name;
    }

    public tn4 getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (!this.isTopLevel) {
            return ph6.a(cls);
        }
        ph6.a.getClass();
        return new dw5(cls);
    }

    @Override // defpackage.rn4
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    public abstract rn4 getReflected();

    @Override // defpackage.rn4
    public eo4 getReturnType() {
        getReflected().getReturnType();
        return null;
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // defpackage.rn4
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // defpackage.rn4
    public fo4 getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // defpackage.rn4
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // defpackage.rn4
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // defpackage.rn4
    public boolean isOpen() {
        return getReflected().isOpen();
    }
}
