.class public final Lcc4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lij7;


# instance fields
.field public final a:Ltf6;

.field public final b:Ljava/util/zip/Inflater;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ltf6;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcc4;->a:Ltf6;

    .line 5
    .line 6
    iput-object p2, p0, Lcc4;->b:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final H(Lnw0;J)J
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_b

    .line 9
    .line 10
    iget-boolean v3, p0, Lcc4;->d:Z

    .line 11
    .line 12
    if-nez v3, :cond_a

    .line 13
    .line 14
    iget-object v3, p0, Lcc4;->a:Ltf6;

    .line 15
    .line 16
    iget-object v4, p0, Lcc4;->b:Ljava/util/zip/Inflater;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    const/4 v2, 0x1

    .line 22
    :try_start_0
    invoke-virtual {p1, v2}, Lnw0;->A(I)Lm67;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v5, v2, Lm67;->c:I

    .line 27
    .line 28
    rsub-int v5, v5, 0x2000

    .line 29
    .line 30
    int-to-long v5, v5

    .line 31
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    long-to-int v5, v5

    .line 36
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v3}, Ltf6;->x()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v6, v3, Ltf6;->b:Lnw0;

    .line 51
    .line 52
    iget-object v6, v6, Lnw0;->a:Lm67;

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget v7, v6, Lm67;->c:I

    .line 58
    .line 59
    iget v8, v6, Lm67;->b:I

    .line 60
    .line 61
    sub-int/2addr v7, v8

    .line 62
    iput v7, p0, Lcc4;->c:I

    .line 63
    .line 64
    iget-object v6, v6, Lm67;->a:[B

    .line 65
    .line 66
    invoke-virtual {v4, v6, v8, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object v6, v2, Lm67;->a:[B

    .line 70
    .line 71
    iget v7, v2, Lm67;->c:I

    .line 72
    .line 73
    invoke-virtual {v4, v6, v7, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iget v6, p0, Lcc4;->c:I

    .line 78
    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    sub-int/2addr v6, v7

    .line 87
    iget v7, p0, Lcc4;->c:I

    .line 88
    .line 89
    sub-int/2addr v7, v6

    .line 90
    iput v7, p0, Lcc4;->c:I

    .line 91
    .line 92
    int-to-long v6, v6

    .line 93
    invoke-virtual {v3, v6, v7}, Ltf6;->skip(J)V

    .line 94
    .line 95
    .line 96
    :goto_2
    if-lez v5, :cond_4

    .line 97
    .line 98
    iget v6, v2, Lm67;->c:I

    .line 99
    .line 100
    add-int/2addr v6, v5

    .line 101
    iput v6, v2, Lm67;->c:I

    .line 102
    .line 103
    iget-wide v6, p1, Lnw0;->b:J

    .line 104
    .line 105
    int-to-long v8, v5

    .line 106
    add-long/2addr v6, v8

    .line 107
    iput-wide v6, p1, Lnw0;->b:J

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    iget v5, v2, Lm67;->b:I

    .line 111
    .line 112
    iget v6, v2, Lm67;->c:I

    .line 113
    .line 114
    if-ne v5, v6, :cond_5

    .line 115
    .line 116
    invoke-virtual {v2}, Lm67;->a()Lm67;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iput-object v5, p1, Lnw0;->a:Lm67;

    .line 121
    .line 122
    invoke-static {v2}, Lo67;->a(Lm67;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    :cond_5
    :goto_3
    move-wide v8, v0

    .line 126
    :goto_4
    cmp-long v0, v8, v0

    .line 127
    .line 128
    if-lez v0, :cond_6

    .line 129
    .line 130
    return-wide v8

    .line 131
    :cond_6
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_9

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_7
    invoke-virtual {v3}, Ltf6;->x()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_8

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_8
    new-instance p0, Ljava/io/EOFException;

    .line 153
    .line 154
    const-string p1, "source exhausted prematurely"

    .line 155
    .line 156
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_9
    :goto_5
    const-wide/16 p0, -0x1

    .line 161
    .line 162
    return-wide p0

    .line 163
    :catch_0
    move-exception p0

    .line 164
    new-instance p1, Ljava/io/IOException;

    .line 165
    .line 166
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_a
    const-string p0, "closed"

    .line 171
    .line 172
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-wide v0

    .line 176
    :cond_b
    const-string p0, "byteCount < 0: "

    .line 177
    .line 178
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    return-wide v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcc4;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcc4;->b:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcc4;->d:Z

    .line 13
    .line 14
    iget-object p0, p0, Lcc4;->a:Ltf6;

    .line 15
    .line 16
    invoke-virtual {p0}, Ltf6;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc4;->a:Ltf6;

    .line 2
    .line 3
    iget-object p0, p0, Ltf6;->a:Lij7;

    .line 4
    .line 5
    invoke-interface {p0}, Lij7;->d()Lf48;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
