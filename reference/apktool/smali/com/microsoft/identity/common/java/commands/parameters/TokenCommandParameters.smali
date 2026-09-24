.class public abstract Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;
.super Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

.field private final authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final authority:Lcom/microsoft/identity/common/java/authorities/Authority;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final claimsRequestJson:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final domainHint:Ljava/lang/String;

.field private final extraOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final extraTokenBodyParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final forceRefresh:Z
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final loginHint:Ljava/lang/String;

.field private final mamEnrollmentId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq03;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->scopes:Ljava/util/Set;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1300(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->claimsRequestJson:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1500(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->mamEnrollmentId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1700(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->forceRefresh:Z

    .line 45
    .line 46
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1800(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->loginHint:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$1900(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->domainHint:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$2000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraOptions:Ljava/util/List;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->access$2100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraTokenBodyParameters:Ljava/util/List;

    .line 69
    .line 70
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/dto/IAccountRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->scopes:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraTokenBodyParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->claimsRequestJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->mamEnrollmentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->forceRefresh:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->loginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->domainHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraOptions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public abstract canEqual(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_1
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->canEqual(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_3
    iget-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->forceRefresh:Z

    .line 31
    .line 32
    iget-boolean v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->forceRefresh:Z

    .line 33
    .line 34
    if-eq p1, v1, :cond_4

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_4
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez p1, :cond_7

    .line 65
    .line 66
    if-eqz v1, :cond_8

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_8

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_8
    iget-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 81
    .line 82
    if-nez p1, :cond_9

    .line 83
    .line 84
    if-eqz v1, :cond_a

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_9
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_a

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_a
    iget-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->claimsRequestJson:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->claimsRequestJson:Ljava/lang/String;

    .line 99
    .line 100
    if-nez p1, :cond_b

    .line 101
    .line 102
    if-eqz v1, :cond_c

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_c

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_c
    iget-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 115
    .line 116
    iget-object v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 117
    .line 118
    if-nez p1, :cond_d

    .line 119
    .line 120
    if-eqz v1, :cond_e

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_d
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_e

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_e
    iget-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->mamEnrollmentId:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->mamEnrollmentId:Ljava/lang/String;

    .line 135
    .line 136
    if-nez p1, :cond_f

    .line 137
    .line 138
    if-eqz v1, :cond_10

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_10

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_10
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->loginHint:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->loginHint:Ljava/lang/String;

    .line 152
    .line 153
    if-nez v1, :cond_11

    .line 154
    .line 155
    if-eqz p1, :cond_12

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_12

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_12
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->domainHint:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->domainHint:Ljava/lang/String;

    .line 168
    .line 169
    if-nez v1, :cond_13

    .line 170
    .line 171
    if-eqz p1, :cond_14

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_13
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_14

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_14
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraOptions:Ljava/util/List;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraOptions:Ljava/util/List;

    .line 184
    .line 185
    if-nez v1, :cond_15

    .line 186
    .line 187
    if-eqz p1, :cond_16

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_15
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-nez p1, :cond_16

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_16
    const/4 p1, 0x0

    .line 198
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraTokenBodyParameters:Ljava/util/List;

    .line 199
    .line 200
    if-nez p0, :cond_17

    .line 201
    .line 202
    move-object v1, p1

    .line 203
    goto :goto_0

    .line 204
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .line 208
    .line 209
    :goto_0
    iget-object p0, v0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraTokenBodyParameters:Ljava/util/List;

    .line 210
    .line 211
    if-nez p0, :cond_18

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_18
    new-instance p1, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    .line 218
    .line 219
    :goto_1
    if-nez v1, :cond_19

    .line 220
    .line 221
    if-eqz p1, :cond_1a

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_19
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-nez p0, :cond_1a

    .line 229
    .line 230
    :goto_2
    const/4 p0, 0x0

    .line 231
    return p0

    .line 232
    :cond_1a
    :goto_3
    const/4 p0, 0x1

    .line 233
    return p0
.end method

.method public final getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClaimsRequestJson()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->claimsRequestJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDomainHint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->domainHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtraOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraOptions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLoginHint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->loginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMamEnrollmentId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->mamEnrollmentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScopes()Ljava/util/HashSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->scopes:Ljava/util/Set;

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
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->scopes:Ljava/util/Set;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3b

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->forceRefresh:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x4f

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x61

    .line 15
    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x3b

    .line 18
    .line 19
    const/16 v1, 0x2b

    .line 20
    .line 21
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    move v2, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    add-int/2addr v0, v2

    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getScopes()Ljava/util/HashSet;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    mul-int/lit8 v0, v0, 0x3b

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    move v2, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_2
    add-int/2addr v0, v2

    .line 47
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 48
    .line 49
    mul-int/lit8 v0, v0, 0x3b

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    move v2, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_3
    add-int/2addr v0, v2

    .line 60
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->claimsRequestJson:Ljava/lang/String;

    .line 61
    .line 62
    mul-int/lit8 v0, v0, 0x3b

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    move v2, v1

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    :goto_4
    add-int/2addr v0, v2

    .line 73
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 74
    .line 75
    mul-int/lit8 v0, v0, 0x3b

    .line 76
    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    move v2, v1

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_5
    add-int/2addr v0, v2

    .line 86
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->mamEnrollmentId:Ljava/lang/String;

    .line 87
    .line 88
    mul-int/lit8 v0, v0, 0x3b

    .line 89
    .line 90
    if-nez v2, :cond_6

    .line 91
    .line 92
    move v2, v1

    .line 93
    goto :goto_6

    .line 94
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :goto_6
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v0, v0, 0x3b

    .line 100
    .line 101
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->loginHint:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v2, :cond_7

    .line 104
    .line 105
    move v2, v1

    .line 106
    goto :goto_7

    .line 107
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    :goto_7
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v0, v0, 0x3b

    .line 113
    .line 114
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->domainHint:Ljava/lang/String;

    .line 115
    .line 116
    if-nez v2, :cond_8

    .line 117
    .line 118
    move v2, v1

    .line 119
    goto :goto_8

    .line 120
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    :goto_8
    add-int/2addr v0, v2

    .line 125
    mul-int/lit8 v0, v0, 0x3b

    .line 126
    .line 127
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraOptions:Ljava/util/List;

    .line 128
    .line 129
    if-nez v2, :cond_9

    .line 130
    .line 131
    move v2, v1

    .line 132
    goto :goto_9

    .line 133
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    :goto_9
    add-int/2addr v0, v2

    .line 138
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->extraTokenBodyParameters:Ljava/util/List;

    .line 139
    .line 140
    if-nez p0, :cond_a

    .line 141
    .line 142
    const/4 p0, 0x0

    .line 143
    goto :goto_a

    .line 144
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 147
    .line 148
    .line 149
    move-object p0, v2

    .line 150
    :goto_a
    mul-int/lit8 v0, v0, 0x3b

    .line 151
    .line 152
    if-nez p0, :cond_b

    .line 153
    .line 154
    goto :goto_b

    .line 155
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    :goto_b
    add-int/2addr v0, v1

    .line 160
    return v0
.end method

.method public final isForceRefresh()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->forceRefresh:Z

    .line 2
    .line 3
    return p0
.end method

.method public validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ArgumentException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "TokenCommandParameters:validate"

    .line 2
    .line 3
    const-string v1, "Validating operation params..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->scopes:Ljava/util/Set;

    .line 9
    .line 10
    const-string v1, "acquireToken"

    .line 11
    .line 12
    const-string v2, "acquireTokenSilent"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v3, ""

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->scopes:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 40
    .line 41
    const-string v3, "scope is empty or null"

    .line 42
    .line 43
    const-string v4, "scopes"

    .line 44
    .line 45
    if-nez v0, :cond_5

    .line 46
    .line 47
    instance-of v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    instance-of v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 56
    .line 57
    const-string v3, "authentication scheme is undefined"

    .line 58
    .line 59
    const-string v4, "authentication_scheme"

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    instance-of p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 64
    .line 65
    if-nez p0, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 69
    .line 70
    invoke-direct {p0, v1, v4, v3}, Lcom/microsoft/identity/common/java/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 75
    .line 76
    invoke-direct {p0, v2, v4, v3}, Lcom/microsoft/identity/common/java/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_3
    :goto_1
    return-void

    .line 81
    :cond_4
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 82
    .line 83
    invoke-direct {p0, v1, v4, v3}, Lcom/microsoft/identity/common/java/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_5
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 88
    .line 89
    invoke-direct {p0, v2, v4, v3}, Lcom/microsoft/identity/common/java/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
