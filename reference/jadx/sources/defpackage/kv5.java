package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Owner", strict = false)
public class kv5 {

    @at2(name = "ID", required = false)
    private String a;

    @at2(name = "DisplayName", required = false)
    private String b;

    public String a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public String toString() {
        return eq3.l("Owner{id=", ki8.e(this.a), ", displayName=", ki8.e(this.b), "}");
    }
}
