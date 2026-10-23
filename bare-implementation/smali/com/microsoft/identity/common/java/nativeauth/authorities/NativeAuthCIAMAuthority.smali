.class public final Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;
.super Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final Companion:Lmk5;

.field private static final NATIVE_AUTH_USE_OPENID_CONFIGURATION:Z = false

.field private static final TAG:Ljava/lang/String; = "NativeAuthCIAMAuthority"


# instance fields
.field private final authorityUrl:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmk5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->Companion:Lmk5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->authorityUrl:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->clientId:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "AAD_NA"

    .line 15
    .line 16
    iput-object p2, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method private final createNativeAuthOAuth2Configuration(Ljava/util/List;Ljava/util/List;)Lnk5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnk5;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, ".createNativeAuthOAuth2Configuration"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lnk5;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->clientId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->getChallengeTypesWithDefault(Ljava/util/List;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->getCapabilities(Ljava/util/List;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2, p1}, Lnk5;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method private final getCapabilities(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, ".getCapabilities"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    sget-object p1, Lov2;->a:Lov2;

    .line 19
    .line 20
    :cond_0
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/16 v5, 0x3e

    .line 31
    .line 32
    const-string v1, " "

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private final getChallengeTypesWithDefault(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, ".getChallengeTypesWithDefault"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    sget-object p1, Lov2;->a:Lov2;

    .line 19
    .line 20
    :cond_0
    const-string v0, "redirect"

    .line 21
    .line 22
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/16 v5, 0x3e

    .line 36
    .line 37
    const-string v1, " "

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "Challenge Types used = "

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p1
.end method


# virtual methods
.method public bridge synthetic createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lok5;

    move-result-object p0

    return-object p0
.end method

.method public createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lok5;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-direct {v1, v0, v0}, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->createNativeAuthOAuth2Configuration(Ljava/util/List;Ljava/util/List;)Lnk5;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v0, 0x0

    .line 12
    move-object/from16 v2, p1

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->setUsingOpenIdConfiguration(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lok5;

    .line 21
    .line 22
    new-instance v4, Lb05;

    .line 23
    .line 24
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v0, v3, Lnk5;->a:Ljava/net/URL;

    .line 32
    .line 33
    const-string v5, "/signup/v1.0/start"

    .line 34
    .line 35
    const-string v6, "/signup/v1.0/challenge"

    .line 36
    .line 37
    invoke-static {v3, v0, v5, v0, v6}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v7, "/signup/v1.0/continue"

    .line 41
    .line 42
    const-string v8, "/oauth2/v2.0/initiate"

    .line 43
    .line 44
    invoke-static {v3, v0, v7, v0, v8}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v9, "/oauth2/v2.0/introspect"

    .line 48
    .line 49
    const-string v10, "/oauth2/v2.0/challenge"

    .line 50
    .line 51
    invoke-static {v3, v0, v9, v0, v10}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v11, "/oauth2/v2.0/token"

    .line 55
    .line 56
    const-string v12, "/resetpassword/v1.0/start"

    .line 57
    .line 58
    invoke-static {v3, v0, v11, v0, v12}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v13, "/resetpassword/v1.0/challenge"

    .line 62
    .line 63
    const-string v14, "/resetpassword/v1.0/continue"

    .line 64
    .line 65
    invoke-static {v3, v0, v13, v0, v14}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v15, "/resetpassword/v1.0/submit"

    .line 69
    .line 70
    move-object/from16 p0, v1

    .line 71
    .line 72
    const-string v1, "/resetpassword/v1.0/poll_completion"

    .line 73
    .line 74
    invoke-static {v3, v0, v15, v0, v1}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "/register/v1.0/introspect"

    .line 78
    .line 79
    move-object/from16 v16, v4

    .line 80
    .line 81
    const-string v4, "/register/v1.0/challenge"

    .line 82
    .line 83
    invoke-static {v3, v0, v2, v0, v4}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move-object/from16 v17, v2

    .line 87
    .line 88
    const-string v2, "/register/v1.0/continue"

    .line 89
    .line 90
    invoke-virtual {v3, v0, v2}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 91
    .line 92
    .line 93
    move-result-object v18

    .line 94
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v18

    .line 98
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v18, Lsl4;

    .line 105
    .line 106
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 107
    .line 108
    .line 109
    move-result-object v19

    .line 110
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v0, v5}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 114
    .line 115
    .line 116
    move-result-object v19

    .line 117
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v19

    .line 121
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0, v6}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 125
    .line 126
    .line 127
    move-result-object v19

    .line 128
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v19

    .line 132
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v0, v7, v0, v8}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v0, v9, v0, v10}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v0, v11, v0, v12}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v0, v13, v0, v14}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v0, v15, v0, v1}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v19, v1

    .line 151
    .line 152
    move-object/from16 v1, v17

    .line 153
    .line 154
    invoke-static {v3, v0, v1, v0, v4}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v0, v2}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 158
    .line 159
    .line 160
    move-result-object v17

    .line 161
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v17

    .line 165
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    new-instance v17, Lsl4;

    .line 172
    .line 173
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 174
    .line 175
    .line 176
    move-result-object v20

    .line 177
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v0, v5}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 181
    .line 182
    .line 183
    move-result-object v20

    .line 184
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v20

    .line 188
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v0, v6}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 192
    .line 193
    .line 194
    move-result-object v20

    .line 195
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v20

    .line 199
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v3, v0, v7, v0, v8}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v3, v0, v9, v0, v10}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v3, v0, v11, v0, v12}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v3, v0, v13, v0, v14}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v20, v13

    .line 215
    .line 216
    move-object/from16 v13, v19

    .line 217
    .line 218
    invoke-static {v3, v0, v15, v0, v13}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v3, v0, v1, v0, v4}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v0, v2}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 225
    .line 226
    .line 227
    move-result-object v19

    .line 228
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v19

    .line 232
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 236
    .line 237
    .line 238
    move-object/from16 v19, v2

    .line 239
    .line 240
    new-instance v2, Lns0;

    .line 241
    .line 242
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 243
    .line 244
    .line 245
    move-result-object v21

    .line 246
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v0, v5}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v0, v6}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v3, v0, v7, v0, v8}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v3, v0, v9, v0, v10}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v3, v0, v11, v0, v12}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v5, v20

    .line 281
    .line 282
    invoke-static {v3, v0, v5, v0, v14}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v3, v0, v15, v0, v13}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v3, v0, v1, v0, v4}, Leq3;->q(Lnk5;Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    move-object/from16 v1, v19

    .line 292
    .line 293
    invoke-virtual {v3, v0, v1}, Lnk5;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    const/16 v0, 0xb

    .line 305
    .line 306
    invoke-direct {v2, v0}, Lns0;-><init>(I)V

    .line 307
    .line 308
    .line 309
    move-object/from16 v1, p0

    .line 310
    .line 311
    move-object v7, v2

    .line 312
    move-object/from16 v4, v16

    .line 313
    .line 314
    move-object/from16 v6, v17

    .line 315
    .line 316
    move-object/from16 v5, v18

    .line 317
    .line 318
    move-object/from16 v2, p1

    .line 319
    .line 320
    invoke-direct/range {v1 .. v7}, Lok5;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;Lnk5;Lb05;Lsl4;Lsl4;Lns0;)V

    .line 321
    .line 322
    .line 323
    return-object v1
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
