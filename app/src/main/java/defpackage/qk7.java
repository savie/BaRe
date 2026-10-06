package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ServerSideEncryptionConfiguration", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class qk7 {

    @at2(name = "Rule", required = false)
    private a a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Rule", strict = false)
    @jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
    public static class a {

        @at2(name = "KMSMasterKeyID", required = false)
        @fy5("ApplyServerSideEncryptionByDefault")
        private String a;

        @at2(name = "SSEAlgorithm")
        @fy5("ApplyServerSideEncryptionByDefault")
        private pk7 b;

        public a(@at2(name = "SSEAlgorithm") pk7 pk7Var, @at2(name = "KMSMasterKeyID", required = false) String str) {
            Objects.requireNonNull(pk7Var, "SSE Algorithm must be provided");
            this.b = pk7Var;
            this.a = str;
        }

        public String a() {
            return this.a;
        }

        public pk7 b() {
            return this.b;
        }

        public String toString() {
            return eq3.l("Rule{sseAlgorithm=", ki8.e(this.b), ", kmsMasterKeyId=", ki8.e(this.a), "}");
        }
    }

    public qk7(@at2(name = "Rule", required = false) a aVar) {
        this.a = aVar;
    }

    public static qk7 a(String str) {
        return new qk7(new a(pk7.AWS_KMS, str));
    }

    public static qk7 b() {
        return new qk7(new a(pk7.AES256, null));
    }

    public a c() {
        return this.a;
    }

    public String toString() {
        return eq3.k("SseConfiguration{rule=", ki8.e(this.a), "}");
    }
}
