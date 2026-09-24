.class public Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jwt/JWTClaimsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final claims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private serializeNullClaims:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->serializeNullClaims:Z

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->serializeNullClaims:Z

    .line 13
    .line 14
    invoke-static {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->access$000(Lcom/nimbusds/jwt/JWTClaimsSet;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public audience(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "aud"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public audience(Ljava/util/List;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet$Builder;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    const-string v1, "aud"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 3

    .line 1
    new-instance v0, Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->serializeNullClaims:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, p0, v2}, Lcom/nimbusds/jwt/JWTClaimsSet;-><init>(Ljava/util/Map;ZLcom/nimbusds/jwt/JWTClaimsSet$1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public expirationTime(Ljava/util/Date;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "exp"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public getClaims()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public issueTime(Ljava/util/Date;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "iat"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public issuer(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "iss"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public jwtID(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "jti"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "nbf"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public serializeNullClaims(Z)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->serializeNullClaims:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public subject(Ljava/lang/String;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claims:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "sub"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
