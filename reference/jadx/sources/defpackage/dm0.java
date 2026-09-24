package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "BasePartsResult", strict = false)
public abstract class dm0 {

    @at2(name = "IsTruncated", required = false)
    private boolean a;

    @at2(name = "MaxParts", required = false)
    private Integer b;

    @at2(name = "NextPartNumberMarker", required = false)
    private Integer c;

    @at2(name = "PartNumberMarker", required = false)
    private Integer d;

    @gt2(inline = true, name = "Part", required = false)
    private List<gx5> e;

    public boolean a() {
        return this.a;
    }

    public Integer b() {
        return this.b;
    }

    public Integer c() {
        return this.c;
    }

    public Integer d() {
        return this.d;
    }

    public List<gx5> e() {
        return ki8.f(this.e);
    }

    public String toString() {
        String strE = ki8.e(Boolean.valueOf(this.a));
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(this.e);
        StringBuilder sbP = u48.p("isTruncated=", strE, ", maxParts=", strE2, ", nextPartNumberMarker=");
        xs1.t(sbP, strE3, ", partNumberMarker=", strE4, ", parts=");
        sbP.append(strE5);
        return sbP.toString();
    }
}
