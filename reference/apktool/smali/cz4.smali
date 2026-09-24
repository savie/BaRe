.class public Lcz4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcj8;
.implements Ldh5;
.implements Les9;
.implements Lgt9;
.implements Lcs9;
.implements Lsr9;


# static fields
.field public static final b:Lcz4;

.field public static final c:Lcz4;

.field public static final d:Lcz4;

.field public static e:Z

.field public static f:Landroid/content/SharedPreferences;

.field public static k:Landroid/content/SharedPreferences$Editor;

.field public static final n:Lcz4;

.field public static p:Lcz4;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcz4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcz4;->b:Lcz4;

    .line 8
    .line 9
    new-instance v0, Lcz4;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcz4;->c:Lcz4;

    .line 16
    .line 17
    new-instance v0, Lcz4;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcz4;->d:Lcz4;

    .line 24
    .line 25
    new-instance v0, Lcz4;

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcz4;->n:Lcz4;

    .line 32
    .line 33
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcz4;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final b()Ljava/util/List;
    .locals 5

    .line 1
    sget v0, Lnk7;->b:I

    .line 2
    .line 3
    sget-object v0, Lmk7;->a:Lgv7;

    .line 4
    .line 5
    invoke-static {}, Lb05;->h()Ljr7;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "[ -e @@ ]"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    invoke-static {v0}, Lxx3;->x(Ljava/io/File;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget v3, Ln84;->a:I

    .line 28
    .line 29
    new-instance v3, Ljava/io/InputStreamReader;

    .line 30
    .line 31
    sget v4, Lg51;->a:I

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/io/BufferedReader;

    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    invoke-static {v0, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :catchall_1
    move-exception v2

    .line 68
    invoke-static {v0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v2
.end method

.method public static final c(Ljava/lang/Exception;Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p2, :cond_a

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const-string v0, "code:DATAERROR"

    .line 16
    .line 17
    const-string v1, "code:CRCERROR"

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_a

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-static {p0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    if-eqz p1, :cond_a

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_9

    .line 75
    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, [C

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    if-eqz p1, :cond_8

    .line 84
    .line 85
    array-length v1, p1

    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    new-instance v1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    invoke-static {v1}, Lsz8;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_8
    :goto_0
    invoke-static {v0, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_9
    :goto_1
    return v2

    .line 120
    :cond_a
    :goto_2
    const/4 p0, 0x0

    .line 121
    return p0
.end method

.method public static g(JLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "editor"

    .line 14
    .line 15
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "editor"

    .line 14
    .line 15
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "editor"

    .line 14
    .line 15
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public static j(Lca4;F)I
    .locals 2

    .line 1
    const-string v0, "em"

    .line 2
    .line 3
    iget-object v1, p0, Lca4;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget p0, p0, Lca4;->a:F

    .line 10
    .line 11
    const/high16 v1, 0x3f000000    # 0.5f

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    mul-float/2addr p0, p1

    .line 16
    :cond_0
    add-float/2addr p0, v1

    .line 17
    float-to-int p0, p0

    .line 18
    return p0
.end method

.method public static k(J)J
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, p0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    mul-long/2addr v2, p0

    .line 15
    sub-long v4, v0, p0

    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sub-long/2addr v0, v2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    cmp-long v0, v4, v0

    .line 27
    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    return-wide p0

    .line 31
    :cond_1
    return-wide v2
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "com.google.firebase.auth.internal.browserSignInSessionStore."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static m(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a([B[B)[B
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lnc8;->w0([B[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public d(Lqg3;Lkv1;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lxc4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lxc4;

    .line 7
    .line 8
    iget v1, v0, Lxc4;->d:I

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
    iput v1, v0, Lxc4;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lxc4;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lxc4;-><init>(Lcz4;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lxc4;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iget p2, v0, Lxc4;->d:I

    .line 28
    .line 29
    const-string v1, "FirebaseSessions"

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    const-string v4, ""

    .line 34
    .line 35
    sget-object v5, Lyx1;->a:Lyx1;

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    if-eq p2, v3, :cond_2

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Lxc4;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_5

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_2
    iget-object p1, v0, Lxc4;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lqg3;

    .line 64
    .line 65
    :try_start_1
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :try_start_2
    move-object p0, p1

    .line 75
    check-cast p0, Lpg3;

    .line 76
    .line 77
    invoke-virtual {p0}, Lpg3;->d()Lcom/google/android/gms/tasks/Task;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 81
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iput-object p0, v0, Lxc4;->a:Ljava/lang/Object;

    .line 85
    .line 86
    iput v3, v0, Lxc4;->d:I

    .line 87
    .line 88
    invoke-static {p1, v0}, Lsz8;->c(Lcom/google/android/gms/tasks/Task;Lxc4;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 92
    if-ne p1, v5, :cond_4

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move-object v6, p1

    .line 96
    move-object p1, p0

    .line 97
    move-object p0, v6

    .line 98
    :goto_1
    :try_start_4
    check-cast p0, Lvd0;

    .line 99
    .line 100
    iget-object p0, p0, Lvd0;->a:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 103
    .line 104
    .line 105
    move-object v6, p1

    .line 106
    move-object p1, p0

    .line 107
    move-object p0, v6

    .line 108
    goto :goto_3

    .line 109
    :catch_2
    move-exception p1

    .line 110
    move-object v6, p1

    .line 111
    move-object p1, p0

    .line 112
    move-object p0, v6

    .line 113
    :goto_2
    const-string p2, "Error getting authentication token."

    .line 114
    .line 115
    invoke-static {v1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    move-object p0, p1

    .line 119
    move-object p1, v4

    .line 120
    :goto_3
    :try_start_5
    check-cast p0, Lpg3;

    .line 121
    .line 122
    invoke-virtual {p0}, Lpg3;->c()Lcom/google/android/gms/tasks/Task;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iput-object p1, v0, Lxc4;->a:Ljava/lang/Object;

    .line 130
    .line 131
    iput v2, v0, Lxc4;->d:I

    .line 132
    .line 133
    invoke-static {p0, v0}, Lsz8;->c(Lcom/google/android/gms/tasks/Task;Lxc4;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-ne p0, v5, :cond_5

    .line 138
    .line 139
    :goto_4
    return-object v5

    .line 140
    :cond_5
    :goto_5
    check-cast p0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 141
    .line 142
    if-nez p0, :cond_6

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_6
    move-object v4, p0

    .line 146
    goto :goto_7

    .line 147
    :goto_6
    const-string p2, "Error getting Firebase installation id ."

    .line 148
    .line 149
    invoke-static {v1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    :goto_7
    new-instance p0, Lyc4;

    .line 153
    .line 154
    invoke-direct {p0, v4, p1}, Lyc4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object p0
.end method

.method public e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 0

    .line 1
    const/16 p0, 0x40

    .line 2
    .line 3
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 8
    .line 9
    return-object p0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 3

    .line 1
    check-cast p1, Luf9;

    .line 2
    .line 3
    iget-object p0, p1, Luf9;->d:Lkg9;

    .line 4
    .line 5
    invoke-static {p0}, Lal9;->c(Lkg9;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Llw9;->w()Lkw9;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object v0, p1, Luf9;->e:Lkm8;

    .line 13
    .line 14
    iget-object v0, v0, Lkm8;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ld2a;

    .line 17
    .line 18
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    array-length v2, v0

    .line 24
    invoke-static {v0, v1, v2}, Lt69;->g([BII)Lx69;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lj79;->c()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 32
    .line 33
    check-cast v1, Llw9;

    .line 34
    .line 35
    invoke-static {v1, v0}, Llw9;->v(Llw9;Lx69;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Llw9;

    .line 43
    .line 44
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object v0, p1, Luf9;->d:Lkg9;

    .line 49
    .line 50
    iget-object v0, v0, Lkg9;->d:Lig9;

    .line 51
    .line 52
    invoke-static {v0}, Lal9;->b(Lig9;)Lr0a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object p1, p1, Luf9;->k:Ljava/lang/Integer;

    .line 57
    .line 58
    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public n(Lpt9;)Lvm4;
    .locals 5

    .line 1
    iget p0, p0, Lcz4;->a:I

    .line 2
    .line 3
    const-string v0, "Only version 0 keys are accepted"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 12
    .line 13
    const-string v3, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 22
    .line 23
    sget-object v3, Lf79;->a:Lf79;

    .line 24
    .line 25
    invoke-static {p0, v3}, Ltx9;->u(Lt69;Lf79;)Ltx9;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ltx9;->t()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Ltx9;->z()Lwx9;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lwx9;->t()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    iget-object p1, p1, Lpt9;->e:Lr0a;

    .line 46
    .line 47
    invoke-virtual {v3}, Lwx9;->y()Lqx9;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Lgr9;->b(Lr0a;Lqx9;)Lcq9;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p1, Lcq9;->a:Lyp9;

    .line 56
    .line 57
    sget-object v4, Lyp9;->e:Lyp9;

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-virtual {v3}, Lwx9;->C()Lt69;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lt69;->w()[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ld2a;->a([B)Ld2a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0, v2}, Lnq9;->L(Lcq9;Ld2a;Ljava/lang/Integer;)Lnq9;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0}, Ltx9;->A()Lt69;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lt69;->w()[B

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance v0, Lkm8;

    .line 90
    .line 91
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v0, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Lfq9;->L(Lnq9;Lkm8;)Lfq9;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/security/spec/ECPoint;

    .line 104
    .line 105
    invoke-virtual {v3}, Lwx9;->C()Lt69;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lt69;->w()[B

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3}, Lwx9;->D()Lt69;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lt69;->w()[B

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-direct {v0, v4, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1, v0, v2}, Lnq9;->K(Lcq9;Ljava/security/spec/ECPoint;Ljava/lang/Integer;)Lnq9;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0}, Ltx9;->A()Lt69;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lt69;->w()[B

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    new-instance v0, Lvk9;

    .line 149
    .line 150
    const/16 v2, 0x16

    .line 151
    .line 152
    invoke-direct {v0, p0, v2}, Lvk9;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v0}, Lfq9;->M(Lnq9;Lvk9;)Lfq9;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 161
    .line 162
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 167
    .line 168
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    const-string p0, "Parsing EcdsaPrivateKey failed"

    .line 173
    .line 174
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_3
    const-string p1, "Wrong type URL in call to EciesProtoSerialization.parsePrivateKey: "

    .line 179
    .line 180
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_0
    return-object v1

    .line 188
    :pswitch_0
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 189
    .line 190
    const-string v2, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 191
    .line 192
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_5

    .line 197
    .line 198
    :try_start_1
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 199
    .line 200
    sget-object v2, Lf79;->a:Lf79;

    .line 201
    .line 202
    invoke-static {p0, v2}, Lyw9;->u(Lt69;Lf79;)Lyw9;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p0}, Lyw9;->t()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_4

    .line 211
    .line 212
    invoke-static {}, Ldp9;->b()Lwc9;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lyw9;->x()Lt69;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lt69;->d()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-virtual {v0, v2}, Lwc9;->g(I)V

    .line 225
    .line 226
    .line 227
    iget-object v2, p1, Lpt9;->e:Lr0a;

    .line 228
    .line 229
    invoke-static {v2}, Llp9;->a(Lr0a;)Lcp9;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iput-object v2, v0, Lwc9;->c:Ljava/lang/Object;

    .line 234
    .line 235
    invoke-virtual {v0}, Lwc9;->f()Ldp9;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v2, Ldr;

    .line 240
    .line 241
    const/4 v3, 0x7

    .line 242
    invoke-direct {v2, v3}, Ldr;-><init>(I)V

    .line 243
    .line 244
    .line 245
    iput-object v1, v2, Ldr;->c:Ljava/lang/Object;

    .line 246
    .line 247
    iput-object v1, v2, Ldr;->d:Ljava/lang/Object;

    .line 248
    .line 249
    iput-object v0, v2, Ldr;->b:Ljava/lang/Object;

    .line 250
    .line 251
    invoke-virtual {p0}, Lyw9;->x()Lt69;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {p0}, Lt69;->w()[B

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    new-instance v0, Lkm8;

    .line 260
    .line 261
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-direct {v0, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, v2, Ldr;->c:Ljava/lang/Object;

    .line 269
    .line 270
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 271
    .line 272
    iput-object p0, v2, Ldr;->d:Ljava/lang/Object;

    .line 273
    .line 274
    invoke-virtual {v2}, Ldr;->i()Lto9;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    goto :goto_1

    .line 279
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 280
    .line 281
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :catch_1
    const-string p0, "Parsing AesSivKey failed"

    .line 286
    .line 287
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_5
    const-string p0, "Wrong type URL in call to AesSivParameters.parseParameters"

    .line 292
    .line 293
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_1
    return-object v1

    .line 297
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public p(Lbd9;)Lot9;
    .locals 3

    .line 1
    iget p0, p0, Lcz4;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Llq9;

    .line 7
    .line 8
    invoke-static {}, Lmz9;->t()Llz9;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lwy9;->v()Lvy9;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Lrq9;->d(Llq9;)Laz9;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lj79;->c()V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 29
    .line 30
    check-cast v2, Lwy9;

    .line 31
    .line 32
    invoke-static {v2, v1}, Lwy9;->u(Lwy9;Laz9;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lwy9;

    .line 40
    .line 41
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lrq9;->g:Lot9;

    .line 49
    .line 50
    iget-object p1, p1, Llq9;->d:Liq9;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lr0a;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lmz9;

    .line 66
    .line 67
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :pswitch_0
    check-cast p1, Lik9;

    .line 73
    .line 74
    invoke-static {}, Lmz9;->t()Llz9;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lg1a;->v()Lg1a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lik9;->a:Lsg9;

    .line 95
    .line 96
    invoke-static {p1}, Lao9;->b(Lsg9;)Lr0a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lmz9;

    .line 108
    .line 109
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lul4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lgn4;->d(Lul4;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-float/2addr p0, p2

    .line 6
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public y(Lai5;)Lch5;
    .locals 0

    .line 1
    new-instance p0, Lfe8;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lfe8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method
