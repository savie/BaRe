.class public Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
.implements Lcom/nimbusds/jwt/proc/ClockSkewAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
        "TC;>;",
        "Lcom/nimbusds/jwt/proc/ClockSkewAware;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CLOCK_SKEW_SECONDS:I = 0x3c


# instance fields
.field private final acceptedAudienceValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

.field private maxClockSkew:I

.field private final prohibitedClaims:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requiredClaims:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3c

    .line 5
    .line 6
    iput v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v0

    .line 17
    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance p2, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 23
    .line 24
    invoke-direct {p2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->build()Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_1
    iput-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 32
    .line 33
    new-instance v1, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    const-string p1, "aud"

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    if-eqz p3, :cond_3

    .line 60
    .line 61
    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    .line 69
    .line 70
    if-eqz p4, :cond_4

    .line 71
    .line 72
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 78
    .line 79
    :goto_2
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->prohibitedClaims:Ljava/util/Set;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public currentTime()Ljava/util/Date;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getAcceptedAudienceValues()Ljava/util/Set;
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
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExactMatchClaims()Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxClockSkew()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    .line 2
    .line 3
    return p0
.end method

.method public getProhibitedClaims()Ljava/util/Set;
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
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->prohibitedClaims:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRequiredClaims()Ljava/util/Set;
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
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxClockSkew(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    .line 2
    .line 3
    return-void
.end method

.method public verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getAudience()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 43
    .line 44
    const-string p1, "JWT audience rejected: "

    .line 45
    .line 46
    invoke-static {p1, p2}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->acceptedAudienceValues:Ljava/util/Set;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 65
    .line 66
    const-string p1, "JWT missing required audience"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    .line 81
    .line 82
    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_e

    .line 87
    .line 88
    new-instance p2, Ljava/util/TreeSet;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->prohibitedClaims:Ljava/util/Set;

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {p2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_d

    .line 130
    .line 131
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->exactMatchClaims:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 162
    .line 163
    invoke-virtual {v2, v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_7

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 175
    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string p2, "JWT "

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p2, " claim has value "

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p2, ", must be "

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    :cond_8
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->currentTime()Ljava/util/Date;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    if-eqz p2, :cond_c

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getExpirationTime()Ljava/util/Date;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_a

    .line 221
    .line 222
    iget v1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    .line 223
    .line 224
    int-to-long v1, v1

    .line 225
    invoke-static {v0, p2, v1, v2}, Lcom/nimbusds/jwt/util/DateUtils;->isAfter(Ljava/util/Date;Ljava/util/Date;J)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_9

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_9
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 233
    .line 234
    const-string p1, "Expired JWT"

    .line 235
    .line 236
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p0

    .line 240
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getNotBeforeTime()Ljava/util/Date;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-eqz p1, :cond_c

    .line 245
    .line 246
    iget p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    .line 247
    .line 248
    int-to-long v0, p0

    .line 249
    invoke-static {p1, p2, v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->isBefore(Ljava/util/Date;Ljava/util/Date;J)Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_b

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_b
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 257
    .line 258
    const-string p1, "JWT before use time"

    .line 259
    .line 260
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :cond_c
    :goto_4
    return-void

    .line 265
    :cond_d
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 266
    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v0, "JWT has prohibited claims: "

    .line 270
    .line 271
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0

    .line 285
    :cond_e
    new-instance p2, Ljava/util/TreeSet;

    .line 286
    .line 287
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->requiredClaims:Ljava/util/Set;

    .line 288
    .line 289
    invoke-direct {p2, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-interface {p2, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 301
    .line 302
    .line 303
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 304
    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v0, "JWT missing required claims: "

    .line 308
    .line 309
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p0
.end method
