.class public abstract Lcom/nimbusds/jose/JOSEObject;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MIME_TYPE_COMPACT:Ljava/lang/String; = "application/jose; charset=UTF-8"

.field public static final MIME_TYPE_JS:Ljava/lang/String; = "application/jose+json; charset=UTF-8"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private parsedParts:[Lcom/nimbusds/jose/util/Base64URL;

.field private payload:Lcom/nimbusds/jose/Payload;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/nimbusds/jose/JOSEObject;->payload:Lcom/nimbusds/jose/Payload;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/nimbusds/jose/JOSEObject;->parsedParts:[Lcom/nimbusds/jose/util/Base64URL;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Payload;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/nimbusds/jose/JOSEObject;->payload:Lcom/nimbusds/jose/Payload;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JOSEObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    aget-object v0, v0, v1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-static {v0}, Lcom/nimbusds/jose/Header;->parseAlgorithm(Ljava/util/Map;)Lcom/nimbusds/jose/Algorithm;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Lcom/nimbusds/jose/PlainObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/PlainObject;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    instance-of v1, v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Lcom/nimbusds/jose/JWSObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    instance-of v1, v0, Lcom/nimbusds/jose/JWEAlgorithm;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-static {p0}, Lcom/nimbusds/jose/JWEObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEObject;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Unexpected algorithm type: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string v0, "Invalid unsecured/JWS/JWE header: "

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0, v0}, Ll0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public static split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "."

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, -0x1

    .line 14
    if-eq v1, v4, :cond_5

    .line 15
    .line 16
    add-int/lit8 v5, v1, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eq v6, v4, :cond_4

    .line 23
    .line 24
    add-int/lit8 v7, v6, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-ne v8, v4, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/nimbusds/jose/util/Base64URL;

    .line 33
    .line 34
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/nimbusds/jose/util/Base64URL;

    .line 42
    .line 43
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v2, p0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    filled-new-array {v0, v1, v2}, [Lcom/nimbusds/jose/util/Base64URL;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_0
    add-int/lit8 v9, v8, 0x1

    .line 65
    .line 66
    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-eq v10, v4, :cond_3

    .line 71
    .line 72
    if-eq v10, v4, :cond_2

    .line 73
    .line 74
    add-int/lit8 v11, v10, 0x1

    .line 75
    .line 76
    invoke-virtual {p0, v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-ne v0, v4, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const-string p0, "Invalid serialized unsecured/JWS/JWE object: Too many part delimiters"

    .line 84
    .line 85
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v2

    .line 89
    :cond_2
    :goto_0
    new-instance v0, Lcom/nimbusds/jose/util/Base64URL;

    .line 90
    .line 91
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/nimbusds/jose/util/Base64URL;

    .line 99
    .line 100
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v2}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lcom/nimbusds/jose/util/Base64URL;

    .line 108
    .line 109
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {v2, v3}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v3, Lcom/nimbusds/jose/util/Base64URL;

    .line 117
    .line 118
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-direct {v3, v4}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v4, Lcom/nimbusds/jose/util/Base64URL;

    .line 126
    .line 127
    add-int/lit8 v10, v10, 0x1

    .line 128
    .line 129
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-direct {v4, p0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/nimbusds/jose/util/Base64URL;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_3
    const-string p0, "Invalid serialized JWE object: Missing fourth delimiter"

    .line 142
    .line 143
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object v2

    .line 147
    :cond_4
    const-string p0, "Invalid serialized unsecured/JWS/JWE object: Missing second delimiter"

    .line 148
    .line 149
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v2

    .line 153
    :cond_5
    const-string p0, "Invalid serialized unsecured/JWS/JWE object: Missing part delimiters"

    .line 154
    .line 155
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v2
.end method


# virtual methods
.method public abstract getHeader()Lcom/nimbusds/jose/Header;
.end method

.method public getParsedParts()[Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObject;->parsedParts:[Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getParsedString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JOSEObject;->parsedParts:[Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObject;->parsedParts:[Lcom/nimbusds/jose/util/Base64URL;

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_3

    .line 17
    .line 18
    aget-object v3, p0, v2

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    const/16 v4, 0x2e

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public getPayload()Lcom/nimbusds/jose/Payload;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObject;->payload:Lcom/nimbusds/jose/Payload;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract serialize()Ljava/lang/String;
.end method

.method public varargs setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JOSEObject;->parsedParts:[Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-void
.end method

.method public setPayload(Lcom/nimbusds/jose/Payload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JOSEObject;->payload:Lcom/nimbusds/jose/Payload;

    .line 2
    .line 3
    return-void
.end method
