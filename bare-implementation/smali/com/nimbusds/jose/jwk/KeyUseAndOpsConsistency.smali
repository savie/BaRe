.class Lcom/nimbusds/jose/jwk/KeyUseAndOpsConsistency;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 7
    .line 8
    new-instance v2, Ljava/util/HashSet;

    .line 9
    .line 10
    sget-object v3, Lcom/nimbusds/jose/jwk/KeyOperation;->SIGN:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 11
    .line 12
    sget-object v4, Lcom/nimbusds/jose/jwk/KeyOperation;->VERIFY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 13
    .line 14
    filled-new-array {v3, v4}, [Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 29
    .line 30
    new-instance v2, Ljava/util/HashSet;

    .line 31
    .line 32
    sget-object v3, Lcom/nimbusds/jose/jwk/KeyOperation;->ENCRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 33
    .line 34
    sget-object v4, Lcom/nimbusds/jose/jwk/KeyOperation;->DECRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 35
    .line 36
    sget-object v5, Lcom/nimbusds/jose/jwk/KeyOperation;->WRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 37
    .line 38
    sget-object v6, Lcom/nimbusds/jose/jwk/KeyOperation;->UNWRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 39
    .line 40
    filled-new-array {v3, v4, v5, v6}, [Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyUseAndOpsConsistency;->MAP:Ljava/util/Map;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static areConsistent(Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUseAndOpsConsistency;->MAP:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_2
    :goto_0
    return v0
.end method
