package defpackage;

import java.time.ZonedDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Delete")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class vh2 {

    @at2(name = "Quiet", required = false)
    private boolean a;

    @gt2(inline = true, name = "Object")
    private List<a> b;

    public vh2(List<a> list, boolean z) {
        Objects.requireNonNull(list, "Object list must not be null");
        zy5 zy5Var = ki8.a;
        this.b = Collections.unmodifiableList(list);
        this.a = z;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Object")
    public static class a {

        @at2(name = "Key")
        private String a;

        @at2(name = "VersionId", required = false)
        private String b;

        @at2(name = "ETag", required = false)
        private String c;

        @at2(name = "LastModifiedTime", required = false)
        private C0017a d;

        @at2(name = "Size", required = false)
        private Long e;

        /* JADX INFO: renamed from: vh2$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        @no6
        @xv1(C0018a.class)
        public static class C0017a {
            private ZonedDateTime a;

            /* JADX INFO: renamed from: vh2$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
            public static class C0018a implements aw1 {
                @Override // defpackage.aw1
                public final void a(ev5 ev5Var, Object obj) {
                    ev5Var.setValue(((C0017a) obj).toString());
                }

                @Override // defpackage.aw1
                public final Object b(mc4 mc4Var) {
                    return C0017a.a(mc4Var.getValue());
                }
            }

            public C0017a(ZonedDateTime zonedDateTime) {
                this.a = zonedDateTime;
            }

            public static C0017a a(String str) {
                return new C0017a(ZonedDateTime.parse(str, h38.e));
            }

            public String toString() {
                return this.a.format(h38.e);
            }
        }

        public a(String str, String str2, String str3, ZonedDateTime zonedDateTime, Long l) {
            this(str, str2);
            this.c = str3;
            this.d = zonedDateTime == null ? null : new C0017a(zonedDateTime);
            this.e = l;
        }

        public a(String str, String str2) {
            this(str);
            this.b = str2;
        }

        public a(String str) {
            this.a = str;
        }
    }
}
