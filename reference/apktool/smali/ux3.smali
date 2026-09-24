.class public final Lux3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# static fields
.field public static final a:Lrx3;

.field public static final b:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx3;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lux3;->a:Lrx3;

    .line 9
    .line 10
    new-instance v0, Lel;

    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lel;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lgv7;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lux3;->b:Lgv7;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Lsx3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 2

    .line 1
    check-cast p1, Lsx3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lux3;->a:Lrx3;

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lsx3;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_0
    move-object p2, p3

    .line 37
    :goto_0
    monitor-exit p0

    .line 38
    const/4 p0, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    new-instance p1, Ltx3;

    .line 42
    .line 43
    invoke-direct {p1, p0, p2}, Ltx3;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    :try_start_1
    iget-boolean p2, p1, Lsx3;->b:Z

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    sget-object p2, Lg00;->a:Lg00;

    .line 52
    .line 53
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p4, p1, Lsx3;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2, p4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object p2, p3

    .line 65
    :goto_1
    if-nez p2, :cond_3

    .line 66
    .line 67
    :try_start_2
    new-instance p4, Lq63;

    .line 68
    .line 69
    sget-object v0, Lj94;->a:Ljava/util/Set;

    .line 70
    .line 71
    iget-object v0, p1, Lsx3;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0}, Lj94;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-direct {p4, v0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Lq63;->j()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p4, p0}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 88
    .line 89
    .line 90
    move-result-object p4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :try_start_3
    invoke-static {p4, p3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :try_start_4
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_0
    move-object p3, p2

    .line 100
    goto :goto_3

    .line 101
    :catchall_1
    move-exception p3

    .line 102
    :try_start_5
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 103
    :catchall_2
    move-exception v0

    .line 104
    :try_start_6
    invoke-static {p4, p3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_3
    :goto_2
    if-nez p2, :cond_6

    .line 109
    .line 110
    sget-object p4, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    .line 112
    iget-object p4, p1, Lsx3;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p4}, Lfk;->b(Ljava/lang/String;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    if-eqz p4, :cond_6

    .line 119
    .line 120
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    move-object v1, v0

    .line 135
    check-cast v1, Lhk;

    .line 136
    .line 137
    invoke-virtual {v1}, Lhk;->c()Lq63;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lq63;->j()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    move-object p3, v0

    .line 148
    :cond_5
    check-cast p3, Lhk;

    .line 149
    .line 150
    if-eqz p3, :cond_6

    .line 151
    .line 152
    invoke-virtual {p3}, Lhk;->c()Lq63;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    if-eqz p3, :cond_6

    .line 157
    .line 158
    sget-object p4, Lg00;->a:Lg00;

    .line 159
    .line 160
    invoke-static {p3}, Lg00;->o(Lq63;)Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object p2
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 164
    goto :goto_4

    .line 165
    :catch_1
    :goto_3
    move-object p2, p3

    .line 166
    :cond_6
    :goto_4
    if-nez p2, :cond_7

    .line 167
    .line 168
    sget-object p2, Lux3;->b:Lgv7;

    .line 169
    .line 170
    invoke-virtual {p2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    :cond_7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    if-nez p3, :cond_8

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_8
    sget-object p4, Lux3;->a:Lrx3;

    .line 184
    .line 185
    monitor-enter p4

    .line 186
    :try_start_7
    invoke-virtual {p1}, Lsx3;->a()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p4, p1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 195
    .line 196
    monitor-exit p4

    .line 197
    :goto_5
    new-instance p1, Ltx3;

    .line 198
    .line 199
    invoke-direct {p1, p0, p2}, Ltx3;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :catchall_3
    move-exception p0

    .line 204
    monitor-exit p4

    .line 205
    throw p0

    .line 206
    :goto_6
    monitor-exit p0

    .line 207
    throw p1
.end method
