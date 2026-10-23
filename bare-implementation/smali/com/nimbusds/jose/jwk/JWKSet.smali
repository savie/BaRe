.class public Lcom/nimbusds/jose/jwk/JWKSet;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/jwk-set+json; charset=UTF-8"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final customMembers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWK;)V
    .locals 1

    .line 24
    const-string v0, "The JWK must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;)V"
        }
    .end annotation

    .line 25
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "The JWK list must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 22
    .line 23
    return-void
.end method

.method public static load(Ljava/io/File;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/IOUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/IOUtils;->readInputStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/net/URL;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, v0, v0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->load(Ljava/net/URL;III)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/net/URL;III)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, p1, p2, p3, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->load(Ljava/net/URL;IIILjava/net/Proxy;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/net/URL;IIILjava/net/Proxy;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;

    invoke-direct {v0, p1, p2, p3}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    .line 120
    invoke-virtual {v0, p4}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->setProxy(Ljava/net/Proxy;)V

    .line 121
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Resource;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/security/KeyStore;Lcom/nimbusds/jose/jwk/PasswordLookup;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_5

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-array v3, v3, [C

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {p1, v2}, Lcom/nimbusds/jose/jwk/PasswordLookup;->lookupPassword(Ljava/lang/String;)[C

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_1
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    instance-of v5, v5, Ljava/security/interfaces/RSAPublicKey;

    .line 44
    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/nimbusds/jose/jwk/RSAKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 48
    .line 49
    .line 50
    move-result-object v2
    :try_end_0
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    instance-of v4, v4, Ljava/security/interfaces/ECPublicKey;

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    :try_start_1
    invoke-static {p0, v2, v3}, Lcom/nimbusds/jose/jwk/ECKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/ECKey;

    .line 67
    .line 68
    .line 69
    move-result-object v2
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :catch_1
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_8

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    if-nez p1, :cond_7

    .line 93
    .line 94
    new-array v4, v3, [C

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    invoke-interface {p1, v2}, Lcom/nimbusds/jose/jwk/PasswordLookup;->lookupPassword(Ljava/lang/String;)[C

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :goto_3
    :try_start_2
    invoke-static {p0, v2, v4}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 102
    .line 103
    .line 104
    move-result-object v2
    :try_end_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_8
    new-instance p0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 112
    .line 113
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 158
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "keys"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    new-instance v4, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    move v5, v3

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-ge v5, v6, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Ljava/util/Map;

    .line 28
    .line 29
    invoke-static {v6}, Lcom/nimbusds/jose/jwk/JWK;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWK;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v6

    .line 38
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v8, "Unsupported key type"

    .line 49
    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    .line 60
    .line 61
    const-string v0, "Invalid JWK at position "

    .line 62
    .line 63
    const-string v1, ": "

    .line 64
    .line 65
    invoke-static {v5, v0, v1}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p0, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :catch_1
    const-string p0, "The \"keys\" JSON array must contain JSON objects only"

    .line 85
    .line 86
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/util/Map$Entry;

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_2

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    new-instance p0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 147
    .line 148
    invoke-direct {p0, v4, v1}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_5
    const-string p0, "Missing required \"keys\" member"

    .line 153
    .line 154
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v2
.end method


# virtual methods
.method public containsJWK(Lcom/nimbusds/jose/jwk/JWK;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/nimbusds/jose/jwk/JWK;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/util/Base64URL;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public containsNonPublicKeys()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/nimbusds/jose/jwk/JWK;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    return v2
.end method

.method public filter(Lcom/nimbusds/jose/jwk/JWKMatcher;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/nimbusds/jose/jwk/JWK;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->matches(Lcom/nimbusds/jose/jwk/JWK;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 37
    .line 38
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method public getAdditionalMembers()Ljava/util/Map;
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
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyByKeyId(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/nimbusds/jose/jwk/JWK;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 6
    .line 7
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->toJSONObject(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public toJSONObject(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/nimbusds/jose/jwk/JWK;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/JWK;->toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p0, "keys"

    .line 57
    .line 58
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public toPublicJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/nimbusds/jose/jwk/JWK;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/JWK;->toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    .line 37
    .line 38
    invoke-direct {v1, v0, p0}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;->toJSONObject(Z)Ljava/util/Map;

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
