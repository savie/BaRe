package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Tag")
public class gx7 {

    @at2(name = "Key")
    private String a;

    @at2(name = "Value", required = false)
    @xv1(cq7.class)
    private String b;

    public gx7(@at2(name = "Key") String str, @at2(name = "Value", required = false) String str2) {
        Objects.requireNonNull(str, "Key must not be null");
        if (str.isEmpty()) {
            c6.f("Key must not be empty");
            throw null;
        }
        this.a = str;
        this.b = str2;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String toString() {
        return eq3.l("Tag{key=", ki8.e(this.a), ", value=", ki8.e(this.b), "}");
    }
}
