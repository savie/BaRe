.class public abstract Lpe4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ldu9;

.field public static final b:Ldu9;

.field public static final c:Ldu9;

.field public static final d:Ldu9;

.field public static final e:Ldu9;

.field public static final f:Ldu9;

.field public static final g:Liv2;

.field public static final h:Liv2;

.field public static final i:Ldu9;

.field public static final j:Lpx1;

.field public static final k:Lqc1;

.field public static final l:Lxc1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldu9;

    .line 2
    .line 3
    const-string v1, "RESUME_TOKEN"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lpe4;->a:Ldu9;

    .line 10
    .line 11
    new-instance v0, Ldu9;

    .line 12
    .line 13
    const-string v1, "COMPLETING_ALREADY"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lpe4;->b:Ldu9;

    .line 19
    .line 20
    new-instance v0, Ldu9;

    .line 21
    .line 22
    const-string v1, "COMPLETING_WAITING_CHILDREN"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lpe4;->c:Ldu9;

    .line 28
    .line 29
    new-instance v0, Ldu9;

    .line 30
    .line 31
    const-string v1, "COMPLETING_RETRY"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lpe4;->d:Ldu9;

    .line 37
    .line 38
    new-instance v0, Ldu9;

    .line 39
    .line 40
    const-string v1, "TOO_LATE_TO_CANCEL"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lpe4;->e:Ldu9;

    .line 46
    .line 47
    new-instance v0, Ldu9;

    .line 48
    .line 49
    const-string v1, "SEALED"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lpe4;->f:Ldu9;

    .line 55
    .line 56
    new-instance v0, Liv2;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {v0, v1}, Liv2;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lpe4;->g:Liv2;

    .line 63
    .line 64
    new-instance v0, Liv2;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-direct {v0, v1}, Liv2;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lpe4;->h:Liv2;

    .line 71
    .line 72
    new-instance v0, Ldu9;

    .line 73
    .line 74
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 75
    .line 76
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lpe4;->i:Ldu9;

    .line 80
    .line 81
    new-instance v0, Lpx1;

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    invoke-direct {v0, v1}, Lpx1;-><init>(I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lpe4;->j:Lpx1;

    .line 88
    .line 89
    new-instance v0, Lqc1;

    .line 90
    .line 91
    const/4 v1, 0x4

    .line 92
    invoke-direct {v0, v1}, Lqc1;-><init>(I)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lpe4;->k:Lqc1;

    .line 96
    .line 97
    new-instance v0, Lxc1;

    .line 98
    .line 99
    const/4 v1, 0x2

    .line 100
    invoke-direct {v0, v1}, Lxc1;-><init>(I)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lpe4;->l:Lxc1;

    .line 104
    .line 105
    return-void
.end method

.method public static final A(Lp67;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lp67;->f:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object p0, p0, Lp67;->e:[[B

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    add-int/lit8 p0, p0, -0x1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-gt v1, p0, :cond_1

    .line 15
    .line 16
    add-int v2, v1, p0

    .line 17
    .line 18
    ushr-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    aget v3, v0, v2

    .line 21
    .line 22
    if-ge v3, p1, :cond_0

    .line 23
    .line 24
    add-int/lit8 v1, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-le v3, p1, :cond_2

    .line 28
    .line 29
    add-int/lit8 p0, v2, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    neg-int p0, v1

    .line 33
    add-int/lit8 v2, p0, -0x1

    .line 34
    .line 35
    :cond_2
    if-ltz v2, :cond_3

    .line 36
    .line 37
    return v2

    .line 38
    :cond_3
    not-int p0, v2

    .line 39
    return p0
.end method

.method public static B([BII)V
    .locals 2

    .line 1
    ushr-int/lit8 v0, p2, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p1

    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    ushr-int/lit8 v1, p2, 0x10

    .line 9
    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v0

    .line 12
    .line 13
    add-int/lit8 v0, p1, 0x2

    .line 14
    .line 15
    ushr-int/lit8 v1, p2, 0x8

    .line 16
    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p0, v0

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x3

    .line 21
    .line 22
    int-to-byte p2, p2

    .line 23
    aput-byte p2, p0, p1

    .line 24
    .line 25
    return-void
.end method

.method public static C([BII)V
    .locals 2

    .line 1
    int-to-byte v0, p2

    .line 2
    aput-byte v0, p0, p1

    .line 3
    .line 4
    add-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    ushr-int/lit8 v1, p2, 0x8

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    aput-byte v1, p0, v0

    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    ushr-int/lit8 v1, p2, 0x10

    .line 14
    .line 15
    int-to-byte v1, v1

    .line 16
    aput-byte v1, p0, v0

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x3

    .line 19
    .line 20
    ushr-int/lit8 p2, p2, 0x18

    .line 21
    .line 22
    int-to-byte p2, p2

    .line 23
    aput-byte p2, p0, p1

    .line 24
    .line 25
    return-void
.end method

.method public static D(Landroid/app/Activity;Ljava/util/ArrayList;Z)V
    .locals 3

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.telephony"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "Feature not supported on this device"

    .line 22
    .line 23
    sget-object p2, Lzn4;->a:Lzn4;

    .line 24
    .line 25
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Lge5;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2}, Lge5;-><init>(Ljava/util/ArrayList;Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lny2;->b()Lny2;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p1, Lny2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object v1, p1, Lny2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    const-class v2, Lge5;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p1, v0}, Lny2;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-class p1, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public static final E(Lox1;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lpe4;->j:Lpx1;

    .line 7
    .line 8
    invoke-interface {p0, v0, v1}, Lox1;->fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static F(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "lateinit property "

    .line 2
    .line 3
    const-string v1, " has not been initialized"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lfx5;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class p0, Lpe4;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {v0, p0}, Lpe4;->z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static final G(ILor2;)J
    .locals 2

    .line 1
    sget-object v0, Lor2;->d:Lor2;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    int-to-long v0, p0

    .line 10
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    iget-object p1, p1, Lor2;->a:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    sget-object v0, Lmr2;->b:Lma2;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    shl-long/2addr p0, v0

    .line 22
    sget v0, Lnr2;->a:I

    .line 23
    .line 24
    return-wide p0

    .line 25
    :cond_0
    int-to-long v0, p0

    .line 26
    invoke-static {v0, v1, p1}, Lpe4;->H(JLor2;)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method

.method public static final H(JLor2;)J
    .locals 7

    .line 1
    iget-object v0, p2, Lor2;->a:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    neg-long v4, v1

    .line 15
    cmp-long v4, v4, p0

    .line 16
    .line 17
    if-gtz v4, :cond_0

    .line 18
    .line 19
    cmp-long v1, p0, v1

    .line 20
    .line 21
    if-gtz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    sget-object p2, Lmr2;->b:Lma2;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    shl-long/2addr p0, p2

    .line 31
    sget p2, Lnr2;->a:I

    .line 32
    .line 33
    return-wide p0

    .line 34
    :cond_0
    sget-object v1, Lor2;->c:Lor2;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ltz v1, :cond_2

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-long v0, v0

    .line 47
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmp-long v4, p0, v2

    .line 53
    .line 54
    if-gez v4, :cond_1

    .line 55
    .line 56
    move-wide p0, v2

    .line 57
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    invoke-static {p0, p1, p2}, Lvm4;->g(JLor2;)J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    mul-long/2addr p0, v0

    .line 66
    invoke-static {p0, p1}, Lpe4;->j(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    return-wide p0

    .line 71
    :cond_2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    .line 73
    invoke-virtual {p2, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    invoke-static/range {v1 .. v6}, Ll73;->i(JJJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide p0

    .line 91
    invoke-static {p0, p1}, Lpe4;->j(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    return-wide p0
.end method

.method public static final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lgb4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lgb4;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, Lgb4;->a:Lfb4;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    return-object v0

    .line 18
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final J(Lox1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lpe4;->E(Lox1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    sget-object p0, Lpe4;->i:Ldu9;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    new-instance v0, Lu28;

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-direct {v0, p1, p0}, Lu28;-><init>(ILox1;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lpe4;->l:Lxc1;

    .line 33
    .line 34
    invoke-interface {p0, v0, p1}, Lox1;->fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_2
    check-cast p1, Ll28;

    .line 40
    .line 41
    invoke-interface {p1}, Ll28;->a()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static K(I)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, -0x3361d2af

    .line 3
    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    long-to-int p0, v0

    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long v0, p0

    .line 14
    const-wide/32 v2, 0x1b873593

    .line 15
    .line 16
    .line 17
    mul-long/2addr v0, v2

    .line 18
    long-to-int p0, v0

    .line 19
    return p0
.end method

.method public static L(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    return-void

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 8
    .line 9
    const-string v1, "index"

    .line 10
    .line 11
    if-ltz p0, :cond_3

    .line 12
    .line 13
    if-gez p1, :cond_2

    .line 14
    .line 15
    const-string p0, "negative size: "

    .line 16
    .line 17
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "%s (%s) must be less than size (%s)"

    .line 38
    .line 39
    invoke-static {p1, p0}, Llg7;->O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "%s (%s) must not be negative"

    .line 53
    .line 54
    invoke-static {p1, p0}, Llg7;->O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public static M(III)V
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-lt p1, p0, :cond_1

    .line 4
    .line 5
    if-le p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    if-ltz p0, :cond_4

    .line 12
    .line 13
    if-gt p0, p2, :cond_4

    .line 14
    .line 15
    if-ltz p1, :cond_3

    .line 16
    .line 17
    if-le p1, p2, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "end index (%s) must not be less than start index (%s)"

    .line 33
    .line 34
    invoke-static {p1, p0}, Llg7;->O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    const-string p0, "end index"

    .line 40
    .line 41
    invoke-static {p1, p2, p0}, Lpe4;->N(IILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    const-string p1, "start index"

    .line 47
    .line 48
    invoke-static {p0, p2, p1}, Lpe4;->N(IILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_2
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public static N(IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "%s (%s) must not be negative"

    .line 12
    .line 13
    invoke-static {p1, p0}, Llg7;->O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    if-ltz p1, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "%s (%s) must not be greater than size (%s)"

    .line 33
    .line 34
    invoke-static {p1, p0}, Llg7;->O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const-string p0, "negative size: "

    .line 40
    .line 41
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static O(II)V
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index"

    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Lpe4;->N(IILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final a(Ly28;Lmb2;Ljava/lang/Throwable;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lni3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lni3;

    .line 7
    .line 8
    iget v1, v0, Lni3;->c:I

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
    iput v1, v0, Lni3;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lni3;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkv1;-><init>(Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lni3;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lni3;->c:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p2, v0, Lni3;->a:Ljava/lang/Throwable;

    .line 35
    .line 36
    :try_start_0
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iput-object p2, v0, Lni3;->a:Ljava/lang/Throwable;

    .line 53
    .line 54
    iput v2, v0, Lni3;->c:I

    .line 55
    .line 56
    invoke-virtual {p1, p0, p2, v0}, Lmb2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sget-object p1, Lyx1;->a:Lyx1;

    .line 61
    .line 62
    if-ne p0, p1, :cond_3

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 66
    .line 67
    return-object p0

    .line 68
    :goto_2
    if-eqz p2, :cond_4

    .line 69
    .line 70
    if-eq p2, p0, :cond_4

    .line 71
    .line 72
    invoke-static {p0, p2}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    throw p0
.end method

.method public static final b(JJ)J
    .locals 7

    .line 1
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    cmp-long v2, p0, v3

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    cmp-long v0, p2, v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    cmp-long v0, p2, v3

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    add-long v1, p0, p2

    .line 30
    .line 31
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static/range {v1 .. v6}, Ll73;->i(JJJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    return-wide p0

    .line 46
    :cond_2
    :goto_0
    return-wide p2

    .line 47
    :cond_3
    :goto_1
    cmp-long v2, v3, p2

    .line 48
    .line 49
    if-gez v2, :cond_4

    .line 50
    .line 51
    cmp-long v0, p2, v0

    .line 52
    .line 53
    if-gez v0, :cond_4

    .line 54
    .line 55
    return-wide p0

    .line 56
    :cond_4
    xor-long/2addr p2, p0

    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    cmp-long p2, p2, v0

    .line 60
    .line 61
    if-ltz p2, :cond_5

    .line 62
    .line 63
    return-wide p0

    .line 64
    :cond_5
    const-wide p0, 0x7fffffffffffc0deL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    return-wide p0
.end method

.method public static c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final e(Ltl8;Lot9;Lhu4;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 8
    .line 9
    iget-object p0, p0, Ltl8;->a:Lul8;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lul8;->a:Lus2;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object p0, p0, Lul8;->b:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    .line 28
    throw p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    check-cast p0, Lox6;

    .line 31
    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    iget-boolean v0, p0, Lox6;->c:Z

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1}, Lox6;->a(Lhu4;Lot9;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p2, Lhu4;->d:Lst4;

    .line 42
    .line 43
    sget-object v0, Lst4;->b:Lst4;

    .line 44
    .line 45
    if-eq p0, v0, :cond_2

    .line 46
    .line 47
    sget-object v0, Lst4;->d:Lst4;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-ltz p0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p0, Ldt4;

    .line 57
    .line 58
    invoke-direct {p0, p2, p1}, Ldt4;-><init>(Lhu4;Lot9;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Lhu4;->a(Leu4;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lot9;->i()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public static f(II)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-ne p0, p1, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_1
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public static g(JJ)I
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    .line 2
    .line 3
    if-gez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public static h(Landroid/os/Bundle;Ljava/lang/String;)Lao;
    .locals 4

    .line 1
    const-string v0, "androidx.credentials.TYPE_RESTORE_CREDENTIAL"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v0, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catch Lfs3; {:try_start_0 .. :try_end_0} :catch_4

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    :try_start_1
    const-string v0, "androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Loa6;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0, v0}, Loa6;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :catch_0
    :try_start_2
    new-instance v0, Lfs3;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :sswitch_1
    const-string v0, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_2
    .catch Lfs3; {:try_start_2 .. :try_end_2} :catch_4

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :try_start_3
    const-string v0, "androidx.credentials.BUNDLE_KEY_ID"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "androidx.credentials.BUNDLE_KEY_PASSWORD"

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lrx5;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0, v1}, Lrx5;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :catch_1
    :try_start_4
    new-instance v0, Lfs3;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    const-string v1, "androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE"

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    new-instance v2, Ljm6;

    .line 100
    .line 101
    invoke-direct {v2, p0, v0}, Lao;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_4
    .catch Lfs3; {:try_start_4 .. :try_end_4} :catch_4

    .line 108
    if-eqz v0, :cond_0

    .line 109
    .line 110
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    .line 111
    .line 112
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :catch_2
    :cond_0
    :try_start_6
    const-string v0, "authenticationResponseJson must not be empty, and must be a valid JSON"

    .line 117
    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_1
    new-instance v0, Lan5;

    .line 125
    .line 126
    const-string v1, "The device does not contain a restore credential."

    .line 127
    .line 128
    invoke-direct {v0, v1}, Lan5;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :sswitch_3
    const-string v0, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0
    :try_end_6
    .catch Lfs3; {:try_start_6 .. :try_end_6} :catch_4

    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    :try_start_7
    const-string v0, "androidx.credentials.BUNDLE_KEY_REQUEST_JSON"

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    instance-of v1, v0, [B

    .line 150
    .line 151
    if-eqz v1, :cond_2

    .line 152
    .line 153
    new-instance v1, Lml2;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/String;

    .line 156
    .line 157
    check-cast v0, [B

    .line 158
    .line 159
    sget-object v3, Lf51;->a:Ljava/nio/charset/Charset;

    .line 160
    .line 161
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, p0, v2}, Lml2;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_2
    new-instance v1, Lml2;

    .line 169
    .line 170
    check-cast v0, Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {v1, p0, v0}, Lml2;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 173
    .line 174
    .line 175
    return-object v1

    .line 176
    :catch_3
    :try_start_8
    new-instance v0, Lfs3;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_3
    :goto_0
    new-instance v0, Lfs3;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 185
    .line 186
    .line 187
    throw v0
    :try_end_8
    .catch Lfs3; {:try_start_8 .. :try_end_8} :catch_4

    .line 188
    :catch_4
    new-instance v0, Lu62;

    .line 189
    .line 190
    invoke-direct {v0, p0, p1}, Lu62;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    nop

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x640a7654 -> :sswitch_3
        -0x3ff0a08a -> :sswitch_2
        -0x20663139 -> :sswitch_1
        -0x5aa2881 -> :sswitch_0
    .end sparse-switch
.end method

.method public static i(Ln60;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 7

    .line 1
    instance-of v0, p0, Lew6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lew6;

    .line 6
    .line 7
    new-instance v0, Lya;

    .line 8
    .line 9
    sget-object v1, Lbw5;->a:Lf1;

    .line 10
    .line 11
    new-instance v2, Ltv6;

    .line 12
    .line 13
    iget-object v3, p0, Luv6;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3}, Lfi8;->d(Ljava/lang/String;)Lya;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, v3}, Ltv6;-><init>(Lya;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lya;-><init>(Lf1;Ly0;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 26
    .line 27
    iget-object p0, p0, Lew6;->c:[B

    .line 28
    .line 29
    invoke-static {p0}, Lms8;->k([B)[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    instance-of v0, p0, Loj5;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    check-cast p0, Loj5;

    .line 42
    .line 43
    new-instance v0, Lya;

    .line 44
    .line 45
    sget-object v1, Lbw5;->b:Lf1;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lya;-><init>(Lf1;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 51
    .line 52
    iget-object p0, p0, Loj5;->b:[B

    .line 53
    .line 54
    invoke-static {p0}, Lms8;->k([B)[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_1
    instance-of v0, p0, Lrp4;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v3, 0x1

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    check-cast p0, Lrp4;

    .line 70
    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-virtual {p0}, Lrp4;->b()[B

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance v0, Lya;

    .line 100
    .line 101
    sget-object v1, Ltv5;->a:Lf1;

    .line 102
    .line 103
    invoke-direct {v0, v1}, Lya;-><init>(Lf1;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 107
    .line 108
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_2
    instance-of v0, p0, Ln24;

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    check-cast p0, Ln24;

    .line 126
    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .line 131
    .line 132
    iget v2, p0, Ln24;->b:I

    .line 133
    .line 134
    ushr-int/lit8 v3, v2, 0x18

    .line 135
    .line 136
    int-to-byte v3, v3

    .line 137
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    .line 139
    .line 140
    ushr-int/lit8 v3, v2, 0x10

    .line 141
    .line 142
    int-to-byte v3, v3

    .line 143
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    .line 145
    .line 146
    ushr-int/lit8 v3, v2, 0x8

    .line 147
    .line 148
    int-to-byte v3, v3

    .line 149
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    .line 151
    .line 152
    int-to-byte v2, v2

    .line 153
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Ln24;->c:Lrp4;

    .line 157
    .line 158
    :try_start_1
    invoke-virtual {p0}, Lrp4;->b()[B

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    new-instance v0, Lya;

    .line 170
    .line 171
    sget-object v1, Ltv5;->a:Lf1;

    .line 172
    .line 173
    invoke-direct {v0, v1}, Lya;-><init>(Lf1;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 177
    .line 178
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 179
    .line 180
    .line 181
    return-object v1

    .line 182
    :catch_1
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    return-object v1

    .line 191
    :cond_3
    instance-of v0, p0, Ltr6;

    .line 192
    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    check-cast p0, Ltr6;

    .line 196
    .line 197
    iget-object v0, p0, Ltr6;->c:Loe;

    .line 198
    .line 199
    iget-object v1, v0, Loe;->b:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v1, [B

    .line 202
    .line 203
    iget-object v0, v0, Loe;->c:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v0, [B

    .line 206
    .line 207
    invoke-static {v1, v0}, Lms8;->p([B[B)[B

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    new-instance v1, Lya;

    .line 212
    .line 213
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, Lrr6;

    .line 216
    .line 217
    sget-object v2, Lfi8;->K:Ljava/util/HashMap;

    .line 218
    .line 219
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, Lf1;

    .line 224
    .line 225
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 226
    .line 227
    .line 228
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 229
    .line 230
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :cond_4
    instance-of v0, p0, Lcw6;

    .line 235
    .line 236
    if-eqz v0, :cond_5

    .line 237
    .line 238
    check-cast p0, Lcw6;

    .line 239
    .line 240
    iget-object v0, p0, Lcw6;->c:Lw00;

    .line 241
    .line 242
    iget-object v1, v0, Lw00;->b:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v1, [B

    .line 245
    .line 246
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, [B

    .line 249
    .line 250
    invoke-static {v1, v0}, Lms8;->p([B[B)[B

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    new-instance v1, Lya;

    .line 255
    .line 256
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p0, Law6;

    .line 259
    .line 260
    sget-object v2, Lfi8;->o:Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    check-cast p0, Lf1;

    .line 267
    .line 268
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 269
    .line 270
    .line 271
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 272
    .line 273
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 274
    .line 275
    .line 276
    return-object p0

    .line 277
    :cond_5
    instance-of v0, p0, Lwy0;

    .line 278
    .line 279
    if-eqz v0, :cond_6

    .line 280
    .line 281
    check-cast p0, Lwy0;

    .line 282
    .line 283
    iget-object v0, p0, Lwy0;->c:[B

    .line 284
    .line 285
    invoke-static {v0}, Lms8;->k([B)[B

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    new-instance v1, Lya;

    .line 290
    .line 291
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast p0, Lsy0;

    .line 294
    .line 295
    sget-object v2, Lfi8;->m:Ljava/util/HashMap;

    .line 296
    .line 297
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Lf1;

    .line 302
    .line 303
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 304
    .line 305
    .line 306
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 307
    .line 308
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 309
    .line 310
    .line 311
    return-object p0

    .line 312
    :cond_6
    instance-of v0, p0, Lvx8;

    .line 313
    .line 314
    if-eqz v0, :cond_8

    .line 315
    .line 316
    check-cast p0, Lvx8;

    .line 317
    .line 318
    iget-object v0, p0, Lvx8;->f:[B

    .line 319
    .line 320
    invoke-static {v0}, Ljd4;->g([B)[B

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iget-object v1, p0, Lvx8;->e:[B

    .line 325
    .line 326
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {p0}, Lvx8;->getEncoded()[B

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    array-length v3, v2

    .line 335
    array-length v4, v0

    .line 336
    array-length v5, v1

    .line 337
    add-int/2addr v4, v5

    .line 338
    if-le v3, v4, :cond_7

    .line 339
    .line 340
    new-instance p0, Lya;

    .line 341
    .line 342
    sget-object v0, Lpg4;->a:Lf1;

    .line 343
    .line 344
    invoke-direct {p0, v0}, Lya;-><init>(Lf1;)V

    .line 345
    .line 346
    .line 347
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 348
    .line 349
    new-instance v1, Lp82;

    .line 350
    .line 351
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

    .line 352
    .line 353
    .line 354
    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 355
    .line 356
    .line 357
    return-object v0

    .line 358
    :cond_7
    new-instance v2, Lya;

    .line 359
    .line 360
    sget-object v3, Lbw5;->c:Lf1;

    .line 361
    .line 362
    new-instance v4, Lhx8;

    .line 363
    .line 364
    iget-object v5, p0, Lvx8;->c:Lrx8;

    .line 365
    .line 366
    iget v5, v5, Lrx8;->b:I

    .line 367
    .line 368
    iget-object p0, p0, Luv6;->b:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {p0}, Lfi8;->f(Ljava/lang/String;)Lya;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    invoke-direct {v4, v5, p0}, Lhx8;-><init>(ILya;)V

    .line 375
    .line 376
    .line 377
    invoke-direct {v2, v3, v4}, Lya;-><init>(Lf1;Ly0;)V

    .line 378
    .line 379
    .line 380
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 381
    .line 382
    new-instance v3, Lux8;

    .line 383
    .line 384
    invoke-direct {v3, v0, v1}, Lux8;-><init>([B[B)V

    .line 385
    .line 386
    .line 387
    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 388
    .line 389
    .line 390
    return-object p0

    .line 391
    :cond_8
    instance-of v0, p0, Lpx8;

    .line 392
    .line 393
    if-eqz v0, :cond_a

    .line 394
    .line 395
    check-cast p0, Lpx8;

    .line 396
    .line 397
    iget-object v0, p0, Lpx8;->e:[B

    .line 398
    .line 399
    iget-object v1, p0, Lpx8;->f:[B

    .line 400
    .line 401
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-static {v0}, Ljd4;->g([B)[B

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {p0}, Lpx8;->a()[B

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    array-length v5, v4

    .line 414
    array-length v2, v2

    .line 415
    array-length v3, v3

    .line 416
    add-int/2addr v2, v3

    .line 417
    if-le v5, v2, :cond_9

    .line 418
    .line 419
    new-instance p0, Lya;

    .line 420
    .line 421
    sget-object v0, Lpg4;->b:Lf1;

    .line 422
    .line 423
    invoke-direct {p0, v0}, Lya;-><init>(Lf1;)V

    .line 424
    .line 425
    .line 426
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 427
    .line 428
    new-instance v1, Lp82;

    .line 429
    .line 430
    invoke-direct {v1, v4}, Lj1;-><init>([B)V

    .line 431
    .line 432
    .line 433
    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 434
    .line 435
    .line 436
    return-object v0

    .line 437
    :cond_9
    new-instance v2, Lya;

    .line 438
    .line 439
    sget-object v3, Lbw5;->d:Lf1;

    .line 440
    .line 441
    new-instance v4, Ljx8;

    .line 442
    .line 443
    iget-object v5, p0, Lpx8;->c:Lkx8;

    .line 444
    .line 445
    iget v6, v5, Lkx8;->c:I

    .line 446
    .line 447
    iget v5, v5, Lkx8;->d:I

    .line 448
    .line 449
    iget-object p0, p0, Luv6;->b:Ljava/lang/String;

    .line 450
    .line 451
    invoke-static {p0}, Lfi8;->f(Ljava/lang/String;)Lya;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    invoke-direct {v4, v6, v5, p0}, Ljx8;-><init>(IILya;)V

    .line 456
    .line 457
    .line 458
    invoke-direct {v2, v3, v4}, Lya;-><init>(Lf1;Ly0;)V

    .line 459
    .line 460
    .line 461
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 462
    .line 463
    new-instance v3, Lox8;

    .line 464
    .line 465
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-static {v0}, Ljd4;->g([B)[B

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-direct {v3, v1, v0}, Lox8;-><init>([B[B)V

    .line 474
    .line 475
    .line 476
    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 477
    .line 478
    .line 479
    return-object p0

    .line 480
    :cond_a
    instance-of v0, p0, Lss3;

    .line 481
    .line 482
    if-eqz v0, :cond_b

    .line 483
    .line 484
    check-cast p0, Lss3;

    .line 485
    .line 486
    iget-object v0, p0, Lss3;->c:[B

    .line 487
    .line 488
    invoke-static {v0}, Lms8;->k([B)[B

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    new-instance v1, Lya;

    .line 493
    .line 494
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast p0, Lqs3;

    .line 497
    .line 498
    sget-object v2, Lfi8;->i:Ljava/util/HashMap;

    .line 499
    .line 500
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    check-cast p0, Lf1;

    .line 505
    .line 506
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 507
    .line 508
    .line 509
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 510
    .line 511
    new-instance v2, Lp82;

    .line 512
    .line 513
    invoke-direct {v2, v0}, Lj1;-><init>([B)V

    .line 514
    .line 515
    .line 516
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 517
    .line 518
    .line 519
    return-object p0

    .line 520
    :cond_b
    instance-of v0, p0, Ldr6;

    .line 521
    .line 522
    if-eqz v0, :cond_c

    .line 523
    .line 524
    check-cast p0, Ldr6;

    .line 525
    .line 526
    iget-object v0, p0, Ldr6;->c:[B

    .line 527
    .line 528
    invoke-static {v0}, Lms8;->k([B)[B

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    new-instance v1, Lya;

    .line 533
    .line 534
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast p0, Lbr6;

    .line 537
    .line 538
    sget-object v2, Lfi8;->k:Ljava/util/HashMap;

    .line 539
    .line 540
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    check-cast p0, Lf1;

    .line 545
    .line 546
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 547
    .line 548
    .line 549
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 550
    .line 551
    new-instance v2, Lt82;

    .line 552
    .line 553
    new-instance v3, Lp82;

    .line 554
    .line 555
    invoke-direct {v3, v0}, Lj1;-><init>([B)V

    .line 556
    .line 557
    .line 558
    invoke-direct {v2, v3}, Lv1;-><init>(Lb0;)V

    .line 559
    .line 560
    .line 561
    const/4 v0, -0x1

    .line 562
    iput v0, v2, Lt82;->c:I

    .line 563
    .line 564
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 565
    .line 566
    .line 567
    return-object p0

    .line 568
    :cond_c
    instance-of v0, p0, Li06;

    .line 569
    .line 570
    if-eqz v0, :cond_d

    .line 571
    .line 572
    check-cast p0, Li06;

    .line 573
    .line 574
    iget-object v0, p0, Li06;->c:[B

    .line 575
    .line 576
    invoke-static {v0}, Lms8;->k([B)[B

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    new-instance v1, Lya;

    .line 581
    .line 582
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast p0, Lg06;

    .line 585
    .line 586
    sget-object v2, Lfi8;->g:Ljava/util/HashMap;

    .line 587
    .line 588
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    check-cast p0, Lf1;

    .line 593
    .line 594
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 595
    .line 596
    .line 597
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 598
    .line 599
    new-instance v2, Lp82;

    .line 600
    .line 601
    invoke-direct {v2, v0}, Lj1;-><init>([B)V

    .line 602
    .line 603
    .line 604
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 605
    .line 606
    .line 607
    return-object p0

    .line 608
    :cond_d
    instance-of v0, p0, Lzj5;

    .line 609
    .line 610
    if-eqz v0, :cond_e

    .line 611
    .line 612
    check-cast p0, Lzj5;

    .line 613
    .line 614
    iget-object v0, p0, Lzj5;->c:[B

    .line 615
    .line 616
    invoke-static {v0}, Lms8;->k([B)[B

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    new-instance v1, Lya;

    .line 621
    .line 622
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 623
    .line 624
    check-cast p0, Lxj5;

    .line 625
    .line 626
    sget-object v2, Lfi8;->q:Ljava/util/HashMap;

    .line 627
    .line 628
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object p0

    .line 632
    check-cast p0, Lf1;

    .line 633
    .line 634
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 635
    .line 636
    .line 637
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 638
    .line 639
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 640
    .line 641
    .line 642
    return-object p0

    .line 643
    :cond_e
    instance-of v0, p0, Lo33;

    .line 644
    .line 645
    if-eqz v0, :cond_f

    .line 646
    .line 647
    check-cast p0, Lo33;

    .line 648
    .line 649
    iget-object v0, p0, Lei0;->b:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v0, Lk33;

    .line 652
    .line 653
    iget-object p0, p0, Lo33;->c:[B

    .line 654
    .line 655
    invoke-static {p0}, Lms8;->k([B)[B

    .line 656
    .line 657
    .line 658
    move-result-object p0

    .line 659
    new-instance v1, Lya;

    .line 660
    .line 661
    sget-object v4, Lfi8;->s:Ljava/util/HashMap;

    .line 662
    .line 663
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    check-cast v4, Lf1;

    .line 668
    .line 669
    invoke-direct {v1, v4}, Lya;-><init>(Lf1;)V

    .line 670
    .line 671
    .line 672
    array-length v4, p0

    .line 673
    add-int/2addr v4, v3

    .line 674
    new-array v4, v4, [B

    .line 675
    .line 676
    iget v0, v0, Lk33;->b:I

    .line 677
    .line 678
    int-to-byte v0, v0

    .line 679
    aput-byte v0, v4, v2

    .line 680
    .line 681
    array-length v0, p0

    .line 682
    invoke-static {p0, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    .line 684
    .line 685
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 686
    .line 687
    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 688
    .line 689
    .line 690
    return-object p0

    .line 691
    :cond_f
    instance-of v0, p0, Lr45;

    .line 692
    .line 693
    if-eqz v0, :cond_10

    .line 694
    .line 695
    check-cast p0, Lr45;

    .line 696
    .line 697
    new-instance v0, Lya;

    .line 698
    .line 699
    iget-object v1, p0, Lei0;->b:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v1, Lo45;

    .line 702
    .line 703
    sget-object v2, Lfi8;->G:Ljava/util/HashMap;

    .line 704
    .line 705
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    check-cast v1, Lf1;

    .line 710
    .line 711
    invoke-direct {v0, v1}, Lya;-><init>(Lf1;)V

    .line 712
    .line 713
    .line 714
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 715
    .line 716
    invoke-virtual {p0}, Lr45;->getEncoded()[B

    .line 717
    .line 718
    .line 719
    move-result-object p0

    .line 720
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 721
    .line 722
    .line 723
    return-object v1

    .line 724
    :cond_10
    instance-of v0, p0, Lwj5;

    .line 725
    .line 726
    if-eqz v0, :cond_11

    .line 727
    .line 728
    check-cast p0, Lwj5;

    .line 729
    .line 730
    iget-object v0, p0, Lei0;->b:Ljava/lang/Object;

    .line 731
    .line 732
    check-cast v0, Luj5;

    .line 733
    .line 734
    iget v1, v0, Luj5;->a:I

    .line 735
    .line 736
    new-array v1, v1, [B

    .line 737
    .line 738
    iget-object v3, p0, Lwj5;->c:[B

    .line 739
    .line 740
    array-length v4, v3

    .line 741
    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    .line 743
    .line 744
    iget-object p0, p0, Lwj5;->d:[B

    .line 745
    .line 746
    array-length v3, v3

    .line 747
    array-length v4, p0

    .line 748
    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    .line 750
    .line 751
    new-instance p0, Lya;

    .line 752
    .line 753
    sget-object v2, Lfi8;->u:Ljava/util/HashMap;

    .line 754
    .line 755
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Lf1;

    .line 760
    .line 761
    invoke-direct {p0, v0}, Lya;-><init>(Lf1;)V

    .line 762
    .line 763
    .line 764
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 765
    .line 766
    new-instance v2, Lp82;

    .line 767
    .line 768
    invoke-direct {v2, v1}, Lj1;-><init>([B)V

    .line 769
    .line 770
    .line 771
    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 772
    .line 773
    .line 774
    return-object v0

    .line 775
    :cond_11
    instance-of v0, p0, Lqv6;

    .line 776
    .line 777
    if-eqz v0, :cond_12

    .line 778
    .line 779
    check-cast p0, Lqv6;

    .line 780
    .line 781
    iget-object v0, p0, Lqv6;->c:[B

    .line 782
    .line 783
    invoke-static {v0}, Lms8;->k([B)[B

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    new-instance v1, Lya;

    .line 788
    .line 789
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast p0, Lov6;

    .line 792
    .line 793
    sget-object v2, Lfi8;->w:Ljava/util/HashMap;

    .line 794
    .line 795
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object p0

    .line 799
    check-cast p0, Lf1;

    .line 800
    .line 801
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 802
    .line 803
    .line 804
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 805
    .line 806
    new-instance v2, Lp82;

    .line 807
    .line 808
    invoke-direct {v2, v0}, Lj1;-><init>([B)V

    .line 809
    .line 810
    .line 811
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 812
    .line 813
    .line 814
    return-object p0

    .line 815
    :cond_12
    instance-of v0, p0, Lql2;

    .line 816
    .line 817
    if-eqz v0, :cond_13

    .line 818
    .line 819
    check-cast p0, Lql2;

    .line 820
    .line 821
    new-instance v0, Lya;

    .line 822
    .line 823
    iget-object v1, p0, Lei0;->b:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast v1, Lol2;

    .line 826
    .line 827
    sget-object v2, Lfi8;->y:Ljava/util/HashMap;

    .line 828
    .line 829
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    check-cast v1, Lf1;

    .line 834
    .line 835
    invoke-direct {v0, v1}, Lya;-><init>(Lf1;)V

    .line 836
    .line 837
    .line 838
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 839
    .line 840
    iget-object v2, p0, Lql2;->c:[B

    .line 841
    .line 842
    iget-object p0, p0, Lql2;->d:[B

    .line 843
    .line 844
    invoke-static {v2, p0}, Lms8;->p([B[B)[B

    .line 845
    .line 846
    .line 847
    move-result-object p0

    .line 848
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 849
    .line 850
    .line 851
    return-object v1

    .line 852
    :cond_13
    instance-of v0, p0, Lj45;

    .line 853
    .line 854
    if-eqz v0, :cond_14

    .line 855
    .line 856
    check-cast p0, Lj45;

    .line 857
    .line 858
    new-instance v0, Lya;

    .line 859
    .line 860
    iget-object v1, p0, Lei0;->b:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v1, Lh45;

    .line 863
    .line 864
    sget-object v2, Lfi8;->I:Ljava/util/HashMap;

    .line 865
    .line 866
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    check-cast v1, Lf1;

    .line 871
    .line 872
    invoke-direct {v0, v1}, Lya;-><init>(Lf1;)V

    .line 873
    .line 874
    .line 875
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 876
    .line 877
    iget-object v2, p0, Lj45;->c:[B

    .line 878
    .line 879
    iget-object p0, p0, Lj45;->d:[B

    .line 880
    .line 881
    invoke-static {v2, p0}, Lms8;->p([B[B)[B

    .line 882
    .line 883
    .line 884
    move-result-object p0

    .line 885
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 886
    .line 887
    .line 888
    return-object v1

    .line 889
    :cond_14
    instance-of v0, p0, Lhi0;

    .line 890
    .line 891
    if-eqz v0, :cond_15

    .line 892
    .line 893
    check-cast p0, Lhi0;

    .line 894
    .line 895
    iget-object v0, p0, Lhi0;->c:[B

    .line 896
    .line 897
    invoke-static {v0}, Lms8;->k([B)[B

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    new-instance v1, Lya;

    .line 902
    .line 903
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast p0, Lfi0;

    .line 906
    .line 907
    sget-object v2, Lfi8;->A:Ljava/util/HashMap;

    .line 908
    .line 909
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object p0

    .line 913
    check-cast p0, Lf1;

    .line 914
    .line 915
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 916
    .line 917
    .line 918
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 919
    .line 920
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 921
    .line 922
    .line 923
    return-object p0

    .line 924
    :cond_15
    instance-of v0, p0, Ll24;

    .line 925
    .line 926
    if-eqz v0, :cond_16

    .line 927
    .line 928
    check-cast p0, Ll24;

    .line 929
    .line 930
    iget-object v0, p0, Ll24;->c:[B

    .line 931
    .line 932
    invoke-static {v0}, Lms8;->k([B)[B

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    new-instance v1, Lya;

    .line 937
    .line 938
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast p0, Lj24;

    .line 941
    .line 942
    sget-object v2, Lfi8;->C:Ljava/util/HashMap;

    .line 943
    .line 944
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object p0

    .line 948
    check-cast p0, Lf1;

    .line 949
    .line 950
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 951
    .line 952
    .line 953
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 954
    .line 955
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;[B)V

    .line 956
    .line 957
    .line 958
    return-object p0

    .line 959
    :cond_16
    instance-of v0, p0, Lte6;

    .line 960
    .line 961
    if-eqz v0, :cond_18

    .line 962
    .line 963
    check-cast p0, Lte6;

    .line 964
    .line 965
    iget-object v0, p0, Lei0;->b:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v0, Lre6;

    .line 968
    .line 969
    iget v1, v0, Lre6;->k:I

    .line 970
    .line 971
    if-eq v1, v3, :cond_17

    .line 972
    .line 973
    iget-object v1, p0, Lte6;->d:[B

    .line 974
    .line 975
    iget-object v4, p0, Lte6;->e:[[[S

    .line 976
    .line 977
    invoke-static {v4, v2}, Lx13;->s([[[SZ)[B

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    invoke-static {v1, v4}, Lms8;->p([B[B)[B

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    iget-object v4, p0, Lte6;->f:[[[S

    .line 986
    .line 987
    invoke-static {v4, v3}, Lx13;->s([[[SZ)[B

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-static {v1, v4}, Lms8;->p([B[B)[B

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    iget-object v4, p0, Lte6;->k:[[[S

    .line 996
    .line 997
    invoke-static {v4, v2}, Lx13;->s([[[SZ)[B

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    invoke-static {v1, v2}, Lms8;->p([B[B)[B

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    iget-object v2, p0, Lte6;->n:[[[S

    .line 1006
    .line 1007
    invoke-static {v2, v3}, Lx13;->s([[[SZ)[B

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    invoke-static {v1, v2}, Lms8;->p([B[B)[B

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    iget-object p0, p0, Lte6;->p:[[[S

    .line 1016
    .line 1017
    invoke-static {p0, v3}, Lx13;->s([[[SZ)[B

    .line 1018
    .line 1019
    .line 1020
    move-result-object p0

    .line 1021
    invoke-static {v1, p0}, Lms8;->p([B[B)[B

    .line 1022
    .line 1023
    .line 1024
    move-result-object p0

    .line 1025
    goto :goto_0

    .line 1026
    :cond_17
    iget-object p0, p0, Lte6;->c:[[[S

    .line 1027
    .line 1028
    invoke-static {p0, v3}, Lx13;->s([[[SZ)[B

    .line 1029
    .line 1030
    .line 1031
    move-result-object p0

    .line 1032
    :goto_0
    new-instance v1, Lya;

    .line 1033
    .line 1034
    sget-object v2, Lfi8;->E:Ljava/util/HashMap;

    .line 1035
    .line 1036
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    check-cast v0, Lf1;

    .line 1041
    .line 1042
    invoke-direct {v1, v0}, Lya;-><init>(Lf1;)V

    .line 1043
    .line 1044
    .line 1045
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 1046
    .line 1047
    new-instance v2, Lp82;

    .line 1048
    .line 1049
    invoke-direct {v2, p0}, Lj1;-><init>([B)V

    .line 1050
    .line 1051
    .line 1052
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 1053
    .line 1054
    .line 1055
    return-object v0

    .line 1056
    :cond_18
    instance-of v0, p0, Lo95;

    .line 1057
    .line 1058
    if-eqz v0, :cond_19

    .line 1059
    .line 1060
    check-cast p0, Lo95;

    .line 1061
    .line 1062
    iget-object v0, p0, Lo95;->c:[B

    .line 1063
    .line 1064
    invoke-static {v0}, Lms8;->k([B)[B

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    new-instance v1, Lya;

    .line 1069
    .line 1070
    iget-object p0, p0, Lei0;->b:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast p0, Lm95;

    .line 1073
    .line 1074
    sget-object v2, Lfi8;->M:Ljava/util/HashMap;

    .line 1075
    .line 1076
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object p0

    .line 1080
    check-cast p0, Lf1;

    .line 1081
    .line 1082
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 1083
    .line 1084
    .line 1085
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 1086
    .line 1087
    new-instance v2, Lp82;

    .line 1088
    .line 1089
    invoke-direct {v2, v0}, Lj1;-><init>([B)V

    .line 1090
    .line 1091
    .line 1092
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 1093
    .line 1094
    .line 1095
    return-object p0

    .line 1096
    :cond_19
    instance-of v0, p0, Lvi7;

    .line 1097
    .line 1098
    if-eqz v0, :cond_1a

    .line 1099
    .line 1100
    check-cast p0, Lvi7;

    .line 1101
    .line 1102
    iget-object v0, p0, Lvi7;->b:[B

    .line 1103
    .line 1104
    invoke-static {v0}, Lms8;->k([B)[B

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    new-instance v1, Lya;

    .line 1109
    .line 1110
    iget-object p0, p0, Lvi7;->c:Lti7;

    .line 1111
    .line 1112
    sget-object v2, Lfi8;->O:Ljava/util/HashMap;

    .line 1113
    .line 1114
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object p0

    .line 1118
    check-cast p0, Lf1;

    .line 1119
    .line 1120
    invoke-direct {v1, p0}, Lya;-><init>(Lf1;)V

    .line 1121
    .line 1122
    .line 1123
    new-instance p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 1124
    .line 1125
    new-instance v2, Lp82;

    .line 1126
    .line 1127
    invoke-direct {v2, v0}, Lj1;-><init>([B)V

    .line 1128
    .line 1129
    .line 1130
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lya;Ly0;)V

    .line 1131
    .line 1132
    .line 1133
    return-object p0

    .line 1134
    :cond_1a
    const-string p0, "key parameters not recognized"

    .line 1135
    .line 1136
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    return-object v1
.end method

.method public static final j(J)J
    .locals 3

    .line 1
    sget-object v0, Lmr2;->b:Lma2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-long/2addr p0, v1

    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    add-long/2addr p0, v1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget v0, Lnr2;->a:I

    .line 12
    .line 13
    return-wide p0
.end method

.method public static k(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, "="

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :try_start_0
    const-string v3, "utf-8"

    .line 55
    .line 56
    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    const-string p0, "Unable to encode using UTF-8"

    .line 72
    .line 73
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0

    .line 78
    :cond_0
    const-string p0, "&"

    .line 79
    .line 80
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static l(Ljava/util/List;II)Lq17;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ltz v1, :cond_9

    .line 12
    .line 13
    if-lez v2, :cond_8

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-le v1, v3, :cond_0

    .line 20
    .line 21
    move v1, v3

    .line 22
    :cond_0
    const/16 v3, 0x80

    .line 23
    .line 24
    if-le v2, v3, :cond_1

    .line 25
    .line 26
    move v2, v3

    .line 27
    :cond_1
    const/16 v3, 0x40

    .line 28
    .line 29
    move v4, v1

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v4, v5, :cond_5

    .line 35
    .line 36
    sub-int v5, v4, v1

    .line 37
    .line 38
    if-ge v5, v2, :cond_5

    .line 39
    .line 40
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lz17;

    .line 45
    .line 46
    iget-object v6, v5, Lz17;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    mul-int/lit8 v6, v6, 0x2

    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x68

    .line 55
    .line 56
    iget-object v7, v5, Lz17;->c:Ljava/lang/String;

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    mul-int/lit8 v7, v7, 0x2

    .line 66
    .line 67
    add-int/lit8 v7, v7, 0x8

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v7, v8

    .line 71
    :goto_1
    add-int/2addr v6, v7

    .line 72
    iget-object v5, v5, Lz17;->i:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    mul-int/lit8 v7, v7, 0x2

    .line 95
    .line 96
    add-int/lit8 v7, v7, 0x8

    .line 97
    .line 98
    add-int/2addr v8, v7

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    add-int/2addr v6, v8

    .line 101
    if-le v4, v1, :cond_4

    .line 102
    .line 103
    add-int v5, v3, v6

    .line 104
    .line 105
    const/high16 v7, 0x40000

    .line 106
    .line 107
    if-le v5, v7, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    add-int/2addr v3, v6

    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    :goto_3
    invoke-interface {v0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ge v4, v0, :cond_6

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    const/4 v4, -0x1

    .line 126
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    .line 127
    .line 128
    const/16 v2, 0xa

    .line 129
    .line 130
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_7

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lz17;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    new-instance v5, Lp17;

    .line 157
    .line 158
    iget-object v6, v2, Lz17;->a:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v3, v2, Lz17;->b:Lc27;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    iget-object v8, v2, Lz17;->c:Ljava/lang/String;

    .line 167
    .line 168
    iget v9, v2, Lz17;->d:I

    .line 169
    .line 170
    iget-wide v10, v2, Lz17;->e:J

    .line 171
    .line 172
    iget-wide v12, v2, Lz17;->f:J

    .line 173
    .line 174
    iget-wide v14, v2, Lz17;->g:J

    .line 175
    .line 176
    iget-boolean v3, v2, Lz17;->h:Z

    .line 177
    .line 178
    move-object/from16 p0, v1

    .line 179
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    .line 181
    .line 182
    iget-object v2, v2, Lz17;->i:Ljava/util/List;

    .line 183
    .line 184
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v17, v1

    .line 188
    .line 189
    move/from16 v16, v3

    .line 190
    .line 191
    invoke-direct/range {v5 .. v17}, Lp17;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/util/ArrayList;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-object/from16 v1, p0

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Lq17;

    .line 206
    .line 207
    invoke-direct {v0, v1, v4}, Lq17;-><init>(Ljava/util/ArrayList;I)V

    .line 208
    .line 209
    .line 210
    return-object v0

    .line 211
    :cond_8
    const-string v0, "SBA root tar list maxEntries must be > 0: "

    .line 212
    .line 213
    invoke-static {v2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    return-object v3

    .line 221
    :cond_9
    const-string v0, "SBA root tar list startIndex must be >= 0: "

    .line 222
    .line 223
    invoke-static {v1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v3
.end method

.method public static o([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x18

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x10

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public static p([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    shl-int/lit8 p0, p0, 0x18

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public static q(Ljava/util/List;Ljava/io/InputStream;Lm35;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Leg6;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Leg6;-><init>(Ljava/io/InputStream;Lm35;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v1

    .line 17
    :cond_1
    const/high16 v1, 0x500000

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_3

    .line 28
    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lx94;

    .line 34
    .line 35
    :try_start_0
    invoke-interface {v3, p1, p2}, Lx94;->d(Ljava/io/InputStream;Lm35;)I

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 40
    .line 41
    .line 42
    if-eq v3, v0, :cond_2

    .line 43
    .line 44
    move v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_1
    return v0
.end method

.method public static s(Ljava/util/List;Ljava/io/InputStream;Lm35;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Leg6;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Leg6;-><init>(Ljava/io/InputStream;Lm35;)V

    .line 15
    .line 16
    .line 17
    move-object p1, v0

    .line 18
    :cond_1
    const/high16 p2, 0x500000

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-ge v0, p2, :cond_3

    .line 29
    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lx94;

    .line 35
    .line 36
    :try_start_0
    invoke-interface {v1, p1}, Lx94;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 44
    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_3
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 57
    .line 58
    :goto_1
    return-object v1
.end method

.method public static t(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lx94;

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v3, p1}, Lx94;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 21
    .line 22
    .line 23
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v4, Lay0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 33
    .line 34
    if-eq v3, v4, :cond_1

    .line 35
    .line 36
    return-object v3

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    sget-object v0, Lay0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 51
    .line 52
    return-object p0
.end method

.method public static w(Lar;Ljava/lang/String;Z)Lcw5;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, p1

    .line 11
    :goto_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v2, "INSTALL_FAILED_NO_MATCHING_ABIS"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string p0, "This APK set does not include native code for this device\'s CPU architecture. Ask the sender to share the app from a compatible device, or install it from the original source."

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    const-string v2, "INSTALL_FAILED_MISSING_SPLIT"

    .line 34
    .line 35
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const-string p0, "This APK set is incomplete. Ask the sender to share the app again with all split APKs."

    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_2
    const-string v2, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    .line 46
    .line 47
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_c

    .line 52
    .line 53
    sget-object v2, Lar;->STATUS_FAILURE_CONFLICT:Lar;

    .line 54
    .line 55
    if-ne p0, v2, :cond_3

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_3
    const-string v2, "INSTALL_FAILED_VERSION_DOWNGRADE"

    .line 59
    .line 60
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const-string p0, "The APK is older than the installed app."

    .line 67
    .line 68
    goto :goto_6

    .line 69
    :cond_4
    const-string v2, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    .line 70
    .line 71
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_b

    .line 76
    .line 77
    sget-object v2, Lar;->STATUS_FAILURE_STORAGE:Lar;

    .line 78
    .line 79
    if-ne p0, v2, :cond_5

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const-string v2, "INSTALL_FAILED_INVALID_APK"

    .line 83
    .line 84
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_a

    .line 89
    .line 90
    sget-object v1, Lar;->STATUS_FAILURE_INVALID:Lar;

    .line 91
    .line 92
    if-ne p0, v1, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    sget-object v1, Lar;->STATUS_FAILURE_BLOCKED:Lar;

    .line 96
    .line 97
    if-ne p0, v1, :cond_8

    .line 98
    .line 99
    if-eqz p2, :cond_7

    .line 100
    .line 101
    const-string p0, " Advanced Protection is enabled on this device."

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    move-object p0, v0

    .line 105
    :goto_1
    const-string p2, "APK install was blocked."

    .line 106
    .line 107
    const-string v1, " Try restoring with root/Shizuku, or install with ADB if you trust the APK."

    .line 108
    .line 109
    :goto_2
    invoke-static {p2, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    goto :goto_6

    .line 114
    :cond_8
    sget-object p2, Lar;->STATUS_FAILURE_ABORTED:Lar;

    .line 115
    .line 116
    if-ne p0, p2, :cond_9

    .line 117
    .line 118
    const-string p0, "APK install was cancelled or aborted by the system."

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string p2, "APK install failed: "

    .line 126
    .line 127
    const-string v1, "."

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_a
    :goto_3
    const-string p0, "One or more APK files are invalid, corrupt, or incompatible with each other."

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_b
    :goto_4
    const-string p0, "There is not enough free space to install this app."

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_c
    :goto_5
    const-string p0, "A version of this app is already installed with a different signature. Only uninstall the installed app first if you trust this APK set."

    .line 137
    .line 138
    :goto_6
    new-instance p2, Lcw5;

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    if-eqz p1, :cond_e

    .line 142
    .line 143
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_d

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_d
    move-object p1, v1

    .line 151
    :goto_7
    if-eqz p1, :cond_e

    .line 152
    .line 153
    const-string v1, "\n\nSystem message: "

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :cond_e
    if-nez v1, :cond_f

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_f
    move-object v0, v1

    .line 163
    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string p1, "APK install failed"

    .line 168
    .line 169
    invoke-direct {p2, p1, p0}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object p2
.end method

.method public static x(Ljava/io/File;)Luc8;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x4

    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lbr0;->d:[B

    .line 26
    .line 27
    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    new-instance p0, Lar0;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lar0;->b:I

    .line 40
    .line 41
    iput v1, p0, Lar0;->c:I

    .line 42
    .line 43
    iput v1, p0, Lar0;->f:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    instance-of v1, p0, Luc8;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    check-cast p0, Luc8;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v1, Ldy8;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Ldy8;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 60
    .line 61
    .line 62
    move-object p0, v1

    .line 63
    :goto_0
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    new-instance v0, Ljava/io/IOException;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public static final y(Lox1;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lpe4;->i:Ldu9;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    instance-of v0, p1, Lu28;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    check-cast p1, Lu28;

    .line 11
    .line 12
    iget-object p0, p1, Lu28;->c:[Ll28;

    .line 13
    .line 14
    array-length v0, p0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    if-ltz v0, :cond_2

    .line 18
    .line 19
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 20
    .line 21
    aget-object v2, p0, v0

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v3, p1, Lu28;->b:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v0, v3, v0

    .line 29
    .line 30
    invoke-interface {v2, v0}, Ll28;->h(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-gez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    return-void

    .line 39
    :cond_3
    const/4 v0, 0x0

    .line 40
    sget-object v1, Lpe4;->k:Lqc1;

    .line 41
    .line 42
    invoke-interface {p0, v0, v1}, Lox1;->fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    check-cast p0, Ll28;

    .line 50
    .line 51
    invoke-interface {p0, p1}, Ll28;->h(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static z(Ljava/lang/RuntimeException;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    move v2, v3

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public abstract m(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
.end method

.method public abstract n(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.end method

.method public abstract r(Ljava/lang/Class;)[Ljava/lang/String;
.end method

.method public abstract u(Ljava/lang/Class;)Z
.end method

.method public abstract v()Z
.end method
