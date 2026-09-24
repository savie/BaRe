.class abstract Lcom/nimbusds/jose/CommonSEHeader;
.super Lcom/nimbusds/jose/Header;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final jku:Ljava/net/URI;

.field private final jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private final kid:Ljava/lang/String;

.field private final x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private final x5t:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5u:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object/from16 v6, p12

    .line 9
    .line 10
    move-object/from16 v7, p13

    .line 11
    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/nimbusds/jose/Header;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 13
    .line 14
    .line 15
    iput-object p5, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    .line 20
    .line 21
    move-object/from16 p1, p8

    .line 22
    .line 23
    iput-object p1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    .line 25
    move-object/from16 p1, p9

    .line 26
    .line 27
    iput-object p1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    .line 41
    .line 42
    :goto_0
    move-object/from16 p1, p11

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iput-object p1, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method

.method public static parsePublicJWK(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWK;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWK;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string p0, "Non-public key in jwk header parameter"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
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
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->getIncludedParams()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "jku"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v1, "jwk"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const-string v1, "x5u"

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const-string v1, "x5t"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const-string v1, "x5t#S256"

    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    const-string v1, "x5c"

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_5
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p0, :cond_6

    .line 68
    .line 69
    const-string p0, "kid"

    .line 70
    .line 71
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_6
    return-object v0
.end method

.method public getJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWKURL()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getX509CertChain()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getX509CertURL()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 4
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
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "jku"

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v2, "jwk"

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v2, "x5u"

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    const-string v2, "x5t"

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const-string v2, "x5t#S256"

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lcom/nimbusds/jose/util/Base64;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const-string v2, "x5c"

    .line 118
    .line 119
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object p0, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz p0, :cond_7

    .line 125
    .line 126
    const-string v1, "kid"

    .line 127
    .line 128
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :cond_7
    return-object v0
.end method
