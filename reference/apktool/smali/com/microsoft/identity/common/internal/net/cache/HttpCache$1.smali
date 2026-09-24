.class final Lcom/microsoft/identity/common/internal/net/cache/HttpCache$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/cache/HttpCache$IHttpCacheCallback;


# virtual methods
.method public final flush()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/http/HttpResponseCache;->flush()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 12
    .line 13
    const-string p0, "HttpCache:flush"

    .line 14
    .line 15
    const-string v0, "Unable to flush cache because none is installed."

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
