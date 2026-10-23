.class public final Lcom/nimbusds/jose/jwk/KeyUse;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

.field public static final SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyUse;

    .line 2
    .line 3
    const-string v1, "sig"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 9
    .line 10
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyUse;

    .line 11
    .line 12
    const-string v1, "enc"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "The key use identifier must not be null"

    .line 10
    .line 11
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static from(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/KeyUse;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    aget-boolean v2, v2, v3

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    aget-boolean v2, v2, v4

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    :cond_1
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    aget-boolean v2, v2, v3

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    aget-boolean v2, v2, v5

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    aget-boolean v2, v2, v3

    .line 64
    .line 65
    const/4 v3, 0x4

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    aget-boolean v2, v2, v3

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    aget-boolean v2, v2, v5

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v5, 0x3

    .line 94
    aget-boolean v2, v2, v5

    .line 95
    .line 96
    if-nez v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    aget-boolean v2, v2, v3

    .line 103
    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    :cond_5
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const/4 v3, 0x5

    .line 116
    aget-boolean v2, v2, v3

    .line 117
    .line 118
    if-nez v2, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const/4 v2, 0x6

    .line 125
    aget-boolean p0, p0, v2

    .line 126
    .line 127
    if-eqz p0, :cond_8

    .line 128
    .line 129
    :cond_7
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-ne p0, v4, :cond_9

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lcom/nimbusds/jose/jwk/KeyUse;

    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_9
    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyUse;
    .locals 3
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
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyUse;->identifier()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyUse;->identifier()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyUse;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/KeyUse;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    const-string p0, "JWK use value must not be empty or blank"

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/KeyUse;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lcom/nimbusds/jose/jwk/KeyUse;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyUse;->identifier()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public identifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyUse;->identifier()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
