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
    .locals 5

    const/4 v0, 0x0

    :retry_payload_write
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabasePayloadWriteRunner;->pathKey:Ljava/lang/String;
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/backend/BareSupabasePayloadWriteRunner;->payloadJson:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->writeUserPayload(Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v1

    if-eqz v1, :payload_write_failed
    iget-boolean v2, v1, Laf3;->a:Z
    if-nez v2, :payload_write_done

    :payload_write_failed
    add-int/lit8 v0, v0, 0x1
    const/4 v2, 0x3
    if-ge v0, v2, :payload_write_exhausted

    # Bounded exponential backoff: 500ms, then 1000ms.
    const/16 v2, 0x1f4
    shl-int/2addr v2, v0
    :try_start_backoff
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_backoff
    .catch Ljava/lang/InterruptedException; {:try_start_backoff .. :try_end_backoff} :payload_write_interrupted
    goto :retry_payload_write

    :payload_write_interrupted
    move-exception v4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    return-void

    :payload_write_exhausted
    const-string v1, "BΛR☰Backend"
    const-string v2, "Supabase payload write failed after 3 attempts; latest Firebase value remains authoritative."
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :payload_write_done
    return-void
.end method
