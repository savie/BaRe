.class public final Lom5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lpe2;
.implements Ldh5;
.implements Lvl2;
.implements Lzv2;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lbq1;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lom5;->a:Ljava/lang/Object;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lom5;->a:Ljava/lang/Object;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lom5;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lom5;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lom5;->a:Ljava/lang/Object;

    .line 35
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lkm5;Lma2;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lom5;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnh9;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnj9;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lom5;->a:Ljava/lang/Object;

    iput-object p0, p1, Lnh9;->a:Lom5;

    return-void
.end method

.method public static e(ZIIII)Lom5;
    .locals 7

    .line 1
    new-instance v0, Lom5;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move v6, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lom5;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v1, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lin4;

    .line 7
    .line 8
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lkj4;

    .line 11
    .line 12
    iget-object v2, p0, Lkj4;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    iget-object v3, p0, Lkj4;->b:Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v4, p0, Lkj4;->c:Lgj4;

    .line 17
    .line 18
    iget-boolean v5, p0, Lkj4;->d:Z

    .line 19
    .line 20
    invoke-direct/range {v0 .. v5}, Lin4;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lgj4;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lin4;->h(Ljava/lang/Object;)Lin4;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lin4;->j()V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lin4;->b:Landroid/util/JsonWriter;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lg35;
    .locals 2

    .line 1
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkm5;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const-string p3, "application/json"

    .line 8
    .line 9
    :cond_0
    const-string v0, "application/zip"

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    const-string v0, "application/x-zip"

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    const-string v0, "application/x-zip-compressed"

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-nez p3, :cond_3

    .line 33
    .line 34
    const-string p3, "\\?"

    .line 35
    .line 36
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const/4 v0, 0x0

    .line 41
    aget-object p3, p3, v0

    .line 42
    .line 43
    const-string v0, ".lottie"

    .line 44
    .line 45
    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lm15;->a()V

    .line 53
    .line 54
    .line 55
    sget-object p3, Lm73;->b:Lm73;

    .line 56
    .line 57
    if-nez p4, :cond_2

    .line 58
    .line 59
    invoke-static {p2, v1}, Ln25;->c(Ljava/io/InputStream;Ljava/lang/String;)Lg35;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lkm5;->x(Ljava/lang/String;Ljava/io/InputStream;Lm73;)Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v0, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p1}, Ln25;->c(Ljava/io/InputStream;Ljava/lang/String;)Lg35;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    :goto_0
    invoke-static {}, Lm15;->a()V

    .line 83
    .line 84
    .line 85
    sget-object p3, Lm73;->c:Lm73;

    .line 86
    .line 87
    if-nez p4, :cond_4

    .line 88
    .line 89
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 90
    .line 91
    invoke-direct {v0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Ln25;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lg35;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lkm5;->x(Ljava/lang/String;Ljava/io/InputStream;Lm73;)Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 104
    .line 105
    new-instance v1, Ljava/io/FileInputStream;

    .line 106
    .line 107
    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, p1}, Ln25;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lg35;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    :goto_1
    if-eqz p4, :cond_5

    .line 118
    .line 119
    iget-object p4, p2, Lg35;->a:Ljava/lang/Object;

    .line 120
    .line 121
    if-eqz p4, :cond_5

    .line 122
    .line 123
    const/4 p4, 0x1

    .line 124
    invoke-static {p1, p3, p4}, Lkm5;->l(Ljava/lang/String;Lm73;Z)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance p3, Ljava/io/File;

    .line 129
    .line 130
    invoke-virtual {p0}, Lkm5;->p()Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {p3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-string p1, ".temp"

    .line 142
    .line 143
    const-string p4, ""

    .line 144
    .line 145
    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    new-instance p1, Ljava/io/File;

    .line 150
    .line 151
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lm15;->a()V

    .line 162
    .line 163
    .line 164
    if-nez p0, :cond_5

    .line 165
    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string p4, "Unable to rename cache file "

    .line 169
    .line 170
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p3, " to "

    .line 181
    .line 182
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string p1, "."

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {p0}, Lm15;->b(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_5
    return-object p2
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lom5;->j()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0}, Lom5;->j()S

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    or-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public g(Ljava/lang/Class;Lp75;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/io/File;Lou5;)Z
    .locals 4

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const-string p3, "StreamEncoder"

    .line 4
    .line 5
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lm35;

    .line 8
    .line 9
    const/high16 v0, 0x10000

    .line 10
    .line 11
    const-class v1, [B

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lm35;->c(ILjava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 22
    .line 23
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq p2, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    move-object v2, v3

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception p1

    .line 41
    move-object v2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    :catch_1
    invoke-virtual {p0, v0}, Lm35;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :catch_2
    move-exception p1

    .line 57
    :goto_1
    const/4 p2, 0x3

    .line 58
    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    const-string p2, "Failed to encode data onto the OutputStream"

    .line 65
    .line 66
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    :cond_1
    if-eqz v2, :cond_2

    .line 70
    .line 71
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    .line 73
    .line 74
    :catch_3
    :cond_2
    invoke-virtual {p0, v0}, Lm35;->g(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    return v1

    .line 78
    :goto_3
    if-eqz v2, :cond_3

    .line 79
    .line 80
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 81
    .line 82
    .line 83
    :catch_4
    :cond_3
    invoke-virtual {p0, v0}, Lm35;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public i([BI)I
    .locals 1

    .line 1
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    return p2
.end method

.method public j()S
    .locals 2

    .line 1
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    .line 18
    int-to-short p0, p0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance p0, Loe2;

    .line 21
    .line 22
    invoke-direct {p0}, Loe2;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public k(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public l(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public m(ILjava/lang/Object;Ljm9;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnh9;

    .line 4
    .line 5
    check-cast p2, Lmg9;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, p1, v1}, Lnh9;->i(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Lmg9;->c(Ljm9;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Lnh9;->k(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p3, p2, p0}, Ljm9;->c(Ljava/lang/Object;Lom5;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public skip(J)J
    .locals 2

    .line 1
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    long-to-int p1, p1

    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    add-int/2addr p2, p1

    .line 20
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    int-to-long p0, p1

    .line 24
    return-wide p0
.end method

.method public y(Lai5;)Lch5;
    .locals 1

    .line 1
    new-instance p1, Lwl2;

    .line 2
    .line 3
    iget-object v0, p0, Lom5;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0}, Lwl2;-><init>(Landroid/content/Context;Lvl2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
