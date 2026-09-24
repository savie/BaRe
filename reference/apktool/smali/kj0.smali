.class public final synthetic Lkj0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lat5;
.implements Lg36;
.implements Lpd7;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkj0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lkj0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 8

    .line 1
    iget-object p2, p0, Lkj0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v7, p2

    .line 4
    check-cast v7, Ljava/lang/String;

    .line 5
    .line 6
    iget-object p0, p0, Lkj0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-static {}, Lji8;->m()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    const-string v0, "main.jar"

    .line 25
    .line 26
    invoke-direct {v1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    const/high16 v0, 0x10000

    .line 47
    .line 48
    :try_start_1
    new-array v0, v0, [B

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-lez v3, :cond_0

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 65
    .line 66
    .line 67
    const-string p3, "daemon"

    .line 68
    .line 69
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    const-string v0, "--nice-name="

    .line 74
    .line 75
    if-nez p3, :cond_2

    .line 76
    .line 77
    const-string p3, "start"

    .line 78
    .line 79
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-nez p3, :cond_1

    .line 84
    .line 85
    const-string p2, ""

    .line 86
    .line 87
    :goto_1
    move-object v4, p2

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    const v2, 0x186a0

    .line 100
    .line 101
    .line 102
    div-int/2addr p3, v2

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p2, ":root:"

    .line 112
    .line 113
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p2, ":root:daemon"

    .line 137
    .line 138
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    goto :goto_1

    .line 146
    :goto_2
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_3

    .line 151
    .line 152
    const-string p2, "64"

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    const-string p2, "32"

    .line 156
    .line 157
    :goto_3
    const-string p3, "/system/bin/app_process"

    .line 158
    .line 159
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const-string v0, ""

    .line 178
    .line 179
    const-string v3, ""

    .line 180
    .line 181
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    const-string p3, "(%s CLASSPATH=%s %s %s /system/bin %s com.topjohnwu.superuser.internal.RootServerMain \'%s\' %d %s >/dev/null 2>&1)&"

    .line 186
    .line 187
    invoke-static {p2, p3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 192
    .line 193
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 198
    .line 199
    .line 200
    const/16 p0, 0xa

    .line 201
    .line 202
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    move-object p0, v0

    .line 211
    goto :goto_5

    .line 212
    :catchall_1
    move-exception v0

    .line 213
    move-object p0, v0

    .line 214
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :catchall_2
    move-exception v0

    .line 219
    move-object p1, v0

    .line 220
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    :goto_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    :goto_5
    if-eqz p3, :cond_4

    .line 225
    .line 226
    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 227
    .line 228
    .line 229
    goto :goto_6

    .line 230
    :catchall_3
    move-exception v0

    .line 231
    move-object p1, v0

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    :cond_4
    :goto_6
    throw p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkj0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Llj0;

    .line 4
    .line 5
    iget-object p0, p0, Lkj0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lpj0;

    .line 8
    .line 9
    check-cast p1, Lbe8;

    .line 10
    .line 11
    iget-boolean p1, p0, Lpj0;->d:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lpj0;->b()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    iget-object p1, v0, Llj0;->S:Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    const/high16 p0, 0x3f800000    # 1.0f

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    .line 36
    .line 37
    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lkj0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx01;

    .line 4
    .line 5
    iget-object p0, p0, Lkj0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lrz0;

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const v1, 0x7f0a007d

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lx01;->V(Lrz0;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    const v1, 0x7f0a008d

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lw01;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {p1, v1, v0, p0}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v3, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    const v1, 0x7f0a005b

    .line 40
    .line 41
    .line 42
    if-ne p1, v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lrz0;->isCloudItem()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    sget-object p1, Ltb1;->a:Ltb1;

    .line 57
    .line 58
    invoke-static {}, Lqb1;->m()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Lhv1;

    .line 66
    .line 67
    const v1, 0x7f140160

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Ls35;

    .line 74
    .line 75
    invoke-direct {v4, v0, v1, p1, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 76
    .line 77
    .line 78
    const p1, 0x7f1301e5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p1}, Lv75;->v(I)V

    .line 82
    .line 83
    .line 84
    const p1, 0x7f13054e

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p1}, Lv75;->n(I)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Llu;

    .line 91
    .line 92
    invoke-direct {p1, v2, v0, p0}, Llu;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const p0, 0x7f1305d0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, p0, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    const p0, 0x7f1303ba

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, p0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_0
    return v2
.end method
