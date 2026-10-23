.class public final Lsl4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lhp4;
.implements Lxe9;
.implements Lk15;
.implements Lzm7;
.implements Lv36;
.implements Laj8;
.implements Lw23;
.implements Ltl6;
.implements Ldh5;
.implements Lz98;
.implements Lx76;
.implements Luk7;
.implements Lkw5;
.implements Lnx1;
.implements Lba1;


# static fields
.field public static volatile a:Lsl4;

.field public static final b:Lsl4;

.field public static final c:Lsl4;

.field public static final d:Lsl4;

.field public static final e:Lsl4;

.field public static final synthetic f:Lsl4;

.field public static k:Lsl4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsl4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsl4;->b:Lsl4;

    .line 7
    .line 8
    new-instance v0, Lsl4;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lsl4;->c:Lsl4;

    .line 14
    .line 15
    new-instance v0, Lsl4;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lsl4;->d:Lsl4;

    .line 21
    .line 22
    new-instance v0, Lsl4;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lsl4;->e:Lsl4;

    .line 28
    .line 29
    new-instance v0, Lsl4;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lsl4;->f:Lsl4;

    .line 35
    .line 36
    return-void
.end method

.method public static A(Ljava/util/logging/Level;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x320

    .line 6
    .line 7
    if-ge p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x1f4

    .line 10
    .line 11
    if-ge p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x3

    .line 16
    return p0

    .line 17
    :cond_1
    const/16 v0, 0x384

    .line 18
    .line 19
    if-ge p0, v0, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x4

    .line 22
    return p0

    .line 23
    :cond_2
    const/16 v0, 0x3e8

    .line 24
    .line 25
    if-ge p0, v0, :cond_3

    .line 26
    .line 27
    const/4 p0, 0x5

    .line 28
    return p0

    .line 29
    :cond_3
    const/4 p0, 0x6

    .line 30
    return p0
.end method

.method public static B(J)Ljava/util/List;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-ltz v2, :cond_4

    .line 6
    .line 7
    const-wide/32 v2, 0x800000

    .line 8
    .line 9
    .line 10
    cmp-long v4, p0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_0

    .line 13
    .line 14
    new-instance v5, Lo08;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const-wide/16 v7, 0x0

    .line 18
    .line 19
    move-wide v9, p0

    .line 20
    invoke-direct/range {v5 .. v10}, Lo08;-><init>(IJJ)V

    .line 21
    .line 22
    .line 23
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    move-wide v8, v0

    .line 35
    move v7, v5

    .line 36
    :goto_0
    cmp-long v0, v8, p0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-gez v0, :cond_1

    .line 40
    .line 41
    sub-long v5, p0, v8

    .line 42
    .line 43
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    new-instance v6, Lo08;

    .line 48
    .line 49
    invoke-direct/range {v6 .. v11}, Lo08;-><init>(IJJ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    add-long/2addr v8, v10

    .line 56
    add-int/2addr v7, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-le p0, v1, :cond_3

    .line 63
    .line 64
    invoke-static {v4}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lo08;

    .line 69
    .line 70
    iget-wide p0, p0, Lo08;->c:J

    .line 71
    .line 72
    const-wide/32 v0, 0x400000

    .line 73
    .line 74
    .line 75
    cmp-long p0, p0, v0

    .line 76
    .line 77
    if-lez p0, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 p0, 0x2

    .line 81
    invoke-static {v4, p0}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lo08;

    .line 86
    .line 87
    invoke-static {v4}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lo08;

    .line 92
    .line 93
    invoke-static {p0, v4}, Lel1;->O0(ILjava/util/List;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-instance v1, Lo08;

    .line 98
    .line 99
    iget v2, p1, Lo08;->a:I

    .line 100
    .line 101
    iget-wide v3, p1, Lo08;->b:J

    .line 102
    .line 103
    iget-wide v5, p1, Lo08;->c:J

    .line 104
    .line 105
    iget-wide v7, v0, Lo08;->c:J

    .line 106
    .line 107
    add-long/2addr v5, v7

    .line 108
    invoke-direct/range {v1 .. v6}, Lo08;-><init>(IJJ)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, p0}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_3
    :goto_1
    return-object v4

    .line 117
    :cond_4
    const-string p0, "contentLength must not be negative."

    .line 118
    .line 119
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    return-object p0
.end method

.method public static C(Ltl4;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lom4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lom4;

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    invoke-virtual {p0, v0}, Lom4;->J(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lom4;->W()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Iterator;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lom4;->Z(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lkl4;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lkl4;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lom4;->Z(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget v0, p0, Ltl4;->peeked:I

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Ltl4;->doPeek()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :cond_1
    const/16 v1, 0xd

    .line 54
    .line 55
    if-ne v0, v1, :cond_2

    .line 56
    .line 57
    const/16 v0, 0x9

    .line 58
    .line 59
    iput v0, p0, Ltl4;->peeked:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/16 v1, 0xc

    .line 63
    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    const/16 v0, 0x8

    .line 67
    .line 68
    iput v0, p0, Ltl4;->peeked:I

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const/16 v1, 0xe

    .line 72
    .line 73
    if-ne v0, v1, :cond_4

    .line 74
    .line 75
    const/16 v0, 0xa

    .line 76
    .line 77
    iput v0, p0, Ltl4;->peeked:I

    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    const-string v0, "a name"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ltl4;->D(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    throw p0
.end method

.method public static final v(Ljava/io/FileOutputStream;Lkv1;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lbi5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lbi5;

    .line 7
    .line 8
    iget v1, v0, Lbi5;->d:I

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
    iput v1, v0, Lbi5;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lbi5;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkv1;-><init>(Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lbi5;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lbi5;->d:I

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
    iget-wide v3, v0, Lbi5;->b:J

    .line 35
    .line 36
    iget-object p0, v0, Lbi5;->a:Ljava/io/FileOutputStream;

    .line 37
    .line 38
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object p1, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v3, 0xa

    .line 54
    .line 55
    move-object p1, v0

    .line 56
    :goto_1
    const-wide/32 v0, 0xea60

    .line 57
    .line 58
    .line 59
    cmp-long v0, v3, v0

    .line 60
    .line 61
    if-gtz v0, :cond_5

    .line 62
    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-wide v8, 0x7fffffffffffffffL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const-wide/16 v6, 0x0

    .line 74
    .line 75
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const-string v5, "Resource deadlock would occur"

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    invoke-static {v1, v5, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ne v1, v2, :cond_4

    .line 98
    .line 99
    iput-object p0, p1, Lbi5;->a:Ljava/io/FileOutputStream;

    .line 100
    .line 101
    iput-wide v3, p1, Lbi5;->b:J

    .line 102
    .line 103
    iput v2, p1, Lbi5;->d:I

    .line 104
    .line 105
    invoke-static {v3, v4, p1}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Lyx1;->a:Lyx1;

    .line 110
    .line 111
    if-ne v0, v1, :cond_3

    .line 112
    .line 113
    move-object v0, v1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :goto_2
    const-wide/16 v0, 0x2

    .line 116
    .line 117
    mul-long/2addr v3, v0

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    throw v0

    .line 120
    :cond_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-wide v8, 0x7fffffffffffffffL

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    const/4 v10, 0x0

    .line 130
    const-wide/16 v6, 0x0

    .line 131
    .line 132
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    :goto_3
    return-object v0
.end method

.method public static x(III)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    const-wide v1, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    if-lt p2, v3, :cond_0

    .line 10
    .line 11
    mul-int v4, p1, v0

    .line 12
    .line 13
    int-to-long v4, v4

    .line 14
    and-long/2addr v1, v4

    .line 15
    int-to-long v4, p0

    .line 16
    mul-long/2addr v1, v4

    .line 17
    int-to-long v4, v0

    .line 18
    add-long/2addr v1, v4

    .line 19
    ushr-long v0, v1, v3

    .line 20
    .line 21
    long-to-int v0, v0

    .line 22
    add-int/lit8 p2, p2, -0x20

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-lez p2, :cond_1

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    neg-int v4, p2

    .line 29
    ushr-int/2addr v3, v4

    .line 30
    mul-int/2addr p1, v0

    .line 31
    and-int/2addr p1, v3

    .line 32
    int-to-long v3, p1

    .line 33
    and-long/2addr v1, v3

    .line 34
    int-to-long p0, p0

    .line 35
    mul-long/2addr v1, p0

    .line 36
    int-to-long p0, v0

    .line 37
    add-long/2addr v1, p0

    .line 38
    ushr-long p0, v1, p2

    .line 39
    .line 40
    long-to-int p0, p0

    .line 41
    return p0

    .line 42
    :cond_1
    return v0
.end method


# virtual methods
.method public a(Liz1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Lhp4;
    .locals 0

    .line 1
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
    const-wide v0, 0xc0000103L

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

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;
    .locals 0

    .line 1
    new-instance p0, Lip4;

    .line 2
    .line 3
    sget-object p3, Lsl4;->b:Lsl4;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3, p3}, Ljp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public e()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public f(Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/util/logging/Level;)V
    .locals 0

    .line 1
    sget-object p0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 2
    .line 3
    if-eq p2, p0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lsl4;->A(Ljava/util/logging/Level;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const-string p2, "EventBus"

    .line 10
    .line 11
    invoke-static {p0, p2, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, La48;->a:La48;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/io/File;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Lll6;

    .line 2
    .line 3
    invoke-interface {p1}, Lll6;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfx3;

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lfx3;->a:Lex3;

    .line 10
    .line 11
    iget-object p0, p0, Lex3;->a:Llx3;

    .line 12
    .line 13
    iget-object p0, p0, Llx3;->a:Lgl7;

    .line 14
    .line 15
    iget-object p0, p0, Lgl7;->d:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0, p2}, Lay0;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const/4 p1, 0x5

    .line 28
    const-string p2, "GifEncoder"

    .line 29
    .line 30
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-string p1, "Failed to encode GIF drawable data"

    .line 37
    .line 38
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public i()V
    .locals 1

    .line 1
    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 2
    .line 3
    const-string v0, "ProfileInstaller"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public j(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 2
    .line 3
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->l0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p1, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 12
    .line 13
    const p1, 0x7f1303df

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->l0:Ljava/lang/String;

    .line 22
    .line 23
    return-object p0
.end method

.method public k(ILjava/lang/Object;)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string p0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string p0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string p0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string p0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string p0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string p0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string p0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string p0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string p0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string p0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x6

    .line 37
    const-string v1, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    if-eq p1, v0, :cond_0

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    if-eq p1, v0, :cond_0

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public l([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 13

    .line 1
    new-instance p0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    move v3, v1

    .line 12
    move v4, v3

    .line 13
    move v5, v2

    .line 14
    :goto_0
    array-length v6, p1

    .line 15
    if-ge v3, v6, :cond_5

    .line 16
    .line 17
    aget-object v6, p1, v3

    .line 18
    .line 19
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    check-cast v7, Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz v7, :cond_4

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    sub-int v9, v3, v8

    .line 32
    .line 33
    add-int v10, v3, v9

    .line 34
    .line 35
    array-length v11, p1

    .line 36
    if-le v10, v11, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    move v10, v1

    .line 40
    :goto_1
    if-ge v10, v9, :cond_2

    .line 41
    .line 42
    add-int v11, v8, v10

    .line 43
    .line 44
    aget-object v11, p1, v11

    .line 45
    .line 46
    add-int v12, v3, v10

    .line 47
    .line 48
    aget-object v12, p1, v12

    .line 49
    .line 50
    invoke-virtual {v11, v12}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-nez v11, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    sub-int v7, v3, v7

    .line 65
    .line 66
    const/16 v8, 0xa

    .line 67
    .line 68
    if-ge v5, v8, :cond_3

    .line 69
    .line 70
    invoke-static {p1, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    add-int/2addr v4, v7

    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 77
    .line 78
    add-int/2addr v7, v3

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    :goto_2
    aget-object v5, p1, v3

    .line 81
    .line 82
    aput-object v5, v0, v4

    .line 83
    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    move v5, v2

    .line 87
    move v7, v3

    .line 88
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v3, v7, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    new-array p0, v4, [Ljava/lang/StackTraceElement;

    .line 99
    .line 100
    invoke-static {v0, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    .line 102
    .line 103
    array-length v0, p1

    .line 104
    if-ge v4, v0, :cond_6

    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_6
    return-object p1
.end method

.method public m(ILjp4;Ljp4;)Lhp4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public n()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public o(I)Lx98;
    .locals 0

    .line 1
    sget-object p0, Llk;->b:Llk;

    .line 2
    .line 3
    return-object p0
.end method

.method public onCancelled(Lwc2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "Failed to read multiThreadedDownloads feature availability"

    .line 5
    .line 6
    invoke-virtual {p1}, Lwc2;->c()Lxc2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "Features"

    .line 11
    .line 12
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onDataChange(Leb2;)V
    .locals 8

    .line 1
    const-string p0, "feature_available"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Boolean;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, "editor"

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const-string v3, "allow_multithreaded_downloads"

    .line 29
    .line 30
    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    const-string p0, "allowed_chunks_count"

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-class p1, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p0, :cond_5

    .line 57
    .line 58
    const-string p1, ","

    .line 59
    .line 60
    filled-new-array {p1}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v2, 0x6

    .line 65
    invoke-static {p0, p1, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v6, 0x0

    .line 109
    const/16 v7, 0x3e

    .line 110
    .line 111
    const-string v3, ","

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    const-string v0, "features_allowed_multithreaded_downloads_chunk_counts"

    .line 124
    .line 125
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_5
    return-void
.end method

.method public p([B)Z
    .locals 3

    .line 1
    array-length p0, p1

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    aget-byte p0, p1, v1

    .line 7
    .line 8
    const/4 v0, -0x2

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    aget-byte v0, p1, p0

    .line 13
    .line 14
    const/16 v2, 0x53

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    aget-byte v0, p1, v0

    .line 20
    .line 21
    const/16 v2, 0x4d

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aget-byte p1, p1, v0

    .line 27
    .line 28
    const/16 v0, 0x42

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    return p0

    .line 33
    :cond_0
    return v1
.end method

.method public q(Lou5;)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public r()Lhp4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public read([B)Lev6;
    .locals 0

    .line 1
    new-instance p0, Lst6;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lst6;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public s()Lhp4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public size()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public t()Lhp4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public u(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 2
    .line 3
    if-eq p1, p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lsl4;->A(Ljava/util/logging/Level;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const-string p1, "\n"

    .line 10
    .line 11
    invoke-static {p2, p1}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "EventBus"

    .line 27
    .line 28
    invoke-static {p0, p2, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public w()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public y(Lai5;)Lch5;
    .locals 0

    .line 1
    new-instance p0, Lfe8;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lfe8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public z(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    check-cast p1, Lokhttp3/Request;

    .line 2
    .line 3
    iget-object p0, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ":"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lokhttp3/HttpUrl;->e:I

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
