package defpackage;

import java.util.Objects;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fw0 extends ll0 {
    protected String d;
    protected String e;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends fw0> extends ll0.a<B, A> {
        private static final Pattern c = Pattern.compile("^[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]$");
        protected boolean b = false;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void r(String str, fw0 fw0Var) {
            fw0Var.e = str;
        }

        private void w(String str) {
            if (this.b || str == null || ki8.g.matcher(str).find()) {
                return;
            }
            c6.f("invalid region ".concat(str));
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B p(String str) {
            v(str);
            this.a.add(new ew0(str, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B s(String str) {
            w(str);
            this.a.add(new dw0(str, 0));
            return this;
        }

        public B t(boolean z) {
            this.b = z;
            return this;
        }

        @Override // ll0.a
        public void u(A a) {
            v(a.d);
        }

        public void v(String str) {
            ki8.i(str, "bucket name");
            if (this.b) {
                return;
            }
            if (!c.matcher(str).find()) {
                c6.f(eq3.k("bucket name '", str, "' does not follow Amazon S3 standards. For more information refer https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html"));
                return;
            }
            if (ki8.a.b.a(str)) {
                c6.f(eq3.k("bucket name '", str, "' must not be formatted as an IP address"));
            } else if (str.contains("..") || str.contains(".-") || str.contains("-.")) {
                c6.f(eq3.k("bucket name '", str, "' cannot contain successive characters '..', '.-' and '-.'"));
            }
        }
    }

    public fw0(fw0 fw0Var) {
        super(fw0Var);
        this.d = fw0Var.d;
        this.e = fw0Var.e;
    }

    @Override // defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fw0) || !super.equals(obj)) {
            return false;
        }
        fw0 fw0Var = (fw0) obj;
        return Objects.equals(this.d, fw0Var.d) && Objects.equals(this.e, fw0Var.e);
    }

    public String f() {
        return this.d;
    }

    public String g() {
        return this.e;
    }

    @Override // defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.d, this.e);
    }

    public fw0() {
    }
}
