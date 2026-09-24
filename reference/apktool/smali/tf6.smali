.class public final Ltf6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzw0;


# instance fields
.field public final a:Lij7;

.field public final b:Lnw0;

.field public c:Z


# direct methods
.method public constructor <init>(Lij7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ltf6;->a:Lij7;

    .line 8
    .line 9
    new-instance p1, Lnw0;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ltf6;->b:Lnw0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final E(J)Ljava/lang/String;
    .locals 18

    .line 1
    move-wide/from16 v6, p1

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, v6, v0

    .line 6
    .line 7
    if-ltz v0, :cond_3

    .line 8
    .line 9
    const-wide v8, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v0, v6, v8

    .line 15
    .line 16
    const-wide/16 v10, 0x1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move-wide v4, v8

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    add-long v0, v6, v10

    .line 23
    .line 24
    move-wide v4, v0

    .line 25
    :goto_0
    const/16 v1, 0xa

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    move-object/from16 v0, p0

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v5}, Ltf6;->a(BJJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    const-wide/16 v12, -0x1

    .line 36
    .line 37
    cmp-long v3, v1, v12

    .line 38
    .line 39
    iget-object v12, v0, Ltf6;->b:Lnw0;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-static {v12, v1, v2}, Lb;->c(Lnw0;J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_1
    cmp-long v1, v4, v8

    .line 49
    .line 50
    if-gez v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v4, v5}, Ltf6;->request(J)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    sub-long v1, v4, v10

    .line 59
    .line 60
    invoke-virtual {v12, v1, v2}, Lnw0;->h(J)B

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/16 v2, 0xd

    .line 65
    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    .line 68
    add-long v1, v4, v10

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ltf6;->request(J)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v12, v4, v5}, Lnw0;->h(J)B

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    invoke-static {v12, v4, v5}, Lb;->c(Lnw0;J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_2
    new-instance v13, Lnw0;

    .line 90
    .line 91
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-wide v0, v12, Lnw0;->b:J

    .line 95
    .line 96
    const-wide/16 v2, 0x20

    .line 97
    .line 98
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v16

    .line 102
    const-wide/16 v14, 0x0

    .line 103
    .line 104
    invoke-virtual/range {v12 .. v17}, Lnw0;->b(Lnw0;JJ)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Ljava/io/EOFException;

    .line 108
    .line 109
    iget-wide v1, v12, Lnw0;->b:J

    .line 110
    .line 111
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    iget-wide v3, v13, Lnw0;->b:J

    .line 116
    .line 117
    invoke-virtual {v13, v3, v4}, Lnw0;->o(J)Lhy0;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lhy0;->e()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v5, "\\n not found: limit="

    .line 128
    .line 129
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, " content="

    .line 136
    .line 137
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const/16 v1, 0x2026

    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_3
    const-string v0, "limit < 0: "

    .line 157
    .line 158
    invoke-static {v6, v7, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    return-object v0
.end method

.method public final H(Lnw0;J)J
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_3

    .line 9
    .line 10
    iget-boolean v3, p0, Ltf6;->c:Z

    .line 11
    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    iget-object v3, p0, Ltf6;->b:Lnw0;

    .line 15
    .line 16
    iget-wide v4, v3, Lnw0;->b:J

    .line 17
    .line 18
    cmp-long v4, v4, v0

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    return-wide v0

    .line 25
    :cond_0
    iget-object p0, p0, Ltf6;->a:Lij7;

    .line 26
    .line 27
    const-wide/16 v0, 0x2000

    .line 28
    .line 29
    invoke-interface {p0, v3, v0, v1}, Lij7;->H(Lnw0;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v4, -0x1

    .line 34
    .line 35
    cmp-long p0, v0, v4

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    return-wide v4

    .line 40
    :cond_1
    iget-wide v0, v3, Lnw0;->b:J

    .line 41
    .line 42
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide p2

    .line 46
    invoke-virtual {v3, p1, p2, p3}, Lnw0;->H(Lnw0;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    return-wide p0

    .line 51
    :cond_2
    const-string p0, "closed"

    .line 52
    .line 53
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-wide v0

    .line 57
    :cond_3
    const-string p0, "byteCount < 0: "

    .line 58
    .line 59
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-wide v0
.end method

.method public final M(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ltf6;->a:Lij7;

    .line 5
    .line 6
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lnw0;->B(Lij7;)J

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lnw0;->b:J

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, p1}, Lnw0;->u(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final T(Lhy0;)J
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ltf6;->c:Z

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Ltf6;->b:Lnw0;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lnw0;->m(Lhy0;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    const-wide/16 v5, -0x1

    .line 17
    .line 18
    cmp-long v7, v3, v5

    .line 19
    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    return-wide v3

    .line 23
    :cond_0
    iget-wide v3, v0, Lnw0;->b:J

    .line 24
    .line 25
    iget-object v7, p0, Ltf6;->a:Lij7;

    .line 26
    .line 27
    const-wide/16 v8, 0x2000

    .line 28
    .line 29
    invoke-interface {v7, v0, v8, v9}, Lij7;->H(Lnw0;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    cmp-long v0, v7, v5

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-wide v5

    .line 38
    :cond_1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p0, "closed"

    .line 44
    .line 45
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-wide v1
.end method

.method public final X()Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Ltf6;->E(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final a(BJJ)J
    .locals 8

    .line 1
    iget-boolean p2, p0, Ltf6;->c:Z

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    if-nez p2, :cond_4

    .line 6
    .line 7
    cmp-long p2, v0, p4

    .line 8
    .line 9
    if-gtz p2, :cond_3

    .line 10
    .line 11
    move-wide v4, v0

    .line 12
    :goto_0
    cmp-long p2, v4, p4

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    if-gez p2, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Ltf6;->b:Lnw0;

    .line 19
    .line 20
    move v3, p1

    .line 21
    move-wide v6, p4

    .line 22
    invoke-virtual/range {v2 .. v7}, Lnw0;->j(BJJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    cmp-long p3, p1, v0

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    return-wide p1

    .line 31
    :cond_0
    iget-wide p1, v2, Lnw0;->b:J

    .line 32
    .line 33
    cmp-long p3, p1, v6

    .line 34
    .line 35
    if-gez p3, :cond_2

    .line 36
    .line 37
    iget-object p3, p0, Ltf6;->a:Lij7;

    .line 38
    .line 39
    const-wide/16 p4, 0x2000

    .line 40
    .line 41
    invoke-interface {p3, v2, p4, p5}, Lij7;->H(Lnw0;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide p3

    .line 45
    cmp-long p3, p3, v0

    .line 46
    .line 47
    if-nez p3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    move p1, v3

    .line 55
    move-wide p4, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    return-wide v0

    .line 58
    :cond_3
    move-wide v6, p4

    .line 59
    const-string p0, "fromIndex=0 toIndex="

    .line 60
    .line 61
    invoke-static {v6, v7, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-wide v0

    .line 69
    :cond_4
    const-string p0, "closed"

    .line 70
    .line 71
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-wide v0
.end method

.method public final b()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ltf6;->j0(J)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lnw0;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Lk55;->A(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final c()Lnw0;
    .locals 0

    .line 1
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ltf6;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Ltf6;->a:Lij7;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 14
    .line 15
    invoke-virtual {p0}, Lnw0;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    iget-object p0, p0, Ltf6;->a:Lij7;

    .line 2
    .line 3
    invoke-interface {p0}, Lij7;->d()Lf48;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final g()J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ltf6;->j0(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Ltf6;->b:Lnw0;

    .line 9
    .line 10
    iget-wide v3, v0, Lnw0;->b:J

    .line 11
    .line 12
    cmp-long v3, v3, v1

    .line 13
    .line 14
    const/16 v6, 0x38

    .line 15
    .line 16
    const/16 v7, 0x8

    .line 17
    .line 18
    const-wide/16 v8, 0xff

    .line 19
    .line 20
    if-ltz v3, :cond_2

    .line 21
    .line 22
    iget-object v3, v0, Lnw0;->a:Lm67;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v10, v3, Lm67;->b:I

    .line 28
    .line 29
    iget v11, v3, Lm67;->c:I

    .line 30
    .line 31
    sub-int v12, v11, v10

    .line 32
    .line 33
    int-to-long v12, v12

    .line 34
    cmp-long v12, v12, v1

    .line 35
    .line 36
    const/16 v13, 0x20

    .line 37
    .line 38
    if-gez v12, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lnw0;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-long v1, v1

    .line 45
    const-wide v10, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v1, v10

    .line 51
    shl-long/2addr v1, v13

    .line 52
    invoke-virtual {v0}, Lnw0;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    int-to-long v12, v0

    .line 57
    and-long/2addr v10, v12

    .line 58
    or-long v0, v1, v10

    .line 59
    .line 60
    const/16 p0, 0x18

    .line 61
    .line 62
    const/16 v18, 0x28

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget-object v12, v3, Lm67;->a:[B

    .line 66
    .line 67
    add-int/lit8 v14, v10, 0x1

    .line 68
    .line 69
    aget-byte v15, v12, v10

    .line 70
    .line 71
    move-wide/from16 v16, v1

    .line 72
    .line 73
    int-to-long v1, v15

    .line 74
    and-long/2addr v1, v8

    .line 75
    shl-long/2addr v1, v6

    .line 76
    add-int/lit8 v15, v10, 0x2

    .line 77
    .line 78
    aget-byte v14, v12, v14

    .line 79
    .line 80
    const/16 p0, 0x18

    .line 81
    .line 82
    const/16 v18, 0x28

    .line 83
    .line 84
    int-to-long v4, v14

    .line 85
    and-long/2addr v4, v8

    .line 86
    const/16 v14, 0x30

    .line 87
    .line 88
    shl-long/2addr v4, v14

    .line 89
    or-long/2addr v1, v4

    .line 90
    add-int/lit8 v4, v10, 0x3

    .line 91
    .line 92
    aget-byte v5, v12, v15

    .line 93
    .line 94
    int-to-long v14, v5

    .line 95
    and-long/2addr v14, v8

    .line 96
    shl-long v14, v14, v18

    .line 97
    .line 98
    or-long/2addr v1, v14

    .line 99
    add-int/lit8 v5, v10, 0x4

    .line 100
    .line 101
    aget-byte v4, v12, v4

    .line 102
    .line 103
    int-to-long v14, v4

    .line 104
    and-long/2addr v14, v8

    .line 105
    shl-long v13, v14, v13

    .line 106
    .line 107
    or-long/2addr v1, v13

    .line 108
    add-int/lit8 v4, v10, 0x5

    .line 109
    .line 110
    aget-byte v5, v12, v5

    .line 111
    .line 112
    int-to-long v13, v5

    .line 113
    and-long/2addr v13, v8

    .line 114
    shl-long v13, v13, p0

    .line 115
    .line 116
    or-long/2addr v1, v13

    .line 117
    add-int/lit8 v5, v10, 0x6

    .line 118
    .line 119
    aget-byte v4, v12, v4

    .line 120
    .line 121
    int-to-long v13, v4

    .line 122
    and-long/2addr v13, v8

    .line 123
    const/16 v4, 0x10

    .line 124
    .line 125
    shl-long/2addr v13, v4

    .line 126
    or-long/2addr v1, v13

    .line 127
    add-int/lit8 v4, v10, 0x7

    .line 128
    .line 129
    aget-byte v5, v12, v5

    .line 130
    .line 131
    int-to-long v13, v5

    .line 132
    and-long/2addr v13, v8

    .line 133
    shl-long/2addr v13, v7

    .line 134
    or-long/2addr v1, v13

    .line 135
    add-int/2addr v10, v7

    .line 136
    aget-byte v4, v12, v4

    .line 137
    .line 138
    int-to-long v4, v4

    .line 139
    and-long/2addr v4, v8

    .line 140
    or-long/2addr v1, v4

    .line 141
    iget-wide v4, v0, Lnw0;->b:J

    .line 142
    .line 143
    sub-long v4, v4, v16

    .line 144
    .line 145
    iput-wide v4, v0, Lnw0;->b:J

    .line 146
    .line 147
    if-ne v10, v11, :cond_1

    .line 148
    .line 149
    invoke-virtual {v3}, Lm67;->a()Lm67;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iput-object v4, v0, Lnw0;->a:Lm67;

    .line 154
    .line 155
    invoke-static {v3}, Lo67;->a(Lm67;)V

    .line 156
    .line 157
    .line 158
    :goto_0
    move-wide v0, v1

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    iput v10, v3, Lm67;->b:I

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    const/16 p0, 0x18

    .line 164
    .line 165
    const/16 v18, 0x28

    .line 166
    .line 167
    invoke-static {}, Ld6;->d()V

    .line 168
    .line 169
    .line 170
    const-wide/16 v0, 0x0

    .line 171
    .line 172
    :goto_1
    const-wide/high16 v2, -0x100000000000000L

    .line 173
    .line 174
    and-long/2addr v2, v0

    .line 175
    ushr-long/2addr v2, v6

    .line 176
    const-wide/high16 v4, 0xff000000000000L

    .line 177
    .line 178
    and-long/2addr v4, v0

    .line 179
    ushr-long v4, v4, v18

    .line 180
    .line 181
    or-long/2addr v2, v4

    .line 182
    const-wide v4, 0xff0000000000L

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    and-long/2addr v4, v0

    .line 188
    ushr-long v4, v4, p0

    .line 189
    .line 190
    or-long/2addr v2, v4

    .line 191
    const-wide v4, 0xff00000000L

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    and-long/2addr v4, v0

    .line 197
    ushr-long/2addr v4, v7

    .line 198
    or-long/2addr v2, v4

    .line 199
    const-wide v4, 0xff000000L

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    and-long/2addr v4, v0

    .line 205
    shl-long/2addr v4, v7

    .line 206
    or-long/2addr v2, v4

    .line 207
    const-wide/32 v4, 0xff0000

    .line 208
    .line 209
    .line 210
    and-long/2addr v4, v0

    .line 211
    shl-long v4, v4, p0

    .line 212
    .line 213
    or-long/2addr v2, v4

    .line 214
    const-wide/32 v4, 0xff00

    .line 215
    .line 216
    .line 217
    and-long/2addr v4, v0

    .line 218
    shl-long v4, v4, v18

    .line 219
    .line 220
    or-long/2addr v2, v4

    .line 221
    and-long/2addr v0, v8

    .line 222
    shl-long/2addr v0, v6

    .line 223
    or-long/2addr v0, v2

    .line 224
    return-wide v0
.end method

.method public final h()S
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ltf6;->j0(J)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lnw0;->r()S

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ltf6;->c:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public final j(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ltf6;->j0(J)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 5
    .line 6
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lnw0;->u(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final j0(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ltf6;->request(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o(J)Lhy0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ltf6;->j0(J)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lnw0;->o(J)Lhy0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final o0()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ltf6;->j0(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    int-to-long v2, v1

    .line 10
    invoke-virtual {p0, v2, v3}, Ltf6;->request(J)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Ltf6;->b:Lnw0;

    .line 15
    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    int-to-long v4, v0

    .line 19
    invoke-virtual {v3, v4, v5}, Lnw0;->h(J)B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v4, 0x30

    .line 24
    .line 25
    if-lt v2, v4, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x39

    .line 28
    .line 29
    if-le v2, v4, :cond_2

    .line 30
    .line 31
    :cond_0
    const/16 v4, 0x61

    .line 32
    .line 33
    if-lt v2, v4, :cond_1

    .line 34
    .line 35
    const/16 v4, 0x66

    .line 36
    .line 37
    if-le v2, v4, :cond_2

    .line 38
    .line 39
    :cond_1
    const/16 v4, 0x41

    .line 40
    .line 41
    if-lt v2, v4, :cond_3

    .line 42
    .line 43
    const/16 v4, 0x46

    .line 44
    .line 45
    if-le v2, v4, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 54
    .line 55
    const/16 v0, 0x10

    .line 56
    .line 57
    invoke-static {v0}, Lly8;->j(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lnw0;->o0()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    return-wide v0
.end method

.method public final peek()Ltf6;
    .locals 1

    .line 1
    new-instance v0, Lsy5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lsy5;-><init>(Lzw0;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ltf6;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ltf6;-><init>(Lij7;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final q0()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lsf6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lsf6;-><init>(Ltf6;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ltf6;->b:Lnw0;

    .line 5
    .line 6
    iget-wide v1, v0, Lnw0;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Ltf6;->a:Lij7;

    .line 15
    .line 16
    const-wide/16 v1, 0x2000

    .line 17
    .line 18
    invoke-interface {p0, v0, v1, v2}, Lij7;->H(Lnw0;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, -0x1

    .line 23
    .line 24
    cmp-long p0, v1, v3

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, -0x1

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Lnw0;->read(Ljava/nio/ByteBuffer;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final readByte()B
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ltf6;->j0(J)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lnw0;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final readFully([B)V
    .locals 6

    .line 1
    iget-object v0, p0, Ltf6;->b:Lnw0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    array-length v1, p1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-virtual {p0, v1, v2}, Ltf6;->j0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lnw0;->readFully([B)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-wide v2, v0, Lnw0;->b:J

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v4, v2, v4

    .line 22
    .line 23
    if-lez v4, :cond_1

    .line 24
    .line 25
    long-to-int v2, v2

    .line 26
    invoke-virtual {v0, p1, v1, v2}, Lnw0;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, -0x1

    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    add-int/2addr v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Ld6;->n()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    throw p0
.end method

.method public final readInt()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ltf6;->j0(J)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lnw0;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final readShort()S
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ltf6;->j0(J)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lnw0;->readShort()S

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final request(J)Z
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Ltf6;->c:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ltf6;->b:Lnw0;

    .line 13
    .line 14
    iget-wide v2, v0, Lnw0;->b:J

    .line 15
    .line 16
    cmp-long v2, v2, p1

    .line 17
    .line 18
    if-gez v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Ltf6;->a:Lij7;

    .line 21
    .line 22
    const-wide/16 v3, 0x2000

    .line 23
    .line 24
    invoke-interface {v2, v0, v3, v4}, Lij7;->H(Lnw0;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide/16 v4, -0x1

    .line 29
    .line 30
    cmp-long v0, v2, v4

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    const-string p0, "closed"

    .line 38
    .line 39
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    const-string p0, "byteCount < 0: "

    .line 44
    .line 45
    invoke-static {p1, p2, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return v1
.end method

.method public final skip(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ltf6;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    :goto_0
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-lez v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Ltf6;->b:Lnw0;

    .line 12
    .line 13
    iget-wide v3, v2, Lnw0;->b:J

    .line 14
    .line 15
    cmp-long v0, v3, v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Ltf6;->a:Lij7;

    .line 20
    .line 21
    const-wide/16 v3, 0x2000

    .line 22
    .line 23
    invoke-interface {v0, v2, v3, v4}, Lij7;->H(Lnw0;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v3, -0x1

    .line 28
    .line 29
    cmp-long v0, v0, v3

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_1
    iget-wide v0, v2, Lnw0;->b:J

    .line 39
    .line 40
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {v2, v0, v1}, Lnw0;->skip(J)V

    .line 45
    .line 46
    .line 47
    sub-long/2addr p1, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void

    .line 50
    :cond_3
    const-string p0, "closed"

    .line 51
    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final t()[B
    .locals 2

    .line 1
    iget-object v0, p0, Ltf6;->a:Lij7;

    .line 2
    .line 3
    iget-object p0, p0, Ltf6;->b:Lnw0;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lnw0;->B(Lij7;)J

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lnw0;->b:J

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lnw0;->q(J)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Ltf6;->a:Lij7;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final x()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Ltf6;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Ltf6;->b:Lnw0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lnw0;->x()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Ltf6;->a:Lij7;

    .line 15
    .line 16
    const-wide/16 v2, 0x2000

    .line 17
    .line 18
    invoke-interface {p0, v0, v2, v3}, Lij7;->H(Lnw0;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/16 v4, -0x1

    .line 23
    .line 24
    cmp-long p0, v2, v4

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    return v1

    .line 31
    :cond_1
    const-string p0, "closed"

    .line 32
    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1
.end method

.method public final y(Lnu5;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ltf6;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Ltf6;->b:Lnw0;

    .line 10
    .line 11
    invoke-static {v1, p1, v0}, Lb;->d(Lnw0;Lnu5;Z)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, -0x2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    if-eq v0, v3, :cond_2

    .line 20
    .line 21
    iget-object p0, p1, Lnu5;->a:[Lhy0;

    .line 22
    .line 23
    aget-object p0, p0, v0

    .line 24
    .line 25
    invoke-virtual {p0}, Lhy0;->d()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-long p0, p0

    .line 30
    invoke-virtual {v1, p0, p1}, Lnw0;->skip(J)V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    iget-object v0, p0, Ltf6;->a:Lij7;

    .line 35
    .line 36
    const-wide/16 v4, 0x2000

    .line 37
    .line 38
    invoke-interface {v0, v1, v4, v5}, Lij7;->H(Lnw0;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v4, -0x1

    .line 43
    .line 44
    cmp-long v0, v0, v4

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    :cond_2
    return v3

    .line 49
    :cond_3
    const-string p0, "closed"

    .line 50
    .line 51
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return p0
.end method
