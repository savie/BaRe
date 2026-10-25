.class public final Lorg/swiftapps/swiftbackup/backend/BareSupabasePayloadWriteRunner;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final pathKey:Ljava/lang/String;
.field private final payloadJson:Ljava/lang/String;

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabasePayloadWriteRunner;->pathKey:Ljava/lang/String;
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabasePayloadWriteRunner;->payloadJson:Ljava/lang/String;
    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabasePayloadWriteRunner;->pathKey:Ljava/lang/String;
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabasePayloadWriteRunner;->payloadJson:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->writeUserPayload(Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v0
    return-void
.end method
