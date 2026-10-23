.class public final Ldx;
.super Lgx;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lq63;

.field public final b:Li40;

.field public final c:Z

.field public final d:Z

.field public final e:J

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Lq63;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ldx;->a:Lq63;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ldx;->b:Li40;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v3, v0, Li40;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    const/16 v5, 0x2e

    .line 48
    .line 49
    invoke-static {v4, v5}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "compressed"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    move v3, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    move v3, v2

    .line 64
    :goto_1
    iput-boolean v3, p0, Ldx;->c:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget v0, v0, Li40;->a:I

    .line 69
    .line 70
    const/4 v4, 0x6

    .line 71
    if-ne v0, v4, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v1, v2

    .line 75
    :goto_2
    iput-boolean v1, p0, Ldx;->d:Z

    .line 76
    .line 77
    invoke-static {p1, v1}, Lvm4;->b(Lq63;Z)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lel1;->o1(Ljava/util/Collection;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-wide/16 v6, 0x0

    .line 94
    .line 95
    cmp-long v2, v4, v6

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    if-lez v2, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    move-object v0, v4

    .line 102
    :goto_3
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v8

    .line 108
    goto :goto_4

    .line 109
    :cond_5
    invoke-virtual {p1}, Lq63;->A()J

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    :goto_4
    iput-wide v8, p0, Ldx;->e:J

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    sget-object v0, Lex;->UNTAR:Lex;

    .line 118
    .line 119
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    sget-object v0, Lex;->UNPACK:Lex;

    .line 125
    .line 126
    sget-object v1, Lex;->DECOMPRESS:Lex;

    .line 127
    .line 128
    if-eqz v3, :cond_7

    .line 129
    .line 130
    move-object v4, v1

    .line 131
    :cond_7
    sget-object v1, Lex;->UNTAR:Lex;

    .line 132
    .line 133
    filled-new-array {v0, v4, v1}, [Lex;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_5
    iput-object v0, p0, Ldx;->f:Ljava/util/List;

    .line 142
    .line 143
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Ldx;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 149
    .line 150
    invoke-virtual {p1}, Lq63;->A()J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    iput-wide v1, p0, Ldx;->h:J

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lex;

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Ldx;->c(Lex;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    add-long/2addr v6, v0

    .line 177
    goto :goto_6

    .line 178
    :cond_8
    iput-wide v6, p0, Ldx;->i:J

    .line 179
    .line 180
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ldx;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()J
    .locals 5

    .line 1
    iget-object v0, p0, Ldx;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lex;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ldx;->c(Lex;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    add-long/2addr v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-wide v1
.end method

.method public final c(Lex;)J
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ldx;->d:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ldx;->f:Ljava/util/List;

    .line 9
    .line 10
    iget-wide v1, p0, Ldx;->e:J

    .line 11
    .line 12
    invoke-static {v0, p1, v1, v2}, Lvm4;->a(Ljava/util/List;Lex;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0

    .line 17
    :cond_0
    iget-wide v0, p0, Ldx;->h:J

    .line 18
    .line 19
    long-to-float p0, v0

    .line 20
    invoke-virtual {p1}, Lex;->getTaskProgressRatio()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    mul-float/2addr p1, p0

    .line 25
    float-to-double p0, p1

    .line 26
    invoke-static {p0, p1}, Ltu0;->w(D)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method

.method public final d(Lex;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldx;->f:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Ldx;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
