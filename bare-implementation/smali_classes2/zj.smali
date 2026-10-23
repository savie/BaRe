.class public final synthetic Lzj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lzj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Liu8;)V
    .locals 0

    .line 1
    const/16 p1, 0x13

    .line 2
    .line 3
    iput p1, p0, Lzj;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget p0, p0, Lzj;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 7
    .line 8
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "wifi"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_0
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 29
    .line 30
    const/16 v10, 0xff

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    invoke-direct/range {v0 .. v11}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_1
    new-instance p0, Ljb5;

    .line 47
    .line 48
    new-instance v0, Lea5;

    .line 49
    .line 50
    sget-object v1, Lgt7;->a:Lgt7;

    .line 51
    .line 52
    sget-object v1, Lgt7;->c:Lgv7;

    .line 53
    .line 54
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lokhttp3/OkHttpClient;

    .line 59
    .line 60
    invoke-direct {v0, v2}, Lea5;-><init>(Lokhttp3/OkHttpClient;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lokhttp3/OkHttpClient;

    .line 68
    .line 69
    invoke-direct {p0, v0, v1}, Ljb5;-><init>(Lea5;Lokhttp3/OkHttpClient;)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_2
    sget-object p0, Lmk7;->a:Lgv7;

    .line 74
    .line 75
    const-string p0, "ANDROID_DATA"

    .line 76
    .line 77
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    if-eqz p0, :cond_0

    .line 84
    .line 85
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const-string p0, "/data"

    .line 90
    .line 91
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-object v0

    .line 95
    :pswitch_3
    sget-boolean p0, Lg42;->a:Z

    .line 96
    .line 97
    const-string p0, "AQI+UbXNmLang25NUR5B3MdXRksgwAYEcSFFo6ICdtsZiBszQUNh5rw="

    .line 98
    .line 99
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_4
    new-instance p0, Lix6;

    .line 105
    .line 106
    invoke-direct {p0}, Lix6;-><init>()V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_5
    sget-object p0, Ldz5;->a:Ldz5;

    .line 111
    .line 112
    sget-object p0, Ldz5;->c:Lgv7;

    .line 113
    .line 114
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/util/Set;

    .line 119
    .line 120
    const-string v0, "android.permission.READ_CONTACTS"

    .line 121
    .line 122
    invoke-static {p0, v0}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_6
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->g()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :pswitch_7
    invoke-static {}, Lxg5;->c()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :pswitch_8
    sget-object p0, Lx95;->g:Lx95;

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_9
    sget-object p0, Lc64;->l:Lix6;

    .line 141
    .line 142
    invoke-static {}, Lre3;->k()Lzc2;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const-string v0, "isBlocked"

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :pswitch_a
    sget-object p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 154
    .line 155
    new-instance p0, Lh54;

    .line 156
    .line 157
    invoke-direct {p0}, Lh54;-><init>()V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_c
    const-string p0, "RSA"

    .line 174
    .line 175
    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    const/16 v0, 0x1000

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_d
    sget-boolean p0, Lg42;->a:Z

    .line 193
    .line 194
    const-string p0, "AQKnmGzBmO0rTMjj1UbyTN08HjNGLHpU6/4XwmIopuhwh2VunDW+GPyW3iMJh3PqSm/ZiHS976EwP0rmj5Y2LI0tfU2oPyKMO+3K89Km"

    .line 195
    .line 196
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_e
    sget-boolean p0, Lg42;->a:Z

    .line 202
    .line 203
    const-string p0, "AQJz0bbTq4rLCtXgLH++LlpmBYzIyDT/AkDtR5qzU+F0G6VCm1mv1nFZZzehCFqqcHf7vzZdSqpw7k6YoqdxwmfwPNq3NzRpyw4IijN/VA=="

    .line 204
    .line 205
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :pswitch_f
    sget-boolean p0, Lg42;->a:Z

    .line 211
    .line 212
    const-string p0, "AQL90STfpdjwZmvdMa6A0V0sk9zJo8Bruwk8YqvYOmWgqI0/NzDL/9YZ6dUSQmlVslA0bVxeHJn+vyqjDumEWSMO9w=="

    .line 213
    .line 214
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    return-object p0

    .line 219
    :pswitch_10
    new-instance p0, Lqm;

    .line 220
    .line 221
    const/4 v0, 0x2

    .line 222
    invoke-direct {p0, v0}, Lqm;-><init>(I)V

    .line 223
    .line 224
    .line 225
    const/16 v0, 0x8

    .line 226
    .line 227
    const-string v1, "AppUtil"

    .line 228
    .line 229
    const-string v2, "loadActivityManagerProcessStateConstants"

    .line 230
    .line 231
    const/4 v3, 0x1

    .line 232
    invoke-static {v1, v2, v3, p0, v0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    check-cast p0, Le00;

    .line 237
    .line 238
    return-object p0

    .line 239
    :pswitch_11
    sget-object p0, Lzn7;->q:Lyn7;

    .line 240
    .line 241
    invoke-virtual {p0}, Lyn7;->d()Lzn7;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_12
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 247
    .line 248
    const-string v0, "yyyyMMdd-HHmmss"

    .line 249
    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 255
    .line 256
    .line 257
    return-object p0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
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
