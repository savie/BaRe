.class public final Lo83;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final p:Ll15;


# instance fields
.field public final a:J

.field public b:Lr63;

.field public c:J

.field public d:I

.field public e:[B

.field public f:Z

.field public k:Lp21;

.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lo83;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lo83;->p:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lr63;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lo83;->c:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lo83;->d:I

    .line 10
    .line 11
    iput-object p1, p0, Lo83;->b:Lr63;

    .line 12
    .line 13
    iput p2, p0, Lo83;->n:I

    .line 14
    .line 15
    iput-wide p3, p0, Lo83;->a:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lo83;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lo83;->k:Lp21;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lo83;->b()Lp21;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lo83;->k:Lp21;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lo83;->k:Lp21;

    .line 17
    .line 18
    iget-wide v1, p0, Lo83;->a:J

    .line 19
    .line 20
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    :try_start_0
    iget-object v0, v0, Lp21;->a:Ln86;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Ln86;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    check-cast v0, Ldu6;

    .line 29
    .line 30
    iget-object v1, v0, Lev6;->a:Ldv6;

    .line 31
    .line 32
    check-cast v1, Lut6;

    .line 33
    .line 34
    iget-wide v2, v1, Lut6;->j:J

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long v6, v2, v4

    .line 39
    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    iget-object v6, v0, Ldu6;->f:[B

    .line 43
    .line 44
    iput-object v6, p0, Lo83;->e:[B

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    iput v6, p0, Lo83;->d:I

    .line 48
    .line 49
    iget-wide v6, p0, Lo83;->c:J

    .line 50
    .line 51
    iget v8, v0, Ldu6;->e:I

    .line 52
    .line 53
    int-to-long v8, v8

    .line 54
    add-long/2addr v6, v8

    .line 55
    iput-wide v6, p0, Lo83;->c:J

    .line 56
    .line 57
    :cond_2
    const-wide v6, 0xc0000011L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v6, v2, v6

    .line 63
    .line 64
    if-eqz v6, :cond_5

    .line 65
    .line 66
    iget v0, v0, Ldu6;->e:I

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    cmp-long v0, v2, v4

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Lo83;->b()Lp21;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lo83;->k:Lp21;

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    new-instance v0, Lyu6;

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "Read failed for "

    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v0, v1, p0}, Lyu6;-><init>(Lut6;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_5
    :goto_0
    iget-wide v0, p0, Lo83;->c:J

    .line 103
    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget-object v1, Lo83;->p:Ll15;

    .line 109
    .line 110
    const-string v2, "EOF, {} bytes read"

    .line 111
    .line 112
    invoke-interface {v1, v0, v2}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lo83;->f:Z

    .line 117
    .line 118
    return-void

    .line 119
    :catch_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p0

    .line 122
    :goto_1
    instance-of v0, p0, Lva8;

    .line 123
    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    check-cast p0, Lva8;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    new-instance v0, Lva8;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    move-object p0, v0

    .line 135
    :goto_2
    throw p0

    .line 136
    :catch_2
    move-exception p0

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lva8;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v0
.end method

.method public final available()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final b()Lp21;
    .locals 12

    .line 1
    iget-object v0, p0, Lo83;->b:Lr63;

    .line 2
    .line 3
    iget-wide v8, p0, Lo83;->c:J

    .line 4
    .line 5
    iget-object v11, v0, Lmm2;->b:Lwm2;

    .line 6
    .line 7
    iget-object v3, v0, Lmm2;->c:Lnr6;

    .line 8
    .line 9
    new-instance v1, Lcu6;

    .line 10
    .line 11
    iget-object v2, v11, Lvc7;->e:Lus6;

    .line 12
    .line 13
    iget-wide v4, v11, Lvc7;->t:J

    .line 14
    .line 15
    iget-wide v6, v11, Lvc7;->c:J

    .line 16
    .line 17
    iget v0, v11, Lvc7;->f:I

    .line 18
    .line 19
    iget p0, p0, Lo83;->n:I

    .line 20
    .line 21
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    invoke-direct/range {v1 .. v10}, Lcu6;-><init>(Lus6;Lnr6;JJJI)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v11, v1}, Lvc7;->b(Lrt6;)Lp21;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo83;->f:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lo83;->b:Lr63;

    .line 6
    .line 7
    iput-object v0, p0, Lo83;->e:[B

    .line 8
    .line 9
    return-void
.end method

.method public final read()I
    .locals 3

    .line 40
    iget-object v0, p0, Lo83;->e:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lo83;->d:I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lo83;->a()V

    .line 42
    :cond_1
    iget-boolean v0, p0, Lo83;->f:Z

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 43
    :cond_2
    iget-object v0, p0, Lo83;->e:[B

    iget v1, p0, Lo83;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo83;->d:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 39
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lo83;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 3

    .line 1
    iget-object v0, p0, Lo83;->e:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lo83;->d:I

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt v1, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lo83;->a()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-boolean v0, p0, Lo83;->f:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    return p0

    .line 19
    :cond_2
    iget-object v0, p0, Lo83;->e:[B

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    iget v2, p0, Lo83;->d:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    if-le v1, p3, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    array-length p3, v0

    .line 29
    sub-int/2addr p3, v2

    .line 30
    :goto_0
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget p1, p0, Lo83;->d:I

    .line 34
    .line 35
    add-int/2addr p1, p3

    .line 36
    iput p1, p0, Lo83;->d:I

    .line 37
    .line 38
    return p3
.end method

.method public final skip(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lo83;->e:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lo83;->c:J

    .line 6
    .line 7
    add-long/2addr v0, p1

    .line 8
    iput-wide v0, p0, Lo83;->c:J

    .line 9
    .line 10
    return-wide p1

    .line 11
    :cond_0
    iget v1, p0, Lo83;->d:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    add-long/2addr v1, p1

    .line 15
    array-length v3, v0

    .line 16
    int-to-long v3, v3

    .line 17
    cmp-long v3, v1, v3

    .line 18
    .line 19
    if-gez v3, :cond_1

    .line 20
    .line 21
    long-to-int v0, v1

    .line 22
    iput v0, p0, Lo83;->d:I

    .line 23
    .line 24
    return-wide p1

    .line 25
    :cond_1
    iget-wide v3, p0, Lo83;->c:J

    .line 26
    .line 27
    array-length v0, v0

    .line 28
    int-to-long v5, v0

    .line 29
    sub-long/2addr v1, v5

    .line 30
    add-long/2addr v1, v3

    .line 31
    iput-wide v1, p0, Lo83;->c:J

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lo83;->e:[B

    .line 35
    .line 36
    iput-object v0, p0, Lo83;->k:Lp21;

    .line 37
    .line 38
    return-wide p1
.end method
