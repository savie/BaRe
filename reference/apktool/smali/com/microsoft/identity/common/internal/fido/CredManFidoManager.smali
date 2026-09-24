.class public final Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/fido/IFidoManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final credentialManager:Lu22;

.field private final legacyManager:Lcom/microsoft/identity/common/internal/fido/IFidoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 2
    .line 3
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->legacyManager:Lcom/microsoft/identity/common/internal/fido/IFidoManager;

    .line 10
    .line 11
    new-instance p2, Lu22;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lu22;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->credentialManager:Lu22;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lqj7;Lkv1;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object p6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p6}, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;-><init>(Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;Lkv1;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v0, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    sget-object v5, Lyx1;->a:Lyx1;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v3, :cond_2

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v4

    .line 52
    :cond_2
    iget-object p5, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$5:Lqj7;

    .line 53
    .line 54
    iget-object p4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$4:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p3, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$3:Ljava/util/List;

    .line 57
    .line 58
    iget-object p2, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$2:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$1:Ljava/lang/String;

    .line 61
    .line 62
    iget-object p0, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$0:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 63
    .line 64
    :try_start_0
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Lan5; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_3
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ":authenticate"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    sget v1, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->a:I

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    if-eqz p3, :cond_4

    .line 114
    .line 115
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    check-cast v7, Ljava/lang/String;

    .line 130
    .line 131
    new-instance v8, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialDescriptor;

    .line 132
    .line 133
    invoke-direct {v8, v7}, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialDescriptor;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    new-instance v6, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialRequestOptions;

    .line 141
    .line 142
    sget-object v7, Lf51;->a:Ljava/nio/charset/Charset;

    .line 143
    .line 144
    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const/16 v8, 0xb

    .line 152
    .line 153
    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-direct {v6, v7, p2, v1, p4}, Lcom/microsoft/identity/common/internal/fido/PublicKeyCredentialRequestOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;

    .line 164
    .line 165
    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v6}, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v6, Lww3;

    .line 173
    .line 174
    invoke-direct {v6, v1}, Lww3;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lzv3;

    .line 178
    .line 179
    invoke-static {v6}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->legacyManager:Lcom/microsoft/identity/common/internal/fido/IFidoManager;

    .line 184
    .line 185
    if-eqz v7, :cond_5

    .line 186
    .line 187
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    sget-object v8, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 192
    .line 193
    invoke-interface {v7, v8}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-eqz v7, :cond_5

    .line 198
    .line 199
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 200
    .line 201
    const/16 v8, 0x22

    .line 202
    .line 203
    if-ge v7, v8, :cond_5

    .line 204
    .line 205
    move v7, v3

    .line 206
    goto :goto_3

    .line 207
    :cond_5
    const/4 v7, 0x0

    .line 208
    :goto_3
    const/16 v8, 0xe

    .line 209
    .line 210
    invoke-direct {v1, v8, v6, v7}, Lzv3;-><init>(ILjava/util/List;Z)V

    .line 211
    .line 212
    .line 213
    :try_start_1
    const-string v6, "Calling Credential Manager with a GetCredentialRequest."

    .line 214
    .line 215
    sget v7, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 216
    .line 217
    invoke-static {v0, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->credentialManager:Lu22;

    .line 221
    .line 222
    iget-object v6, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->context:Landroid/content/Context;

    .line 223
    .line 224
    iput-object p0, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$0:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 225
    .line 226
    iput-object p1, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$1:Ljava/lang/String;

    .line 227
    .line 228
    iput-object p2, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$2:Ljava/lang/String;

    .line 229
    .line 230
    iput-object p3, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$3:Ljava/util/List;

    .line 231
    .line 232
    iput-object p4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$4:Ljava/lang/String;

    .line 233
    .line 234
    iput-object p5, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$5:Lqj7;

    .line 235
    .line 236
    iput v3, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->label:I

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v6, v1, p6}, Lu22;->b(Landroid/content/Context;Lzv3;Lkv1;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-ne v0, v5, :cond_6

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_6
    :goto_4
    check-cast v0, Lbw3;

    .line 249
    .line 250
    iget-object v0, v0, Lbw3;->a:Lao;

    .line 251
    .line 252
    check-cast v0, Loa6;

    .line 253
    .line 254
    sget v1, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->a:I

    .line 255
    .line 256
    iget-object v0, v0, Loa6;->c:Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->extractAuthenticatorAssertionResponseJson(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0
    :try_end_1
    .catch Lan5; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    return-object p0

    .line 263
    :goto_5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;->legacyManager:Lcom/microsoft/identity/common/internal/fido/IFidoManager;

    .line 264
    .line 265
    if-eqz p0, :cond_8

    .line 266
    .line 267
    iput-object v4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$0:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 268
    .line 269
    iput-object v4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$1:Ljava/lang/String;

    .line 270
    .line 271
    iput-object v4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$2:Ljava/lang/String;

    .line 272
    .line 273
    iput-object v4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$3:Ljava/util/List;

    .line 274
    .line 275
    iput-object v4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$4:Ljava/lang/String;

    .line 276
    .line 277
    iput-object v4, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->L$5:Lqj7;

    .line 278
    .line 279
    iput v2, p6, Lcom/microsoft/identity/common/internal/fido/CredManFidoManager$authenticate$1;->label:I

    .line 280
    .line 281
    invoke-interface/range {p0 .. p6}, Lcom/microsoft/identity/common/internal/fido/IFidoManager;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lqj7;Lkv1;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    if-ne p0, v5, :cond_7

    .line 286
    .line 287
    :goto_6
    return-object v5

    .line 288
    :cond_7
    return-object p0

    .line 289
    :cond_8
    throw v0
.end method
