.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final Companion:Ldh3;

.field public static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final appContext:Lnc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc6;"
        }
    .end annotation
.end field

.field private static final backgroundDispatcher:Lnc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc6;"
        }
    .end annotation
.end field

.field private static final blockingDispatcher:Lnc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc6;"
        }
    .end annotation
.end field

.field private static final firebaseApp:Lnc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc6;"
        }
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Lnc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc6;"
        }
    .end annotation
.end field

.field private static final firebaseSessionsComponent:Lnc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc6;"
        }
    .end annotation
.end field

.field private static final transportFactory:Lnc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc6;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldh3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Ldh3;

    .line 7
    .line 8
    const-class v0, Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lnc6;

    .line 15
    .line 16
    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 17
    .line 18
    invoke-static {v0}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lnc6;

    .line 23
    .line 24
    const-class v0, Lqg3;

    .line 25
    .line 26
    invoke-static {v0}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lnc6;

    .line 31
    .line 32
    new-instance v0, Lnc6;

    .line 33
    .line 34
    const-class v1, Lak0;

    .line 35
    .line 36
    const-class v2, Lrx1;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lnc6;

    .line 42
    .line 43
    new-instance v0, Lnc6;

    .line 44
    .line 45
    const-class v1, Lht0;

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lnc6;

    .line 51
    .line 52
    const-class v0, Lwa8;

    .line 53
    .line 54
    invoke-static {v0}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lnc6;

    .line 59
    .line 60
    const-class v0, Lzg3;

    .line 61
    .line 62
    invoke-static {v0}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lnc6;

    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lpp0;)Lzg3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$1(Ljo1;)Lzg3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAppContext$cp()Lnc6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lnc6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getBackgroundDispatcher$cp()Lnc6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lnc6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getBlockingDispatcher$cp()Lnc6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lnc6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseApp$cp()Lnc6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lnc6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseInstallationsApi$cp()Lnc6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lnc6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseSessionsComponent$cp()Lnc6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lnc6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTransportFactory$cp()Lnc6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lnc6;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Lpp0;)Lyg3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$0(Ljo1;)Lyg3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getComponents$lambda$0(Ljo1;)Lyg3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lnc6;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzg3;

    .line 8
    .line 9
    check-cast p0, Lo92;

    .line 10
    .line 11
    iget-object p0, p0, Lo92;->p:Lca6;

    .line 12
    .line 13
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lyg3;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final getComponents$lambda$1(Ljo1;)Lzg3;
    .locals 14

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lnc6;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/content/Context;

    .line 11
    .line 12
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lnc6;

    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast v1, Lox1;

    .line 22
    .line 23
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lnc6;

    .line 24
    .line 25
    invoke-interface {p0, v2}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    check-cast v2, Lox1;

    .line 33
    .line 34
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lnc6;

    .line 35
    .line 36
    invoke-interface {p0, v3}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast v3, Lcom/google/firebase/FirebaseApp;

    .line 44
    .line 45
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lnc6;

    .line 46
    .line 47
    invoke-interface {p0, v4}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    check-cast v4, Lqg3;

    .line 55
    .line 56
    sget-object v5, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lnc6;

    .line 57
    .line 58
    invoke-interface {p0, v5}, Ljo1;->f(Lnc6;)Lga6;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v5, Lo92;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lid4;->b(Ljava/lang/Object;)Lid4;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, v5, Lo92;->a:Lid4;

    .line 75
    .line 76
    invoke-static {v0}, Lid4;->b(Ljava/lang/Object;)Lid4;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, v5, Lo92;->b:Lid4;

    .line 81
    .line 82
    new-instance v3, Lfu;

    .line 83
    .line 84
    invoke-direct {v3, v0}, Lfu;-><init>(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Lao2;->a(Lw23;)Lca6;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, v5, Lo92;->c:Lca6;

    .line 92
    .line 93
    sget-object v0, Liz1;->b:Lsl4;

    .line 94
    .line 95
    invoke-static {v0}, Lao2;->a(Lw23;)Lca6;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, v5, Lo92;->d:Lca6;

    .line 100
    .line 101
    invoke-static {v4}, Lid4;->b(Ljava/lang/Object;)Lid4;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, v5, Lo92;->e:Lid4;

    .line 106
    .line 107
    iget-object v0, v5, Lo92;->a:Lid4;

    .line 108
    .line 109
    new-instance v3, Lzq8;

    .line 110
    .line 111
    const/16 v4, 0xa

    .line 112
    .line 113
    invoke-direct {v3, v0, v4}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Lao2;->a(Lw23;)Lca6;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, v5, Lo92;->f:Lca6;

    .line 121
    .line 122
    invoke-static {v2}, Lid4;->b(Ljava/lang/Object;)Lid4;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, v5, Lo92;->g:Lid4;

    .line 127
    .line 128
    iget-object v2, v5, Lo92;->f:Lca6;

    .line 129
    .line 130
    new-instance v3, Lwc9;

    .line 131
    .line 132
    const/4 v4, 0x7

    .line 133
    invoke-direct {v3, v4, v2, v0}, Lwc9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v3}, Lao2;->a(Lw23;)Lca6;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, v5, Lo92;->h:Lca6;

    .line 141
    .line 142
    invoke-static {v1}, Lid4;->b(Ljava/lang/Object;)Lid4;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, v5, Lo92;->i:Lid4;

    .line 147
    .line 148
    iget-object v0, v5, Lo92;->b:Lid4;

    .line 149
    .line 150
    iget-object v1, v5, Lo92;->g:Lid4;

    .line 151
    .line 152
    new-instance v2, Lyf1;

    .line 153
    .line 154
    const/4 v3, 0x6

    .line 155
    invoke-direct {v2, v3, v0, v1}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Lao2;->a(Lw23;)Lca6;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v1, v5, Lo92;->i:Lid4;

    .line 163
    .line 164
    iget-object v2, v5, Lo92;->d:Lca6;

    .line 165
    .line 166
    new-instance v3, Lu00;

    .line 167
    .line 168
    invoke-direct {v3, v4, v1, v2, v0}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v3}, Lao2;->a(Lw23;)Lca6;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    iget-object v7, v5, Lo92;->d:Lca6;

    .line 176
    .line 177
    iget-object v8, v5, Lo92;->e:Lid4;

    .line 178
    .line 179
    iget-object v9, v5, Lo92;->f:Lca6;

    .line 180
    .line 181
    iget-object v10, v5, Lo92;->h:Lca6;

    .line 182
    .line 183
    new-instance v6, Lnz4;

    .line 184
    .line 185
    const/4 v12, 0x4

    .line 186
    invoke-direct/range {v6 .. v12}, Lnz4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    invoke-static {v6}, Lao2;->a(Lw23;)Lca6;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v1, v5, Lo92;->c:Lca6;

    .line 194
    .line 195
    new-instance v2, Lyf1;

    .line 196
    .line 197
    const/16 v3, 0xb

    .line 198
    .line 199
    invoke-direct {v2, v3, v1, v0}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v2}, Lao2;->a(Lw23;)Lca6;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, v5, Lo92;->j:Lca6;

    .line 207
    .line 208
    sget-object v0, Lod2;->d:Llk;

    .line 209
    .line 210
    invoke-static {v0}, Lao2;->a(Lw23;)Lca6;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, v5, Lo92;->k:Lca6;

    .line 215
    .line 216
    iget-object v1, v5, Lo92;->d:Lca6;

    .line 217
    .line 218
    new-instance v2, Lh80;

    .line 219
    .line 220
    const/16 v4, 0xe

    .line 221
    .line 222
    const/4 v6, 0x0

    .line 223
    invoke-direct {v2, v1, v0, v4, v6}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Lao2;->a(Lw23;)Lca6;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iput-object v0, v5, Lo92;->l:Lca6;

    .line 231
    .line 232
    invoke-static {p0}, Lid4;->b(Ljava/lang/Object;)Lid4;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    new-instance v0, Ljq6;

    .line 237
    .line 238
    invoke-direct {v0, p0, v3}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Lao2;->a(Lw23;)Lca6;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    iget-object v7, v5, Lo92;->a:Lid4;

    .line 246
    .line 247
    iget-object v8, v5, Lo92;->e:Lid4;

    .line 248
    .line 249
    iget-object v9, v5, Lo92;->j:Lca6;

    .line 250
    .line 251
    iget-object v11, v5, Lo92;->i:Lid4;

    .line 252
    .line 253
    new-instance v6, Lgp1;

    .line 254
    .line 255
    invoke-direct/range {v6 .. v11}, Lgp1;-><init>(Lid4;Lca6;Lca6;Lca6;Lca6;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v6}, Lao2;->a(Lw23;)Lca6;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    iput-object p0, v5, Lo92;->m:Lca6;

    .line 263
    .line 264
    iget-object p0, v5, Lo92;->l:Lca6;

    .line 265
    .line 266
    new-instance v0, Lrb;

    .line 267
    .line 268
    const/16 v1, 0x16

    .line 269
    .line 270
    invoke-direct {v0, p0, v1}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 271
    .line 272
    .line 273
    invoke-static {v0}, Lao2;->a(Lw23;)Lca6;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    iget-object v0, v5, Lo92;->b:Lid4;

    .line 278
    .line 279
    iget-object v1, v5, Lo92;->g:Lid4;

    .line 280
    .line 281
    new-instance v2, Lgh;

    .line 282
    .line 283
    invoke-direct {v2, v0, v1, p0}, Lgh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v2}, Lao2;->a(Lw23;)Lca6;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    iput-object p0, v5, Lo92;->n:Lca6;

    .line 291
    .line 292
    iget-object p0, v5, Lo92;->b:Lid4;

    .line 293
    .line 294
    iget-object v0, v5, Lo92;->k:Lca6;

    .line 295
    .line 296
    new-instance v1, Lcd;

    .line 297
    .line 298
    const/16 v2, 0xc

    .line 299
    .line 300
    invoke-direct {v1, v2, p0, v0}, Lcd;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v1}, Lao2;->a(Lw23;)Lca6;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    iget-object v7, v5, Lo92;->j:Lca6;

    .line 308
    .line 309
    iget-object v8, v5, Lo92;->l:Lca6;

    .line 310
    .line 311
    iget-object v9, v5, Lo92;->m:Lca6;

    .line 312
    .line 313
    iget-object v10, v5, Lo92;->d:Lca6;

    .line 314
    .line 315
    iget-object v11, v5, Lo92;->n:Lca6;

    .line 316
    .line 317
    iget-object v13, v5, Lo92;->i:Lid4;

    .line 318
    .line 319
    new-instance v6, Lj75;

    .line 320
    .line 321
    invoke-direct/range {v6 .. v13}, Lj75;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v6}, Lao2;->a(Lw23;)Lca6;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    iput-object p0, v5, Lo92;->o:Lca6;

    .line 329
    .line 330
    new-instance v0, Lzq8;

    .line 331
    .line 332
    const/16 v1, 0x11

    .line 333
    .line 334
    invoke-direct {v0, p0, v1}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 335
    .line 336
    .line 337
    invoke-static {v0}, Lao2;->a(Lw23;)Lca6;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    iget-object v0, v5, Lo92;->a:Lid4;

    .line 342
    .line 343
    iget-object v1, v5, Lo92;->j:Lca6;

    .line 344
    .line 345
    iget-object v2, v5, Lo92;->i:Lid4;

    .line 346
    .line 347
    new-instance v3, Lxt1;

    .line 348
    .line 349
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 350
    .line 351
    .line 352
    iput-object v0, v3, Lxt1;->a:Ljava/lang/Object;

    .line 353
    .line 354
    iput-object v1, v3, Lxt1;->b:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v2, v3, Lxt1;->c:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object p0, v3, Lxt1;->d:Ljava/lang/Object;

    .line 359
    .line 360
    invoke-static {v3}, Lao2;->a(Lw23;)Lca6;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    iput-object p0, v5, Lo92;->p:Lca6;

    .line 365
    .line 366
    return-object v5
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lun1;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p0, Lyg3;

    .line 2
    .line 3
    invoke-static {p0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "fire-sessions"

    .line 8
    .line 9
    iput-object v0, p0, Ltn1;->a:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lnc6;

    .line 12
    .line 13
    invoke-static {v1}, Lji2;->a(Lnc6;)Lji2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Ltn1;->a(Lji2;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lc6;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-direct {v1, v2}, Lc6;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Ltn1;->f:Lmo1;

    .line 27
    .line 28
    invoke-virtual {p0}, Ltn1;->c()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ltn1;->b()Lun1;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-class v1, Lzg3;

    .line 36
    .line 37
    invoke-static {v1}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "fire-sessions-component"

    .line 42
    .line 43
    iput-object v2, v1, Ltn1;->a:Ljava/lang/String;

    .line 44
    .line 45
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lnc6;

    .line 46
    .line 47
    invoke-static {v2}, Lji2;->a(Lnc6;)Lji2;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ltn1;->a(Lji2;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lnc6;

    .line 55
    .line 56
    invoke-static {v2}, Lji2;->a(Lnc6;)Lji2;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ltn1;->a(Lji2;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lnc6;

    .line 64
    .line 65
    invoke-static {v2}, Lji2;->a(Lnc6;)Lji2;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ltn1;->a(Lji2;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lnc6;

    .line 73
    .line 74
    invoke-static {v2}, Lji2;->a(Lnc6;)Lji2;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ltn1;->a(Lji2;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lnc6;

    .line 82
    .line 83
    invoke-static {v2}, Lji2;->a(Lnc6;)Lji2;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ltn1;->a(Lji2;)V

    .line 88
    .line 89
    .line 90
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lnc6;

    .line 91
    .line 92
    new-instance v3, Lji2;

    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    invoke-direct {v3, v2, v4, v4}, Lji2;-><init>(Lnc6;II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ltn1;->a(Lji2;)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Ld6;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v2, v1, Ltn1;->f:Lmo1;

    .line 107
    .line 108
    invoke-virtual {v1}, Ltn1;->b()Lun1;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "3.0.6"

    .line 113
    .line 114
    invoke-static {v0, v2}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    filled-new-array {p0, v1, v0}, [Lun1;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method
