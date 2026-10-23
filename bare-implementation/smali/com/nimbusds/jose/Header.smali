.class public abstract Lcom/nimbusds/jose/Header;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_CUSTOM_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_HEADER_STRING_LENGTH:I = 0x4e20

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final alg:Lcom/nimbusds/jose/Algorithm;

.field private final crit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cty:Ljava/lang/String;

.field private final customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private final typ:Lcom/nimbusds/jose/JOSEObjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/nimbusds/jose/Header;->EMPTY_CUSTOM_PARAMS:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/Header;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nimbusds/jose/Header;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/nimbusds/jose/Header;->cty:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/nimbusds/jose/Header;->crit:Ljava/util/Set;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/nimbusds/jose/Header;->crit:Ljava/util/Set;

    .line 26
    .line 27
    :goto_0
    if-eqz p5, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/nimbusds/jose/Header;->customParams:Ljava/util/Map;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/Header;->EMPTY_CUSTOM_PARAMS:Ljava/util/Map;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/nimbusds/jose/Header;->customParams:Ljava/util/Map;

    .line 44
    .line 45
    :goto_1
    iput-object p6, p0, Lcom/nimbusds/jose/Header;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Header;)V
    .locals 7

    .line 48
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    move-result-object v4

    .line 52
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    move-result-object v5

    .line 53
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getParsedBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v6

    move-object v0, p0

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/nimbusds/jose/Header;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public static parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nimbusds/jose/Header;->parse(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, v0}, Lcom/nimbusds/jose/Header;->parse(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x4e20

    .line 58
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    .line 59
    invoke-static {p0, p1}, Lcom/nimbusds/jose/Header;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/Header;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lcom/nimbusds/jose/Header;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")",
            "Lcom/nimbusds/jose/Header;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "alg"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "enc"

    .line 8
    .line 9
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/nimbusds/jose/JWEHeader;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object v2, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/nimbusds/jose/PlainHeader;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/PlainHeader;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/nimbusds/jose/JWSHeader;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const-string p0, "Missing \"alg\" in header JSON object"

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-static {p1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static parseAlgorithm(Ljava/util/Map;)Lcom/nimbusds/jose/Algorithm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/Algorithm;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "alg"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    const-string v1, "enc"

    .line 23
    .line 24
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-static {v0}, Lcom/nimbusds/jose/JWEAlgorithm;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-static {v0}, Lcom/nimbusds/jose/JWSAlgorithm;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSAlgorithm;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    const-string p0, "Missing \"alg\" in header JSON object"

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {v0, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Lcom/nimbusds/jose/Algorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->cty:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCriticalParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->crit:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCustomParam(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->customParams:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getCustomParams()Ljava/util/Map;
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
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->customParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIncludedParams()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "alg"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v1, "typ"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const-string v1, "cty"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3

    .line 62
    .line 63
    const-string p0, "crit"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    return-object v0
.end method

.method public getParsedBase64URL()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getType()Lcom/nimbusds/jose/JOSEObjectType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 2
    .line 3
    return-object p0
.end method

.method public join(Lcom/nimbusds/jose/UnprotectedHeader;)Lcom/nimbusds/jose/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {p0, p1}, Lcom/nimbusds/jose/HeaderValidation;->ensureDisjoint(Lcom/nimbusds/jose/Header;Lcom/nimbusds/jose/UnprotectedHeader;)V
    :try_end_0
    .catch Lcom/nimbusds/jose/IllegalHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/nimbusds/jose/UnprotectedHeader;->toJSONObject()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {v0, v1}, Lcom/nimbusds/jose/Header;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/Header;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-static {p1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public toBase64URL()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Header;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object v0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 3
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
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/Header;->customParams:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/nimbusds/jose/Header;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v2, "alg"

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/Header;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v2, "typ"

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/nimbusds/jose/JOSEObjectType;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/Header;->cty:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v2, "cty"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/Header;->crit:Ljava/util/Set;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/nimbusds/jose/Header;->crit:Ljava/util/Set;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "crit"

    .line 63
    .line 64
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/Header;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
