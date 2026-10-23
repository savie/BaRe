package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class eh8 extends gf {

    @q03
    @y77("email")
    private String email;

    @q03
    @y77("emailverified")
    private boolean isEmailVerified;

    @q03
    @y77("quota")
    private long totalQuota;

    @q03
    @y77("usedquota")
    private long usedQuota;

    @q03
    @y77("userid")
    private long userId;

    public final String d() {
        return this.email;
    }

    public final long e() {
        return this.totalQuota;
    }

    public final long f() {
        return this.usedQuota;
    }

    public final long g() {
        return this.userId;
    }

    public final boolean h() {
        return this.isEmailVerified;
    }
}
