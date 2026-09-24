.class public abstract Lj94;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Lgv7;

.field public static final c:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lj94;->a:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Lov;

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lgv7;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lj94;->b:Lgv7;

    .line 25
    .line 26
    new-instance v0, Lqm;

    .line 27
    .line 28
    const/16 v1, 0xd

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lqm;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lgv7;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lj94;->c:Lgv7;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Lsx3;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {}, Lai8;->b()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Lj94;->c(Lsx3;)Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lai8;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Lqy5;->f(ZLzn7;)Lry5;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lry5;->i:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, ".png"

    .line 15
    .line 16
    invoke-static {v0, p0, v1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static c(Lsx3;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    invoke-static {p0, v0}, Lj94;->d(Lsx3;Z)Lpk6;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Ltk6;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lxh8;->f:Lrz2;

    .line 26
    .line 27
    invoke-virtual {p0, v0, v0, p0, v1}, Lpk6;->A(Lpx7;Ltk6;Lmm0;Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ltk6;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lux3;->b:Lgv7;

    .line 45
    .line 46
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static d(Lsx3;Z)Lpk6;
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/a;->e:Lzk6;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lzk6;->c(Landroid/content/Context;)Lyk6;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lux3;->b:Lgv7;

    .line 28
    .line 29
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lmm0;->e(Landroid/graphics/drawable/Drawable;)Lmm0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast p0, Lpk6;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    new-instance p1, Lap2;

    .line 47
    .line 48
    invoke-direct {p1}, Lea8;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v0, Ltr9;

    .line 52
    .line 53
    const/4 v1, 0x7

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v0, v1, v2}, Ltr9;-><init>(IZ)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p1, Lea8;->a:Lz98;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lpk6;->E(Lap2;)Lpk6;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_0
    sget-object p1, Lpx3;->b:Liu5;

    .line 69
    .line 70
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p0, p1, v0}, Lmm0;->p(Liu5;Ljava/lang/Object;)Lmm0;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    check-cast p0, Lpk6;

    .line 80
    .line 81
    return-object p0
.end method

.method public static e(Ljava/util/List;II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_3

    .line 15
    .line 16
    if-gtz p2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/2addr p2, p1

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-le p2, v0, :cond_1

    .line 25
    .line 26
    move p2, v0

    .line 27
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 28
    .line 29
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f070053

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_0
    if-ge p1, p2, :cond_3

    .line 45
    .line 46
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lji;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v2, Lsx3;

    .line 56
    .line 57
    invoke-virtual {v1}, Lji;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1}, Lji;->isInstalled()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-direct {v2, v3, v1}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lj94;->a:Ljava/util/Set;

    .line 69
    .line 70
    invoke-virtual {v2}, Lsx3;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-static {v2, v1}, Lj94;->d(Lsx3;Z)Lpk6;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v2, Lso2;->a:Lqo2;

    .line 86
    .line 87
    new-instance v3, Lih3;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    invoke-virtual {v1, v2, v3, v4}, Lmm0;->n(Lso2;Lpr0;Z)Lmm0;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lpk6;

    .line 98
    .line 99
    iget-object v2, v1, Lpk6;->L:Lyk6;

    .line 100
    .line 101
    new-instance v3, Lz46;

    .line 102
    .line 103
    invoke-direct {v3, v2, v0, v0}, Lz46;-><init>(Lyk6;II)V

    .line 104
    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    sget-object v4, Lxh8;->e:Lqz2;

    .line 108
    .line 109
    invoke-virtual {v1, v3, v2, v1, v4}, Lpk6;->A(Lpx7;Ltk6;Lmm0;Ljava/util/concurrent/Executor;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    :goto_1
    return-void
.end method

.method public static f(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsx3;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lj94;->a(Lsx3;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lq63;

    .line 16
    .line 17
    invoke-static {p0}, Lj94;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-direct {v0, p0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    invoke-virtual {v0, p0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :try_start_0
    invoke-static {p1, p0}, Lai8;->a(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :catchall_1
    move-exception v0

    .line 40
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_0
    const-string p1, "saveIconToCache: Icon bitmap is null for app:"

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "IconCache"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static g(Lsx3;Landroid/widget/ImageView;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lj94;->h(Landroid/widget/ImageView;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p3}, Lj94;->d(Lsx3;Z)Lpk6;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lpk6;->B(Landroid/widget/ImageView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static h(Landroid/widget/ImageView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lj94;->c:Lgv7;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/graphics/ColorMatrixColorFilter;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lj94;->b:Lgv7;

    .line 16
    .line 17
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/graphics/ColorMatrixColorFilter;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
