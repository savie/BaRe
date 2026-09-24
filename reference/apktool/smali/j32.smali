.class public final synthetic Lj32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lj32;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lj32;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lj32;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lj32;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lj32;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lj32;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lj32;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lj32;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Ld23;

    .line 16
    .line 17
    check-cast v4, Lo23;

    .line 18
    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "FTP transfer did not complete for "

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0, v2}, Lz13;->h(Z)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Lk55;->x(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ". Reply="

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "get: Discarding FTP client after incomplete transfer from "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v4, p0, v1}, Lo23;->x(Ld23;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 88
    .line 89
    check-cast v4, Lji;

    .line 90
    .line 91
    check-cast v3, Landroid/graphics/Bitmap;

    .line 92
    .line 93
    new-instance v0, Landroid/content/Intent;

    .line 94
    .line 95
    const-class v5, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 96
    .line 97
    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .line 99
    .line 100
    const-string v5, "android.intent.action.MAIN"

    .line 101
    .line 102
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v5, "detail_launched_from_shortcut"

    .line 107
    .line 108
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v4}, Lji;->getPackageName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Lji;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    new-instance v6, Lxe7;

    .line 128
    .line 129
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object p0, v6, Lxe7;->a:Landroid/content/Context;

    .line 133
    .line 134
    iput-object v5, v6, Lxe7;->b:Ljava/lang/String;

    .line 135
    .line 136
    filled-new-array {v0}, [Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, v6, Lxe7;->c:[Landroid/content/Intent;

    .line 141
    .line 142
    invoke-virtual {v4}, Lji;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v5, "SB ("

    .line 147
    .line 148
    const-string v7, ")"

    .line 149
    .line 150
    invoke-static {v5, v0, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, v6, Lxe7;->d:Ljava/lang/String;

    .line 155
    .line 156
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 157
    .line 158
    invoke-direct {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 159
    .line 160
    .line 161
    iput-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v0, v6, Lxe7;->e:Landroidx/core/graphics/drawable/IconCompat;

    .line 164
    .line 165
    iget-object v0, v6, Lxe7;->d:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const/4 v2, 0x0

    .line 172
    if-nez v0, :cond_2

    .line 173
    .line 174
    iget-object v0, v6, Lxe7;->c:[Landroid/content/Intent;

    .line 175
    .line 176
    if-eqz v0, :cond_1

    .line 177
    .line 178
    array-length v0, v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    .line 181
    new-instance v0, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;

    .line 182
    .line 183
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z:Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;

    .line 187
    .line 188
    new-instance v2, Landroid/content/IntentFilter;

    .line 189
    .line 190
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v2}, Lorg/swiftapps/swiftbackup/common/Const;->C(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Landroid/content/Intent;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-class v3, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;

    .line 203
    .line 204
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .line 206
    .line 207
    const-string v2, "APP_PARCEL"

    .line 208
    .line 209
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const/4 v3, 0x0

    .line 221
    const/high16 v4, 0x4000000

    .line 222
    .line 223
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-class v2, Landroid/content/pm/ShortcutManager;

    .line 232
    .line 233
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 238
    .line 239
    invoke-virtual {v6}, Lxe7;->a()Landroid/content/pm/ShortcutInfo;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_1
    const-string p0, "Shortcut must have an intent"

    .line 248
    .line 249
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :goto_0
    move-object v1, v2

    .line 253
    goto :goto_1

    .line 254
    :cond_2
    const-string p0, "Shortcut must have a non-empty label"

    .line 255
    .line 256
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :goto_1
    return-object v1

    .line 261
    :pswitch_1
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 262
    .line 263
    check-cast v4, Lt22;

    .line 264
    .line 265
    check-cast v3, Lwv3;

    .line 266
    .line 267
    invoke-static {p0, v4, v3}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->$r8$lambda$VgFJQVU0Mq3s0QE5EFmAIP_MF3Q(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    return-object p0

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
