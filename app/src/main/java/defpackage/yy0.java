package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "CORSConfiguration", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class yy0 {

    @gt2(inline = true, name = "CORSRule", required = false)
    private List<Object> a;

    public yy0(@gt2(name = "CORSRule", required = false) List<Object> list) {
        this.a = list;
    }

    public List<Object> a() {
        return ki8.f(this.a);
    }

    public String toString() {
        return eq3.k("CORSConfiguration{rules=", ki8.e(this.a), "}");
    }
}
