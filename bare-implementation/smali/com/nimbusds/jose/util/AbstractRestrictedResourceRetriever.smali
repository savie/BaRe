.class public abstract Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/util/RestrictedResourceRetriever;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private connectTimeout:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private readTimeout:I

.field private sizeLimit:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->setConnectTimeout(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->setReadTimeout(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->setSizeLimit(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->connectTimeout:I

    .line 2
    .line 3
    return p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getReadTimeout()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->readTimeout:I

    .line 2
    .line 3
    return p0
.end method

.method public getSizeLimit()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->sizeLimit:I

    .line 2
    .line 3
    return p0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->connectTimeout:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "The connect timeout must not be negative"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->readTimeout:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "The read timeout must not be negative"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSizeLimit(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;->sizeLimit:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "The size limit must not be negative"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
