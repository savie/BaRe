package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "NotificationConfiguration", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class xo5 {

    @gt2(inline = true, name = "CloudFunctionConfiguration", required = false)
    private List<b> a;

    @gt2(inline = true, name = "QueueConfiguration", required = false)
    private List<f> b;

    @gt2(inline = true, name = "TopicConfiguration", required = false)
    private List<g> c;

    @at2(name = "EventBridgeConfiguration", required = false)
    private c d;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a {

        @at2(name = "Id", required = false)
        private String a;

        @gt2(entry = "Event", inline = true)
        private List<String> b;

        @at2(name = "Filter", required = false)
        private d c;

        public a(String str, List<String> list, d dVar) {
            this.a = str;
            Objects.requireNonNull(list, "Events must not be null");
            zy5 zy5Var = ki8.a;
            this.b = Collections.unmodifiableList(list);
            this.c = dVar;
        }

        public List<String> a() {
            return ki8.f(this.b);
        }

        public d b() {
            return this.c;
        }

        public String c() {
            return this.a;
        }

        public String toString() {
            String strE = ki8.e(this.a);
            String strE2 = ki8.e(this.b);
            String strE3 = ki8.e(this.c);
            StringBuilder sbP = u48.p("id=", strE, ", events=", strE2, ", filter=");
            sbP.append(strE3);
            return sbP.toString();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "CloudFunctionConfiguration", strict = false)
    public static class b extends a {

        @at2(name = "CloudFunction")
        private String d;

        public b(@at2(name = "CloudFunction") String str, @at2(name = "Id", required = false) String str2, @gt2(entry = "Event", inline = true) List<String> list, @at2(name = "Filter", required = false) d dVar) {
            super(str2, list, dVar);
            this.d = str;
        }

        public String d() {
            return this.d;
        }

        @Override // xo5.a
        public String toString() {
            return eq3.l("CloudFunctionConfiguration{cloudFunction=", ki8.e(this.d), ", ", super.toString(), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "EventBridgeConfiguration")
    public static class c {
        public String toString() {
            return "EventBridgeConfiguration{}";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "FilterRule")
    public static class e {

        @at2(name = "Name")
        private String a;

        @at2(name = "Value")
        private String b;

        public e(@at2(name = "Name") String str, @at2(name = "Value") String str2) {
            Objects.requireNonNull(str, "Name must not be null");
            if (!"prefix".equals(str) && !"suffix".equals(str)) {
                c6.f("Name must be 'prefix' or 'suffix'");
                throw null;
            }
            Objects.requireNonNull(str2, "Value must not be null");
            this.a = str;
            this.b = str2;
        }

        public static e b(String str) {
            return new e("prefix", str);
        }

        public static e c(String str) {
            return new e("suffix", str);
        }

        public String a() {
            return this.a;
        }

        public String d() {
            return this.b;
        }

        public String toString() {
            return eq3.l("FilterRule{name=", ki8.e(this.a), ", value=", ki8.e(this.b), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "QueueConfiguration", strict = false)
    public static class f extends a {

        @at2(name = "Queue")
        private String d;

        public f(@at2(name = "Queue") String str, @at2(name = "Id", required = false) String str2, @gt2(entry = "Event", inline = true) List<String> list, @at2(name = "Filter", required = false) d dVar) {
            super(str2, list, dVar);
            this.d = str;
        }

        public String d() {
            return this.d;
        }

        @Override // xo5.a
        public String toString() {
            return eq3.l("QueueConfiguration{queue=", ki8.e(this.d), ", ", super.toString(), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "TopicConfiguration", strict = false)
    public static class g extends a {

        @at2(name = "Topic")
        private String d;

        public g(@at2(name = "Topic") String str, @at2(name = "Id", required = false) String str2, @gt2(entry = "Event", inline = true) List<String> list, @at2(name = "Filter", required = false) d dVar) {
            super(str2, list, dVar);
            this.d = str;
        }

        public String d() {
            return this.d;
        }

        @Override // xo5.a
        public String toString() {
            return eq3.l("TopicConfiguration{topic=", ki8.e(this.d), ", ", super.toString(), "}");
        }
    }

    public xo5(@gt2(inline = true, name = "CloudFunctionConfiguration", required = false) List<b> list, @gt2(inline = true, name = "QueueConfiguration", required = false) List<f> list2, @gt2(inline = true, name = "TopicConfiguration", required = false) List<g> list3, @at2(name = "EventBridgeConfiguration", required = false) c cVar) {
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.d = cVar;
    }

    public List<b> a() {
        return ki8.f(this.a);
    }

    public c b() {
        return this.d;
    }

    public List<f> c() {
        return ki8.f(this.b);
    }

    public List<g> d() {
        return ki8.f(this.c);
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        return eq3.o(u48.p("NotificationConfiguration{cloudFunctionConfigurations=", strE, ", queueConfigurations=", strE2, ", topicConfigurations="), ki8.e(this.c), ", eventBridgeConfiguration=", ki8.e(this.d), "}");
    }

    private xo5() {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Filter")
    public static class d {

        @gt2(inline = true, name = "FilterRule")
        @fy5("S3Key")
        private List<e> a;

        public d(@gt2(inline = true, name = "FilterRule") @fy5("S3Key") List<e> list) {
            Objects.requireNonNull(list, "Filter rules must not be null");
            if (list.size() < 1) {
                c6.f("At least one rule must be provided");
                throw null;
            }
            if (list.size() > 2) {
                c6.f("Maximum two rules must be provided");
                throw null;
            }
            if (list.size() == 2 && list.get(0).a().equals(list.get(1).a())) {
                z5.d(list.get(0).a(), "' must not be same", "Two rules '");
                throw null;
            }
            zy5 zy5Var = ki8.a;
            this.a = Collections.unmodifiableList(list);
        }

        public List<e> a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("Filter{rules=", ki8.e(this.a), "}");
        }

        public d(String str, String str2) {
            if (str == null && str2 == null) {
                c6.f("Either prefix or suffix must be provided");
                throw null;
            }
            ArrayList arrayList = new ArrayList();
            if (str != null) {
                arrayList.add(e.b(str));
            }
            if (str2 != null) {
                arrayList.add(e.c(str2));
            }
            zy5 zy5Var = ki8.a;
            this.a = Collections.unmodifiableList(arrayList);
        }
    }
}
