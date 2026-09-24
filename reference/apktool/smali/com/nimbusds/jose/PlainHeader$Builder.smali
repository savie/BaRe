.class public Lcom/nimbusds/jose/PlainHeader$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/PlainHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private crit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cty:Ljava/lang/String;

.field private customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private typ:Lcom/nimbusds/jose/JOSEObjectType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/PlainHeader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->cty:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->crit:Ljava/util/Set;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->customParams:Ljava/util/Map;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public build()Lcom/nimbusds/jose/PlainHeader;
    .locals 6

    .line 1
    new-instance v0, Lcom/nimbusds/jose/PlainHeader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->cty:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->crit:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->customParams:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/PlainHeader;-><init>(Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->cty:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/PlainHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->crit:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/PlainHeader;->getRegisteredParameterNames()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->customParams:Ljava/util/Map;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->customParams:Ljava/util/Map;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->customParams:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "The parameter name \""

    .line 29
    .line 30
    const-string p2, "\" matches a registered name"

    .line 31
    .line 32
    invoke-static {p0, p1, p2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public customParams(Ljava/util/Map;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/PlainHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->customParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 2
    .line 3
    return-object p0
.end method
