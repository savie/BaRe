package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dn0 {

    @at2(name = "Expression")
    private String a;

    @at2(name = "ExpressionType")
    private String b = "SQL";

    @at2(name = "InputSerialization")
    private oc4 c;

    @at2(name = "OutputSerialization")
    private gv5 d;

    public dn0(String str, oc4 oc4Var, gv5 gv5Var) {
        Objects.requireNonNull(str, "Expression must not be null");
        this.a = str;
        Objects.requireNonNull(oc4Var, "InputSerialization must not be null");
        this.c = oc4Var;
        Objects.requireNonNull(gv5Var, "OutputSerialization must not be null");
        this.d = gv5Var;
    }
}
