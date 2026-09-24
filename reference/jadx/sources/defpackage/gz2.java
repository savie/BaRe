package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Event")
@xv1(a.class)
public enum gz2 {
    OBJECT_CREATED_ANY("s3:ObjectCreated:*"),
    OBJECT_CREATED_PUT("s3:ObjectCreated:Put"),
    OBJECT_CREATED_POST("s3:ObjectCreated:Post"),
    OBJECT_CREATED_COPY("s3:ObjectCreated:Copy"),
    OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD("s3:ObjectCreated:CompleteMultipartUpload"),
    OBJECT_ACCESSED_GET("s3:ObjectAccessed:Get"),
    OBJECT_ACCESSED_HEAD("s3:ObjectAccessed:Head"),
    OBJECT_ACCESSED_ANY("s3:ObjectAccessed:*"),
    OBJECT_REMOVED_ANY("s3:ObjectRemoved:*"),
    OBJECT_REMOVED_DELETE("s3:ObjectRemoved:Delete"),
    OBJECT_REMOVED_DELETED_MARKER_CREATED("s3:ObjectRemoved:DeleteMarkerCreated"),
    REPLICATION_ANY("s3:Replication:*"),
    REPLICATION_OPERATION_FAILED_REPLICATION("s3:Replication:OperationFailedReplication"),
    REPLICATION_OPERATION_COMPLETED_REPLICATION("s3:Replication:OperationCompletedReplication"),
    REPLICATION_OPERATION_NOT_TRACKED("s3:Replication:OperationNotTracked"),
    REPLICATION_OPERATION_MISSED_THRESHOLD("s3:Replication:OperationMissedThreshold"),
    REPLICATION_OPERATION_REPLICATED_AFTER_THRESHOLD("s3:Replication:OperationReplicatedAfterThreshold"),
    REDUCED_REDUNDANCY_LOST_OBJECT("s3:ReducedRedundancyLostObject"),
    BUCKET_CREATED("s3:BucketCreated"),
    BUCKET_REMOVED("s3:BucketRemoved");

    private final String a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class a implements aw1 {
        @Override // defpackage.aw1
        public final void a(ev5 ev5Var, Object obj) {
            ev5Var.setValue(((gz2) obj).toString());
        }

        @Override // defpackage.aw1
        public final Object b(mc4 mc4Var) {
            return gz2.a(mc4Var.getValue());
        }
    }

    gz2(String str) {
        this.a = str;
    }

    @fj4
    public static gz2 a(String str) {
        String strJ = xs1.j("s3:", str);
        for (gz2 gz2Var : values()) {
            if (str.equals(gz2Var.a) || strJ.equals(gz2Var.a)) {
                return gz2Var;
            }
        }
        c6.f(eq3.k("Unknown event '", str, "'"));
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.a;
    }
}
