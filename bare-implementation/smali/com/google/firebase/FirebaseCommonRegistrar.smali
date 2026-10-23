.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


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

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/16 v1, 0x5f

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x2f

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 7

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v0, Lfg2;

    .line 7
    .line 8
    invoke-static {v0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lji2;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    const-class v5, Lwd0;

    .line 17
    .line 18
    invoke-direct {v2, v3, v4, v5}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ltn1;->a(Lji2;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ll0;

    .line 25
    .line 26
    const/4 v5, 0x7

    .line 27
    invoke-direct {v2, v5}, Ll0;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v1, Ltn1;->f:Lmo1;

    .line 31
    .line 32
    invoke-virtual {v1}, Ltn1;->b()Lun1;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v1, Lnc6;

    .line 40
    .line 41
    const-class v2, Lak0;

    .line 42
    .line 43
    const-class v5, Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    invoke-direct {v1, v2, v5}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    const-class v2, Lr34;

    .line 49
    .line 50
    const-class v5, Ls34;

    .line 51
    .line 52
    filled-new-array {v2, v5}, [Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v5, Ltn1;

    .line 57
    .line 58
    const-class v6, Lne2;

    .line 59
    .line 60
    invoke-direct {v5, v6, v2}, Ltn1;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    const-class v2, Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v2}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v5, v2}, Ltn1;->a(Lji2;)V

    .line 70
    .line 71
    .line 72
    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 73
    .line 74
    invoke-static {v2}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v5, v2}, Ltn1;->a(Lji2;)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lji2;

    .line 82
    .line 83
    const-class v6, Lq34;

    .line 84
    .line 85
    invoke-direct {v2, v3, v4, v6}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ltn1;->a(Lji2;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lji2;

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    invoke-direct {v2, v3, v3, v0}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Ltn1;->a(Lji2;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lji2;

    .line 101
    .line 102
    invoke-direct {v0, v1, v3, v4}, Lji2;-><init>(Lnc6;II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v0}, Ltn1;->a(Lji2;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Llb;

    .line 109
    .line 110
    invoke-direct {v0, v1}, Llb;-><init>(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, v5, Ltn1;->f:Lmo1;

    .line 114
    .line 115
    invoke-virtual {v5}, Ltn1;->b()Lun1;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "fire-android"

    .line 129
    .line 130
    invoke-static {v1, v0}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    const-string v0, "fire-core"

    .line 138
    .line 139
    const-string v1, "22.0.1"

    .line 140
    .line 141
    invoke-static {v0, v1}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "device-name"

    .line 155
    .line 156
    invoke-static {v1, v0}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "device-model"

    .line 170
    .line 171
    invoke-static {v1, v0}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v1, "device-brand"

    .line 185
    .line 186
    invoke-static {v1, v0}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    new-instance v0, Lx5;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v1, "android-target-sdk"

    .line 199
    .line 200
    invoke-static {v1, v0}, Lvm4;->j(Ljava/lang/String;Lkt4;)Lun1;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    new-instance v0, Lg84;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v1, "android-min-sdk"

    .line 213
    .line 214
    invoke-static {v1, v0}, Lvm4;->j(Ljava/lang/String;Lkt4;)Lun1;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v0, Ly5;

    .line 222
    .line 223
    const/4 v1, 0x6

    .line 224
    invoke-direct {v0, v1}, Ly5;-><init>(I)V

    .line 225
    .line 226
    .line 227
    const-string v1, "android-platform"

    .line 228
    .line 229
    invoke-static {v1, v0}, Lvm4;->j(Ljava/lang/String;Lkt4;)Lun1;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    new-instance v0, Lz5;

    .line 237
    .line 238
    const/16 v1, 0x9

    .line 239
    .line 240
    invoke-direct {v0, v1}, Lz5;-><init>(I)V

    .line 241
    .line 242
    .line 243
    const-string v1, "android-installer"

    .line 244
    .line 245
    invoke-static {v1, v0}, Lvm4;->j(Ljava/lang/String;Lkt4;)Lun1;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    :try_start_0
    sget-object v0, Lep4;->b:Lep4;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const-string v0, "2.3.0"
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :catch_0
    const/4 v0, 0x0

    .line 261
    :goto_0
    if-eqz v0, :cond_0

    .line 262
    .line 263
    const-string v1, "kotlin"

    .line 264
    .line 265
    invoke-static {v1, v0}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_0
    return-object p0
.end method
