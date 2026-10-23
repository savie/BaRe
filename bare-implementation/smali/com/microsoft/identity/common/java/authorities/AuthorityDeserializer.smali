.class public Lcom/microsoft/identity/common/java/authorities/AuthorityDeserializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgl4;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "type"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_7

    .line 12
    .line 13
    invoke-virtual {p1}, Lqj4;->o()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, -0x1

    .line 26
    sparse-switch p2, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    :goto_0
    move p1, v1

    .line 30
    goto :goto_1

    .line 31
    :sswitch_0
    const-string p2, "CIAM"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x3

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string p2, "ADFS"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x2

    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string p2, "B2C"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move p1, v0

    .line 63
    goto :goto_1

    .line 64
    :sswitch_3
    const-string p2, "AAD"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 74
    :goto_1
    const-string p2, "AuthorityDeserializer:deserialize"

    .line 75
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    const-string p1, "Type: Unknown"

    .line 80
    .line 81
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-class p1, Lcom/microsoft/identity/common/java/authorities/UnknownAuthority;

    .line 85
    .line 86
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_0
    const-string p1, "Type: CIAM"

    .line 94
    .line 95
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-class p1, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 99
    .line 100
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_1
    const-string p1, "Type: ADFS"

    .line 108
    .line 109
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-class p1, Lcom/microsoft/identity/common/java/authorities/ActiveDirectoryFederationServicesAuthority;

    .line 113
    .line 114
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 119
    .line 120
    return-object p0

    .line 121
    :pswitch_2
    const-string p1, "Type: B2C"

    .line 122
    .line 123
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-class p1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    .line 127
    .line 128
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_3
    const-string p1, "Type: AAD"

    .line 136
    .line 137
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-class p1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 141
    .line 142
    invoke-virtual {p3, p0, p1}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 147
    .line 148
    if-eqz p0, :cond_6

    .line 149
    .line 150
    iget-object p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    :try_start_0
    new-instance p3, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 155
    .line 156
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {p3, p1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/net/URI;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Led8;->getPort()I

    .line 164
    .line 165
    .line 166
    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const-string v2, "://"

    .line 168
    .line 169
    if-eq p1, v1, :cond_4

    .line 170
    .line 171
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3}, Led8;->getScheme()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3}, Led8;->getHost()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ":"

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Led8;->getPort()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    goto :goto_2

    .line 210
    :catch_0
    move-exception p1

    .line 211
    goto :goto_4

    .line 212
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Led8;->getScheme()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3}, Led8;->getHost()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    :goto_2
    invoke-virtual {p3}, Led8;->getPathSegments()Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_5

    .line 247
    .line 248
    const-string p3, ""

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    sub-int/2addr v1, v0

    .line 256
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    check-cast p3, Ljava/lang/String;

    .line 261
    .line 262
    :goto_3
    invoke-static {p3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_6

    .line 267
    .line 268
    invoke-static {p1, p3}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getAzureActiveDirectoryAudience(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    .line 274
    return-object p0

    .line 275
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    invoke-static {p2, p3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    :cond_6
    return-object p0

    .line 283
    :cond_7
    const/4 p0, 0x0

    .line 284
    return-object p0

    .line 285
    :sswitch_data_0
    .sparse-switch
        0xfc24 -> :sswitch_3
        0xfe13 -> :sswitch_2
        0x1e9430 -> :sswitch_1
        0x1f8f12 -> :sswitch_0
    .end sparse-switch

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
