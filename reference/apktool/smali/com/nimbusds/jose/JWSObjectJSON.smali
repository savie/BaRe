.class public Lcom/nimbusds/jose/JWSObjectJSON;
.super Lcom/nimbusds/jose/JOSEObjectJSON;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWSObjectJSON$Signature;,
        Lcom/nimbusds/jose/JWSObjectJSON$State;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/JWSObjectJSON$Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/Payload;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEObjectJSON;-><init>(Lcom/nimbusds/jose/Payload;)V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/JWSObjectJSON;->signatures:Ljava/util/List;

    .line 35
    const-string p0, "The payload must not be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/nimbusds/jose/Payload;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Payload;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/JWSObjectJSON$Signature;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "The payload must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEObjectJSON;-><init>(Lcom/nimbusds/jose/Payload;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObjectJSON;->signatures:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "At least one signature required"

    .line 27
    .line 28
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObjectJSON;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWSObjectJSON;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWSObjectJSON;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWSObjectJSON;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "payload"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    new-instance v4, Lcom/nimbusds/jose/Payload;

    .line 12
    .line 13
    invoke-direct {v4, v0}, Lcom/nimbusds/jose/Payload;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "signature"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v2

    .line 27
    :goto_0
    new-instance v9, Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v5, "signatures"

    .line 33
    .line 34
    const-string v10, "header"

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    move-object v3, v5

    .line 39
    invoke-static {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->parseJWSHeader(Ljava/util/Map;)Lcom/nimbusds/jose/JWSHeader;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {p0, v10}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/nimbusds/jose/UnprotectedHeader;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/UnprotectedHeader;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    :try_start_0
    invoke-static {v5, v6}, Lcom/nimbusds/jose/HeaderValidation;->ensureDisjoint(Lcom/nimbusds/jose/Header;Lcom/nimbusds/jose/UnprotectedHeader;)V
    :try_end_0
    .catch Lcom/nimbusds/jose/IllegalHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    new-instance v3, Lcom/nimbusds/jose/JWSObjectJSON$Signature;

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-direct/range {v3 .. v8}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;-><init>(Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/JWSObjectJSON$1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    move-object p0, v0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_1
    const-string p0, "The \"signatures\" member must not be present in flattened JWS JSON serialization"

    .line 81
    .line 82
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_2
    move-object v3, v5

    .line 87
    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObjectArray(Ljava/util/Map;Ljava/lang/String;)[Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    array-length v3, p0

    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    array-length v11, p0

    .line 97
    move v12, v2

    .line 98
    :goto_1
    if-ge v12, v11, :cond_4

    .line 99
    .line 100
    aget-object v3, p0, v12

    .line 101
    .line 102
    invoke-static {v3}, Lcom/nimbusds/jose/JWSObjectJSON;->parseJWSHeader(Ljava/util/Map;)Lcom/nimbusds/jose/JWSHeader;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v3, v10}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v6}, Lcom/nimbusds/jose/UnprotectedHeader;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/UnprotectedHeader;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    :try_start_1
    invoke-static {v5, v6}, Lcom/nimbusds/jose/HeaderValidation;->ensureDisjoint(Lcom/nimbusds/jose/Header;Lcom/nimbusds/jose/UnprotectedHeader;)V
    :try_end_1
    .catch Lcom/nimbusds/jose/IllegalHeaderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    invoke-static {v3, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-eqz v7, :cond_3

    .line 122
    .line 123
    new-instance v3, Lcom/nimbusds/jose/JWSObjectJSON$Signature;

    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    invoke-direct/range {v3 .. v8}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;-><init>(Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/JWSObjectJSON$1;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string p0, "Missing \"signature\" member"

    .line 136
    .line 137
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    move-object p0, v0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_4
    :goto_2
    new-instance p0, Lcom/nimbusds/jose/JWSObjectJSON;

    .line 152
    .line 153
    invoke-direct {p0, v4, v9}, Lcom/nimbusds/jose/JWSObjectJSON;-><init>(Lcom/nimbusds/jose/Payload;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_5
    const-string p0, "The \"signatures\" member must be present in general JSON Serialization"

    .line 158
    .line 159
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :cond_6
    const-string p0, "Missing payload"

    .line 164
    .line 165
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object v1
.end method

.method private static parseJWSHeader(Ljava/util/Map;)Lcom/nimbusds/jose/JWSHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWSHeader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "protected"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/nimbusds/jose/JWSHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v2, "Not a JWS header"

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const-string p0, "Missing JWS \"alg\" parameter in protected header (required by this library)"

    .line 30
    .line 31
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    throw p0

    .line 36
    :cond_1
    const-string p0, "Missing protected header (required by this library)"

    .line 37
    .line 38
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method


# virtual methods
.method public getSignatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/JWSObjectJSON$Signature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObjectJSON;->signatures:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getState()Lcom/nimbusds/jose/JWSObjectJSON$State;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->getSignatures()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/nimbusds/jose/JWSObjectJSON$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObjectJSON$State;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->getSignatures()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->isVerified()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    sget-object p0, Lcom/nimbusds/jose/JWSObjectJSON$State;->SIGNED:Lcom/nimbusds/jose/JWSObjectJSON$State;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lcom/nimbusds/jose/JWSObjectJSON$State;->VERIFIED:Lcom/nimbusds/jose/JWSObjectJSON$State;

    .line 44
    .line 45
    return-object p0
.end method

.method public serializeFlattened()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->toFlattenedJSONObject()Ljava/util/Map;

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

.method public serializeGeneral()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->toGeneralJSONObject()Ljava/util/Map;

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

.method public declared-synchronized sign(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/JWSSigner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/nimbusds/jose/JWSObjectJSON;->sign(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/JWSSigner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized sign(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/JWSSigner;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1, p2}, Lcom/nimbusds/jose/HeaderValidation;->ensureDisjoint(Lcom/nimbusds/jose/Header;Lcom/nimbusds/jose/UnprotectedHeader;)V
    :try_end_0
    .catch Lcom/nimbusds/jose/IllegalHeaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    :try_start_1
    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObjectJSON;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p1, v1}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/Payload;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Lcom/nimbusds/jose/JWSObject;->sign(Lcom/nimbusds/jose/JWSSigner;)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p0, Lcom/nimbusds/jose/JWSObjectJSON;->signatures:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lcom/nimbusds/jose/JWSObjectJSON$Signature;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObjectJSON;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->getSignature()Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;-><init>(Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/JWSObjectJSON$1;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p1, v0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    move-object p1, v0

    .line 45
    :try_start_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw p2

    .line 55
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p1
.end method

.method public toFlattenedJSONObject()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObjectJSON;->signatures:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObjectJSON;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "payload"

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->getSignatures()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->access$100(Lcom/nimbusds/jose/JWSObjectJSON$Signature;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_0
    const-string p0, "The flattened JWS JSON serialization requires exactly one signature"

    .line 51
    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public toGeneralJSONObject()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObjectJSON;->signatures:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObjectJSON;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "payload"

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->getSignatures()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/nimbusds/jose/JWSObjectJSON$Signature;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->access$100(Lcom/nimbusds/jose/JWSObjectJSON$Signature;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string p0, "signatures"

    .line 64
    .line 65
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_1
    const-string p0, "The general JWS JSON serialization requires at least one signature"

    .line 70
    .line 71
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method
