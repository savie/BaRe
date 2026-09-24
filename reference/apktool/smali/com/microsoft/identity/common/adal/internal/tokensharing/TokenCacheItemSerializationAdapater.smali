.class public final Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;
.implements Ldm4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;",
        "Ldm4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static throwIfParameterMissing(Lfl4;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lfl4;->a:Liw4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Liw4;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Lgl4;

    .line 11
    .line 12
    const-string v0, "TokenCacheItemSerializationAdapaterAttribute "

    .line 13
    .line 14
    const-string v1, " is missing for deserialization."

    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method private static throwIfParameterNull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lgl4;

    .line 5
    .line 6
    const-string v0, "TokenCacheItemSerializationAdapaterAttribute "

    .line 7
    .line 8
    const-string v1, " is null for serialization."

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method


# virtual methods
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgl4;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "authority"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Lfl4;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "id_token"

    .line 11
    .line 12
    invoke-static {p0, p2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Lfl4;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p3, "foci"

    .line 16
    .line 17
    invoke-static {p0, p3}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Lfl4;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "refresh_token"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Lfl4;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lqj4;->o()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v1, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lqj4;->o()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setAuthority(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setRawIdToken(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p3}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lqj4;->o()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setFamilyClientId(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->setRefreshToken(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method

.method public final serialize(Ljava/lang/Object;Lz28;)Lqj4;
    .locals 5

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p2, "authority"

    .line 8
    .line 9
    invoke-static {p0, p2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "refresh_token"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRawIdToken()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v1, "id_token"

    .line 26
    .line 27
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getFamilyClientId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v2, "foci"

    .line 35
    .line 36
    invoke-static {p0, v2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Lfl4;

    .line 40
    .line 41
    invoke-direct {p0}, Lfl4;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lkl4;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getAuthority()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v4}, Lkl4;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2, v3}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lkl4;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-direct {p2, v3}, Lkl4;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0, p2}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lkl4;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRawIdToken()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p2, v0}, Lkl4;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1, p2}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Lkl4;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getFamilyClientId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Lkl4;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2, p2}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 90
    .line 91
    .line 92
    return-object p0
.end method
