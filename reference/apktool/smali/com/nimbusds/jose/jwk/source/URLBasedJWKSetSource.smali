.class public Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSetSource;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final resourceRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "The URL must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;->url:Ljava/net/URL;

    .line 10
    .line 11
    const-string p1, "The resource retriever must not be null"

    .line 12
    .line 13
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;->resourceRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;",
            "JTC;)",
            "Lcom/nimbusds/jose/jwk/JWKSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;->resourceRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/URLBasedJWKSetSource;->url:Ljava/net/URL;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/nimbusds/jose/util/ResourceRetriever;->retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Resource;->getContent()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Lcom/nimbusds/jose/jwk/source/JWKSetParseException;

    .line 20
    .line 21
    const-string p2, "Unable to parse JWK set"

    .line 22
    .line 23
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/jwk/source/JWKSetParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :catch_1
    move-exception p0

    .line 28
    new-instance p1, Lcom/nimbusds/jose/jwk/source/JWKSetRetrievalException;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p4, "Couldn\'t retrieve JWK set from URL: "

    .line 37
    .line 38
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/jwk/source/JWKSetRetrievalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
