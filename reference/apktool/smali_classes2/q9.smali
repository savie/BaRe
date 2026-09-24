.class public final synthetic Lq9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lq9;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lq9;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/V;->b()Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance p0, Lsa5;

    .line 12
    .line 13
    new-instance v0, Lea5;

    .line 14
    .line 15
    sget-object v1, Lgt7;->a:Lgt7;

    .line 16
    .line 17
    sget-object v1, Lgt7;->c:Lgv7;

    .line 18
    .line 19
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lokhttp3/OkHttpClient;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lea5;-><init>(Lokhttp3/OkHttpClient;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lsa5;-><init>(Lea5;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-static {}, Lorg/swiftapps/rootservice/ShellHelper;->getShShell()Lcom/topjohnwu/superuser/Shell;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_2
    new-instance p0, Lix6;

    .line 38
    .line 39
    invoke-direct {p0}, Lix6;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_3
    sget-object p0, Lg00;->a:Lg00;

    .line 44
    .line 45
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "android.hardware.telephony"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_4
    sget p0, Lle7;->c:I

    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    if-eq p0, v0, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    invoke-static {}, Lle7;->h()Lh94;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lf94;

    .line 71
    .line 72
    invoke-virtual {p0}, Lf94;->getUid()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    sput p0, Lle7;->c:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move p0, v0

    .line 80
    :goto_0
    const/16 v0, 0x7d0

    .line 81
    .line 82
    if-ne p0, v0, :cond_1

    .line 83
    .line 84
    new-instance v0, Lxr8;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lxr8;-><init>(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    new-instance v0, Lif8;

    .line 91
    .line 92
    const-string v1, "Unsupported Shizuku UID: "

    .line 93
    .line 94
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :catch_1
    move-exception p0

    .line 103
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_1
    return-object v0

    .line 108
    :pswitch_5
    invoke-static {}, Lb67;->c()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_2

    .line 113
    .line 114
    const-string p0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 115
    .line 116
    invoke-static {p0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 122
    .line 123
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 124
    .line 125
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    :goto_2
    return-object p0

    .line 134
    :pswitch_6
    sget-object p0, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->a:Lgv7;

    .line 135
    .line 136
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 137
    .line 138
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-class v0, Landroid/app/NotificationManager;

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Landroid/app/NotificationManager;

    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_8
    const/16 p0, 0xc

    .line 157
    .line 158
    new-array p0, p0, [B

    .line 159
    .line 160
    new-instance v0, Ljava/security/SecureRandom;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 166
    .line 167
    .line 168
    return-object p0

    .line 169
    :pswitch_9
    sget-boolean p0, Lg42;->a:Z

    .line 170
    .line 171
    const-string p0, "AQLnHR+311m8gLaED5HL71mjWVEQmSHhejaA8TjPP/Ab4S1jbhwOGIFNLZ2vJ+SMi488LJlcQw=="

    .line 172
    .line 173
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_a
    sget-boolean p0, Lg42;->a:Z

    .line 179
    .line 180
    const-string p0, "AQJzaWbGiC0R5OaXtex36eYvzDMqABA0IygqfEmIE18EYDjKkp1HcESk0XgHwnul"

    .line 181
    .line 182
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :pswitch_b
    sget-boolean p0, Lg42;->a:Z

    .line 188
    .line 189
    const-string p0, "AQLqrYixWOfZlumvD0uDXSVQYtkaCkp0BHa7b2yDdzq4Y8dw4DIHCM70r7g/+nJozNGoAkSuRmu5B8HIUqMPpGM3ZrrVrtCp"

    .line 190
    .line 191
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :pswitch_c
    new-instance p0, Lwg5$c;

    .line 197
    .line 198
    invoke-direct {p0}, Lwg5$c;-><init>()V

    .line 199
    .line 200
    .line 201
    return-object p0

    .line 202
    :pswitch_d
    invoke-static {}, Ldd1;->h()Ltb1;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :pswitch_e
    sget-object p0, Lzu0;->a:Lzu0;

    .line 208
    .line 209
    invoke-static {}, Lzu0;->b()Lmv0;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :pswitch_f
    invoke-static {}, Llk;->w()Lg55;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    return-object p0

    .line 219
    :pswitch_10
    sget-object p0, Lve6;->a:Lz4;

    .line 220
    .line 221
    sget-object p0, Lve6;->a:Lz4;

    .line 222
    .line 223
    invoke-virtual {p0}, Lz4;->a()Ljava/util/Random;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    const/high16 v0, 0x7fff0000

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    const/high16 v0, 0x10000

    .line 234
    .line 235
    add-int/2addr p0, v0

    .line 236
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
