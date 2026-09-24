package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ObjectLockConfiguration", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class pr5 {

    @at2(name = "ObjectLockEnabled")
    private String a = "Enabled";

    @at2(name = "Rule", required = false)
    private d b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum b {
        DAYS,
        YEARS
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Rule", strict = false)
    public static class d {

        @at2(name = "Mode", required = false)
        @fy5("DefaultRetention")
        private kn6 a;

        @ut2
        @fy5("DefaultRetention")
        private or5 b;

        public d(@at2(name = "Mode", required = false) kn6 kn6Var, @ut2 or5 or5Var) {
            if (kn6Var != null && or5Var != null) {
                this.a = kn6Var;
                this.b = or5Var;
            } else {
                if (kn6Var == null && or5Var == null) {
                    return;
                }
                if (kn6Var == null) {
                    c6.f("mode is null");
                    throw null;
                }
                c6.f("duration is null");
                throw null;
            }
        }

        public or5 a() {
            return this.b;
        }

        public kn6 b() {
            return this.a;
        }

        public String toString() {
            return eq3.l("Rule{mode=", ki8.e(this.a), ", duration=", ki8.e(this.b), "}");
        }
    }

    public pr5(kn6 kn6Var, or5 or5Var) {
        this.b = new d(kn6Var, or5Var);
    }

    public or5 a() {
        d dVar = this.b;
        if (dVar != null) {
            return dVar.a();
        }
        return null;
    }

    public kn6 b() {
        d dVar = this.b;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    public String toString() {
        return eq3.l("ObjectLockConfiguration{objectLockEnabled=", ki8.e(this.a), ", rule=", ki8.e(this.b), "}");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Days")
    public static class a implements or5 {

        @q08(required = false)
        private Integer a;

        public a(int i) {
            this.a = Integer.valueOf(i);
        }

        public int a() {
            return this.a.intValue();
        }

        public b b() {
            return b.DAYS;
        }

        public String toString() {
            return eq3.k("RetentionDurationDays{", ki8.e(this.a), "}");
        }

        public a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Years")
    public static class c implements or5 {

        @q08(required = false)
        private Integer a;

        public c(int i) {
            this.a = Integer.valueOf(i);
        }

        public int a() {
            return this.a.intValue();
        }

        public b b() {
            return b.YEARS;
        }

        public String toString() {
            return eq3.k("RetentionDurationYears{", ki8.e(this.a), "}");
        }

        public c() {
        }
    }

    public pr5() {
    }
}
