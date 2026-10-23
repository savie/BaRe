.class public final Lb05;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldh5;
.implements Lzm7;
.implements Lam6;
.implements Lx76;
.implements Lzo7;
.implements Lba1;
.implements Let9;
.implements Lgt9;
.implements Lcs9;
.implements Les9;


# static fields
.field public static final a:Lb05;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb05;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb05;->a:Lb05;

    .line 7
    .line 8
    return-void
.end method

.method public static a(FFFF)Landroid/graphics/Path;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static h()Ljr7;
    .locals 7

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    invoke-static {}, Lg00;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljr7;

    .line 8
    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    new-instance v3, Ljava/io/File;

    .line 12
    .line 13
    new-instance v4, Ljava/io/File;

    .line 14
    .line 15
    sget-object v5, Lmk7;->a:Lgv7;

    .line 16
    .line 17
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Ljava/io/File;

    .line 22
    .line 23
    const-string v6, "system"

    .line 24
    .line 25
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v5, "users"

    .line 29
    .line 30
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "settings_ssaid.xml"

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, v2, v0}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public static j(Ljava/net/Inet4Address;I)Ljava/util/List;
    .locals 5

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-static {p1, v1, v0}, Ll73;->h(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    array-length v2, v0

    .line 17
    const/4 v3, 0x4

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget-byte v3, v0, v2

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    shl-int/lit8 v1, v3, 0x18

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    aget-byte v4, v0, v3

    .line 29
    .line 30
    and-int/lit16 v4, v4, 0xff

    .line 31
    .line 32
    shl-int/lit8 v4, v4, 0x10

    .line 33
    .line 34
    or-int/2addr v1, v4

    .line 35
    const/4 v4, 0x2

    .line 36
    aget-byte v4, v0, v4

    .line 37
    .line 38
    and-int/lit16 v4, v4, 0xff

    .line 39
    .line 40
    shl-int/lit8 v4, v4, 0x8

    .line 41
    .line 42
    or-int/2addr v1, v4

    .line 43
    const/4 v4, 0x3

    .line 44
    aget-byte v0, v0, v4

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    or-int/2addr v0, v1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    move p1, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    rsub-int/lit8 p1, p1, 0x20

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    shl-int p1, v1, p1

    .line 57
    .line 58
    :goto_0
    and-int/2addr v0, p1

    .line 59
    not-int p1, p1

    .line 60
    or-int/2addr p1, v0

    .line 61
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    add-int/2addr v0, v3

    .line 66
    invoke-static {v0, p1}, Ll73;->F(II)Lnd4;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v0, Lll1;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lai;

    .line 79
    .line 80
    invoke-direct {p1, v4}, Lai;-><init>(I)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lq98;

    .line 84
    .line 85
    invoke-direct {v1, v0, p1}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lqh1;

    .line 89
    .line 90
    invoke-direct {p1, p0, v3}, Lqh1;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Lme3;

    .line 94
    .line 95
    invoke-direct {p0, v1, v2, p1}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 96
    .line 97
    .line 98
    const/16 p1, 0xfe

    .line 99
    .line 100
    invoke-static {p0, p1}, Lh77;->B0(Lf77;I)Lf77;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_1
    const-string p0, "Expected IPv4 address bytes"

    .line 110
    .line 111
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method public static l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;
    .locals 4

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x8

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const-string p3, "Ok"

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lhv1;

    .line 22
    .line 23
    const v2, 0x7f140160

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ls35;

    .line 30
    .line 31
    invoke-direct {v3, p0, v2, v0, v1}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v3, Lva;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lra;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iput-object p1, v0, Lra;->d:Ljava/lang/CharSequence;

    .line 48
    .line 49
    :cond_3
    :goto_1
    iput-object p2, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 50
    .line 51
    if-eqz p3, :cond_4

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    :cond_4
    const p1, 0x7f1303e6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-virtual {v3, p3, v1}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 73
    .line 74
    .line 75
    return-object v3
.end method


# virtual methods
.method public b(Lvb8;Lxn5;Ljava/util/Map;)Lwi8;
    .locals 1

    .line 1
    const-string p0, "class"

    .line 2
    .line 3
    invoke-interface {p2, p0}, Lxn5;->remove(Ljava/lang/String;)Lpn5;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    :cond_0
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Lpn5;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    const-class p3, Lcz4;

    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    :cond_1
    invoke-virtual {p3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    :cond_2
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    const-string p0, "length"

    .line 59
    .line 60
    invoke-interface {p2, p0}, Lxn5;->remove(Ljava/lang/String;)Lpn5;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-interface {p0}, Lpn5;->getValue()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :cond_3
    new-instance p0, Lu50;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p3, p0, Lu50;->c:Ljava/io/Serializable;

    .line 80
    .line 81
    iput v0, p0, Lu50;->a:I

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_4
    if-eq p0, p3, :cond_5

    .line 85
    .line 86
    new-instance p0, Lcd;

    .line 87
    .line 88
    const/16 p1, 0xb

    .line 89
    .line 90
    invoke-direct {p0, p1, v0}, Lcd;-><init>(IZ)V

    .line 91
    .line 92
    .line 93
    iput-object p3, p0, Lcd;->c:Ljava/lang/Object;

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_5
    const/4 p0, 0x0

    .line 97
    return-object p0
.end method

.method public c(J)Z
    .locals 2

    .line 1
    const-wide v0, 0xc0000034L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long p0, p1, v0

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const-wide v0, 0xc000003aL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long p0, p1, v0

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const-wide v0, 0xc00000baL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long p0, p1, v0

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const-wide v0, 0xc0000056L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmp-long p0, p1, v0

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public d(Lvb8;Ljava/lang/Object;Lxn5;Ljava/util/Map;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const-string p4, "length"

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p3, p4, p2}, Lxn5;->A(Ljava/lang/String;Ljava/lang/String;)Lpn5;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object p2, p0

    .line 34
    :goto_0
    if-eq p0, p1, :cond_1

    .line 35
    .line 36
    const-string p0, "class"

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p3, p0, p1}, Lxn5;->A(Ljava/lang/String;Ljava/lang/String;)Lpn5;

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public e()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 4

    .line 1
    check-cast p1, Lfq9;

    .line 2
    .line 3
    invoke-static {}, Ltx9;->y()Lsx9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lj79;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lj79;->b:Lk79;

    .line 11
    .line 12
    check-cast v0, Ltx9;

    .line 13
    .line 14
    invoke-static {v0}, Ltx9;->v(Ltx9;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lfq9;->d:Lnq9;

    .line 18
    .line 19
    invoke-static {v0}, Lgr9;->c(Lnq9;)Lwx9;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lj79;->c()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 27
    .line 28
    check-cast v1, Ltx9;

    .line 29
    .line 30
    invoke-static {v1, v0}, Ltx9;->x(Ltx9;Lwx9;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lfq9;->d:Lnq9;

    .line 34
    .line 35
    iget-object v0, v0, Lnq9;->d:Lcq9;

    .line 36
    .line 37
    iget-object v1, v0, Lcq9;->a:Lyp9;

    .line 38
    .line 39
    sget-object v2, Lyp9;->e:Lyp9;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iget-object v1, p1, Lfq9;->f:Lkm8;

    .line 49
    .line 50
    iget-object v1, v1, Lkm8;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ld2a;

    .line 53
    .line 54
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    array-length v3, v1

    .line 59
    invoke-static {v1, v2, v3}, Lt69;->g([BII)Lx69;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lj79;->c()V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 67
    .line 68
    check-cast v2, Ltx9;

    .line 69
    .line 70
    invoke-static {v2, v1}, Ltx9;->w(Ltx9;Lt69;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, v0, Lcq9;->a:Lyp9;

    .line 75
    .line 76
    invoke-static {v1}, Lgr9;->a(Lyp9;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iget-object v3, p1, Lfq9;->e:Lvk9;

    .line 81
    .line 82
    iget-object v3, v3, Lvk9;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v3, Ljava/math/BigInteger;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lwx3;->I(ILjava/math/BigInteger;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    array-length v3, v1

    .line 91
    invoke-static {v1, v2, v3}, Lt69;->g([BII)Lx69;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lj79;->c()V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lj79;->b:Lk79;

    .line 99
    .line 100
    check-cast v2, Ltx9;

    .line 101
    .line 102
    invoke-static {v2, v1}, Ltx9;->w(Ltx9;Lt69;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Ltx9;

    .line 110
    .line 111
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    sget-object v1, Lgr9;->g:Lot9;

    .line 116
    .line 117
    iget-object v0, v0, Lcq9;->d:Lzp9;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lr0a;

    .line 124
    .line 125
    invoke-virtual {p1}, Lbr9;->H()Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    .line 130
    .line 131
    const/4 v2, 0x3

    .line 132
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public g(Lot9;)Lbd9;
    .locals 2

    .line 1
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lmz9;

    .line 4
    .line 5
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lf79;->a:Lf79;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lfw9;->u(Lt69;Lf79;)Lfw9;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-static {}, Lsf9;->b()Lju7;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lfw9;->t()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lju7;->k(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lfw9;->y()Liw9;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Liw9;->t()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v0, p1}, Lju7;->j(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lju7;->l()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lsk9;->a(Lr0a;)Lrf9;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iput-object p0, v0, Lju7;->e:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {v0}, Lju7;->i()Lsf9;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 69
    .line 70
    const-string v0, "Parsing AesEaxParameters failed: "

    .line 71
    .line 72
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "Wrong type URL in call to AesEaxProtoSerialization.parseParameters: "

    .line 81
    .line 82
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public k(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Lll6;Lou5;)Lll6;
    .locals 3

    .line 1
    invoke-interface {p1}, Lll6;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfx3;

    .line 6
    .line 7
    iget-object p0, p0, Lfx3;->a:Lex3;

    .line 8
    .line 9
    iget-object p0, p0, Lex3;->a:Llx3;

    .line 10
    .line 11
    iget-object p0, p0, Llx3;->a:Lgl7;

    .line 12
    .line 13
    iget-object p0, p0, Lgl7;->d:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p1, Ljy0;

    .line 20
    .line 21
    sget-object p2, Lay0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    new-instance p2, Lzx0;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {p2, v0, v1, v2}, Lzx0;-><init>([BII)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p2, 0x0

    .line 54
    :goto_0
    if-eqz p2, :cond_1

    .line 55
    .line 56
    iget v0, p2, Lzx0;->a:I

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget v0, p2, Lzx0;->b:I

    .line 61
    .line 62
    iget-object p2, p2, Lzx0;->c:[B

    .line 63
    .line 64
    array-length p2, p2

    .line 65
    if-ne v0, p2, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    new-array p2, p2, [B

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    move-object p0, p2

    .line 93
    :goto_1
    invoke-direct {p1, p0}, Ljy0;-><init>([B)V

    .line 94
    .line 95
    .line 96
    return-object p1
.end method

.method public n(Lpt9;)Lvm4;
    .locals 3

    .line 1
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 13
    .line 14
    sget-object v1, Lf79;->a:Lf79;

    .line 15
    .line 16
    invoke-static {p0, v1}, Lu0a;->u(Lt69;Lf79;)Lu0a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lu0a;->t()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lu0a;->z()Lt69;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lt69;->d()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget-object v1, p1, Lpt9;->e:Lr0a;

    .line 39
    .line 40
    invoke-static {v1}, Ltn9;->a(Lr0a;)Lrf9;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lu0a;->y()La1a;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, La1a;->t()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v1, v2}, Lxj9;->b(Lrf9;I)Lxj9;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lu0a;->z()Lt69;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lt69;->w()[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v2, Lkm8;

    .line 65
    .line 66
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v2, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-static {v1, v2, p0}, Lmj9;->K(Lxj9;Lkm8;Ljava/lang/Integer;)Lmj9;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 81
    .line 82
    const-string p1, "Only 32 byte key size is accepted"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 89
    .line 90
    const-string p1, "Only version 0 keys are accepted"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    const-string p0, "Parsing XAesGcmKey failed"

    .line 97
    .line 98
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_2
    const-string p0, "Wrong type URL in call to XAesGcmProtoSerialization.parseKey"

    .line 103
    .line 104
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v0
.end method

.method public p(Lbd9;)Lot9;
    .locals 3

    .line 1
    check-cast p1, Ltg9;

    .line 2
    .line 3
    invoke-static {}, Lmz9;->t()Llz9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Luw9;->x()Ltw9;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p1, Ltg9;->a:I

    .line 17
    .line 18
    invoke-virtual {v0}, Lj79;->c()V

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 22
    .line 23
    check-cast v2, Luw9;

    .line 24
    .line 25
    invoke-static {v2, v1}, Luw9;->v(Luw9;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Luw9;

    .line 33
    .line 34
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Ltg9;->b:Lsg9;

    .line 42
    .line 43
    invoke-static {p1}, Lsl9;->b(Lsg9;)Lr0a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lmz9;

    .line 55
    .line 56
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public y(Lai5;)Lch5;
    .locals 1

    .line 1
    new-instance p0, Lmx0;

    .line 2
    .line 3
    new-instance p1, Lus2;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-direct {p1, v0}, Lus2;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lmx0;-><init>(Lkx0;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
