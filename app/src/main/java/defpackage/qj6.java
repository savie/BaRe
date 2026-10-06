package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ReplicationConfiguration")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class qj6 {

    @at2(name = "Role", required = false)
    private String a;

    @gt2(inline = true, name = "Rule")
    private List<k> b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "AccessControlTranslation")
    public static class a {

        @at2(name = "Owner")
        private String a;

        public a(@at2(name = "Owner") String str) {
            this.a = "Destination";
            Objects.requireNonNull(str, "Owner must not be null");
            this.a = str;
        }

        public String a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("AccessControlTranslation{owner=", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "DeleteMarkerReplication")
    public static class b {

        @at2(name = "Status", required = false)
        private xm7 a;

        public b(@at2(name = "Status", required = false) xm7 xm7Var) {
            this.a = xm7Var == null ? xm7.DISABLED : xm7Var;
        }

        public xm7 a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("DeleteMarkerReplication{status=", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "DeleteReplication")
    public static class c {

        @at2(name = "Status", required = false)
        private xm7 a;

        public c(@at2(name = "Status", required = false) xm7 xm7Var) {
            this.a = xm7Var == null ? xm7.DISABLED : xm7Var;
        }

        public xm7 a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("DeleteReplication{status=", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Destination")
    public static class d {

        @at2(name = "AccessControlTranslation", required = false)
        private a a;

        @at2(name = "Account", required = false)
        private String b;

        @at2(name = "Bucket")
        private String c;

        @at2(name = "EncryptionConfiguration", required = false)
        private e d;

        @at2(name = "Metrics", required = false)
        private g e;

        @at2(name = "ReplicationTime", required = false)
        private i f;

        @at2(name = "StorageClass", required = false)
        private String g;

        public d(@at2(name = "AccessControlTranslation", required = false) a aVar, @at2(name = "Account", required = false) String str, @at2(name = "Bucket") String str2, @at2(name = "EncryptionConfiguration", required = false) e eVar, @at2(name = "Metrics", required = false) g gVar, @at2(name = "ReplicationTime", required = false) i iVar, @at2(name = "StorageClass", required = false) String str3) {
            this.a = aVar;
            this.b = str;
            Objects.requireNonNull(str2, "Bucket ARN must not be null");
            this.c = str2;
            this.d = eVar;
            this.e = gVar;
            this.f = iVar;
            this.g = str3;
        }

        public a a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public String c() {
            return this.c;
        }

        public e d() {
            return this.d;
        }

        public g e() {
            return this.e;
        }

        public i f() {
            return this.f;
        }

        public String g() {
            return this.g;
        }

        public String toString() {
            String strE = ki8.e(this.a);
            String strE2 = ki8.e(this.b);
            String strE3 = ki8.e(this.c);
            String strE4 = ki8.e(this.d);
            String strE5 = ki8.e(this.e);
            String strE6 = ki8.e(this.f);
            String strE7 = ki8.e(this.g);
            StringBuilder sbP = u48.p("Destination{accessControlTranslation=", strE, ", account=", strE2, ", bucketArn=");
            xs1.t(sbP, strE3, ", encryptionConfiguration=", strE4, ", metrics=");
            xs1.t(sbP, strE5, ", replicationTime=", strE6, ", storageClass=");
            return dj7.n(sbP, strE7, "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "EncryptionConfiguration")
    public static class e {

        @at2(name = "ReplicaKmsKeyID", required = false)
        private String a;

        public e(@at2(name = "ReplicaKmsKeyID", required = false) String str) {
            this.a = str;
        }

        public String a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("EncryptionConfiguration{replicaKmsKeyID=", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "ExistingObjectReplication")
    public static class f {

        @at2(name = "Status")
        private xm7 a;

        public f(@at2(name = "Status") xm7 xm7Var) {
            Objects.requireNonNull(xm7Var, "Status must not be null");
            this.a = xm7Var;
        }

        public xm7 a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("ExistingObjectReplication{status=", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Metrics")
    public static class g {

        @at2(name = "EventThreshold")
        private j a;

        @at2(name = "Status")
        private xm7 b;

        public g(@at2(name = "EventThreshold") j jVar, @at2(name = "Status") xm7 xm7Var) {
            Objects.requireNonNull(jVar, "Event threshold must not be null");
            this.a = jVar;
            Objects.requireNonNull(xm7Var, "Status must not be null");
            this.b = xm7Var;
        }

        public j a() {
            return this.a;
        }

        public xm7 b() {
            return this.b;
        }

        public String toString() {
            return eq3.l("Metrics{eventThreshold=", ki8.e(this.a), ", status=", ki8.e(this.b), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "ReplicaModifications")
    public static class h {

        @at2(name = "Status")
        private xm7 a;

        public h(@at2(name = "Status") xm7 xm7Var) {
            Objects.requireNonNull(xm7Var, "Status must not be null");
            this.a = xm7Var;
        }

        public xm7 a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("ReplicaModifications{status=", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "ReplicationTime")
    public static class i {

        @at2(name = "Time")
        private j a;

        @at2(name = "Status")
        private xm7 b;

        public i(@at2(name = "Time") j jVar, @at2(name = "Status") xm7 xm7Var) {
            Objects.requireNonNull(jVar, "Time must not be null");
            this.a = jVar;
            Objects.requireNonNull(xm7Var, "Status must not be null");
            this.b = xm7Var;
        }

        public xm7 a() {
            return this.b;
        }

        public j b() {
            return this.a;
        }

        public String toString() {
            return eq3.l("ReplicationTime{time=", ki8.e(this.a), ", status=", ki8.e(this.b), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "ReplicationTimeValue")
    public static class j {

        @at2(name = "Minutes", required = false)
        private Integer a;

        public j(@at2(name = "Minutes", required = false) Integer num) {
            this.a = num;
        }

        public Integer a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("ReplicationTimeValue{minutes=", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Rule")
    public static class k {

        @at2(name = "Status")
        private xm7 a;

        @at2(name = "Destination")
        private d b;

        @at2(name = "DeleteMarkerReplication", required = false)
        private b c;

        @at2(name = "ExistingObjectReplication", required = false)
        private f d;

        @at2(name = "Filter", required = false)
        private pc3 e;

        @at2(name = "ID", required = false)
        private String f;

        @at2(name = "Prefix", required = false)
        @xv1(cq7.class)
        private String g;

        @at2(name = "Priority", required = false)
        private Integer h;

        @at2(name = "SourceSelectionCriteria", required = false)
        private l i;

        @at2(name = "DeleteReplication", required = false)
        private c j;

        public k(@at2(name = "Status") xm7 xm7Var, @at2(name = "Destination") d dVar, @at2(name = "DeleteMarkerReplication", required = false) b bVar, @at2(name = "ExistingObjectReplication", required = false) f fVar, @at2(name = "Filter", required = false) pc3 pc3Var, @at2(name = "ID", required = false) String str, @at2(name = "Prefix", required = false) String str2, @at2(name = "Priority", required = false) Integer num, @at2(name = "SourceSelectionCriteria", required = false) l lVar, @at2(name = "DeleteReplication", required = false) c cVar) {
            if (pc3Var != null && bVar == null) {
                bVar = new b(null);
            }
            if (str != null) {
                str = str.trim();
                if (str.isEmpty()) {
                    c6.f("ID must be non-empty string");
                    throw null;
                }
                if (str.length() > 255) {
                    c6.f("ID must be exceed 255 characters");
                    throw null;
                }
            }
            Objects.requireNonNull(xm7Var, "Status must not be null");
            this.a = xm7Var;
            Objects.requireNonNull(dVar, "Destination must not be null");
            this.b = dVar;
            this.c = bVar;
            this.d = fVar;
            this.e = pc3Var;
            this.f = str;
            this.g = str2;
            this.h = num;
            this.i = lVar;
            this.j = cVar;
        }

        public b a() {
            return this.c;
        }

        public c b() {
            return this.j;
        }

        public d c() {
            return this.b;
        }

        public f d() {
            return this.d;
        }

        public pc3 e() {
            return this.e;
        }

        public String f() {
            return this.f;
        }

        public String g() {
            return this.g;
        }

        public Integer h() {
            return this.h;
        }

        public l i() {
            return this.i;
        }

        public xm7 j() {
            return this.a;
        }

        public String toString() {
            String strE = ki8.e(this.c);
            String strE2 = ki8.e(this.b);
            String strE3 = ki8.e(this.d);
            String strE4 = ki8.e(this.e);
            String strE5 = ki8.e(this.f);
            String strE6 = ki8.e(this.g);
            String strE7 = ki8.e(this.h);
            String strE8 = ki8.e(this.i);
            String strE9 = ki8.e(this.j);
            String strE10 = ki8.e(this.a);
            StringBuilder sbP = u48.p("Rule{deleteMarkerReplication=", strE, ", destination=", strE2, ", existingObjectReplication=");
            xs1.t(sbP, strE3, ", filter=", strE4, ", id=");
            xs1.t(sbP, strE5, ", prefix=", strE6, ", priority=");
            xs1.t(sbP, strE7, ", sourceSelectionCriteria=", strE8, ", deleteReplication=");
            return eq3.o(sbP, strE9, ", status=", strE10, "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "SourceSelectionCriteria")
    public static class l {

        @at2(name = "ReplicaModifications", required = false)
        private h a;

        @at2(name = "SseKmsEncryptedObjects", required = false)
        private m b;

        public l(@at2(name = "SseKmsEncryptedObjects", required = false) m mVar, @at2(name = "ReplicaModifications", required = false) h hVar) {
            this.b = mVar;
            this.a = hVar;
        }

        public h a() {
            return this.a;
        }

        public m b() {
            return this.b;
        }

        public String toString() {
            return eq3.l("SourceSelectionCriteria{replicaModifications=", ki8.e(this.a), ", sseKmsEncryptedObjects=", ki8.e(this.b), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "SseKmsEncryptedObjects")
    public static class m {

        @at2(name = "Status")
        private xm7 a;

        public m(@at2(name = "Status") xm7 xm7Var) {
            Objects.requireNonNull(xm7Var, "Status must not be null");
            this.a = xm7Var;
        }

        public xm7 a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("SseKmsEncryptedObjects{status=", ki8.e(this.a), "}");
        }
    }

    public qj6(@at2(name = "Role", required = false) String str, @gt2(inline = true, name = "Rule") List<k> list) {
        this.a = str;
        Objects.requireNonNull(list, "Rules must not be null");
        zy5 zy5Var = ki8.a;
        this.b = Collections.unmodifiableList(list);
        if (list.isEmpty()) {
            c6.f("Rules must not be empty");
            throw null;
        }
        if (list.size() <= 1000) {
            return;
        }
        c6.f("More than 1000 rules are not supported");
        throw null;
    }

    public String a() {
        return this.a;
    }

    public List<k> b() {
        return ki8.f(this.b);
    }

    public String toString() {
        return eq3.l("ReplicationConfiguration{role=", ki8.e(this.a), ", rules=", ki8.e(this.b), "}");
    }
}
