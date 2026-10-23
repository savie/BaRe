.class public final Lcom/nimbusds/jose/JWSAlgorithm;
.super Lcom/nimbusds/jose/Algorithm;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWSAlgorithm$Family;
    }
.end annotation


# static fields
.field public static final ES256:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final ES384:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final ES512:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final Ed25519:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final Ed448:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final HS256:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final HS384:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final HS512:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final PS256:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final PS384:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final PS512:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final RS256:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final RS384:Lcom/nimbusds/jose/JWSAlgorithm;

.field public static final RS512:Lcom/nimbusds/jose/JWSAlgorithm;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    const-string v1, "HS256"

    .line 4
    .line 5
    sget-object v2, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 11
    .line 12
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 13
    .line 14
    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    .line 15
    .line 16
    const-string v2, "HS384"

    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 22
    .line 23
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 24
    .line 25
    const-string v2, "HS512"

    .line 26
    .line 27
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 31
    .line 32
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 33
    .line 34
    sget-object v2, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    .line 35
    .line 36
    const-string v3, "RS256"

    .line 37
    .line 38
    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 42
    .line 43
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 44
    .line 45
    const-string v3, "RS384"

    .line 46
    .line 47
    invoke-direct {v0, v3, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 51
    .line 52
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 53
    .line 54
    const-string v3, "RS512"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 60
    .line 61
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 62
    .line 63
    const-string v3, "ES256"

    .line 64
    .line 65
    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 69
    .line 70
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 71
    .line 72
    const-string v2, "ES256K"

    .line 73
    .line 74
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 78
    .line 79
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 80
    .line 81
    const-string v2, "ES384"

    .line 82
    .line 83
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 87
    .line 88
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 89
    .line 90
    const-string v2, "ES512"

    .line 91
    .line 92
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 96
    .line 97
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 98
    .line 99
    const-string v2, "PS256"

    .line 100
    .line 101
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 105
    .line 106
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 107
    .line 108
    const-string v2, "PS384"

    .line 109
    .line 110
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 114
    .line 115
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 116
    .line 117
    const-string v2, "PS512"

    .line 118
    .line 119
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 123
    .line 124
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 125
    .line 126
    const-string v2, "EdDSA"

    .line 127
    .line 128
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 132
    .line 133
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 134
    .line 135
    const-string v2, "Ed25519"

    .line 136
    .line 137
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 138
    .line 139
    .line 140
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->Ed25519:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 141
    .line 142
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 143
    .line 144
    const-string v2, "Ed448"

    .line 145
    .line 146
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 147
    .line 148
    .line 149
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->Ed448:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 150
    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 2

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_7
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_8
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_9
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_a

    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_a
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_b

    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_b
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_c

    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_c
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_d

    .line 181
    .line 182
    return-object v0

    .line 183
    :cond_d
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->Ed25519:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_e

    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_e
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->Ed448:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_f

    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_f
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 210
    .line 211
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-object v0
.end method
