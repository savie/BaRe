.class public Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSource;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSource<",
        "TC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_SIZE_LIMIT:I = 0xc800


# instance fields
.field private final failoverJWKSource:Lcom/nimbusds/jose/jwk/source/JWKSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

.field private final jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

.field private final jwkSetURL:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/jwk/source/JWKSource;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/jwk/source/JWKSource;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;",
            "Lcom/nimbusds/jose/util/ResourceRetriever;",
            "Lcom/nimbusds/jose/jwk/source/JWKSetCache;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->failoverJWKSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/util/DefaultResourceRetriever;

    .line 17
    .line 18
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->resolveDefaultHTTPConnectTimeout()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->resolveDefaultHTTPReadTimeout()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->resolveDefaultHTTPSizeLimit()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-direct {p1, p2, p3, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    .line 34
    .line 35
    :goto_0
    if-eqz p4, :cond_1

    .line 36
    .line 37
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/jwk/source/JWKSource;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V

    return-void
.end method

.method private failover(Ljava/lang/Exception;Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->getFailoverJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->getFailoverJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0, p2, p3}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Lcom/nimbusds/jose/KeySourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p2, Lcom/nimbusds/jose/RemoteKeySourceException;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, "; Failover JWK source retrieval failed with: "

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1, p0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw p2
.end method

.method public static getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyIDs()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static resolveDefault(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    return p1
.end method

.method public static resolveDefaultHTTPConnectTimeout()I
    .locals 2

    .line 1
    const-class v0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".defaultHttpConnectTimeout"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->resolveDefault(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static resolveDefaultHTTPReadTimeout()I
    .locals 2

    .line 1
    const-class v0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".defaultHttpReadTimeout"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->resolveDefault(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static resolveDefaultHTTPSizeLimit()I
    .locals 2

    .line 1
    const-class v0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".defaultHttpSizeLimit"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0xc800

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->resolveDefault(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method private updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/nimbusds/jose/util/ResourceRetriever;->retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Resource;->getContent()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->put(Lcom/nimbusds/jose/jwk/JWKSet;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Lcom/nimbusds/jose/RemoteKeySourceException;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "Couldn\'t parse remote JWK set: "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :catch_1
    move-exception p0

    .line 49
    new-instance v0, Lcom/nimbusds/jose/RemoteKeySourceException;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "Couldn\'t retrieve remote JWK set: "

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method


# virtual methods
.method public get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->requiresRefresh()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->requiresRefresh()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_2
    monitor-exit p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-direct {p0, v1, p1, p2}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->failover(Ljava/lang/Exception;Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_3
    if-eqz v0, :cond_b

    .line 52
    .line 53
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_5

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_5
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSelector;->getMatcher()Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_6

    .line 73
    .line 74
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_6
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeyByKeyId(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_7
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Lcom/nimbusds/jose/KeySourceException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    :try_start_4
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-ne v0, v1, :cond_8

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    goto :goto_2

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 103
    .line 104
    invoke-interface {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    if-nez v0, :cond_9

    .line 110
    .line 111
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_9
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :try_start_6
    throw v0
    :try_end_6
    .catch Lcom/nimbusds/jose/KeySourceException; {:try_start_6 .. :try_end_6} :catch_1

    .line 121
    :catch_1
    move-exception v0

    .line 122
    invoke-direct {p0, v0, p1, p2}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->failover(Ljava/lang/Exception;Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    if-eqz p0, :cond_a

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_a
    throw v0

    .line 130
    :cond_b
    throw v1
.end method

.method public getCachedJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFailoverJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->failoverJWKSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWKSetCache()Lcom/nimbusds/jose/jwk/source/JWKSetCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWKSetURL()Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResourceRetriever()Lcom/nimbusds/jose/util/ResourceRetriever;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    .line 2
    .line 3
    return-object p0
.end method
