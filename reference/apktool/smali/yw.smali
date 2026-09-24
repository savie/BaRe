.class public final Lyw;
.super Lgx;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lq63;

.field public final b:Lq63;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J


# direct methods
.method public constructor <init>(Lq63;Lq63;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lyw;->a:Lq63;

    .line 11
    .line 12
    iput-object p2, p0, Lyw;->b:Lq63;

    .line 13
    .line 14
    invoke-virtual {p2}, Lq63;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {p2}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :goto_0
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, v0, Li40;->b:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    const/16 v4, 0x2e

    .line 59
    .line 60
    invoke-static {v3, v4}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v4, "compressed"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lyw;->c:Z

    .line 74
    .line 75
    invoke-virtual {p1}, Lq63;->j()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move-object p1, v1

    .line 83
    :goto_2
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Lq63;->A()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move-object p1, v1

    .line 95
    :goto_3
    invoke-static {p1}, Lio4;->h(Ljava/lang/Long;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    iput-wide v3, p0, Lyw;->d:J

    .line 100
    .line 101
    invoke-virtual {p2}, Lq63;->j()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    move-object p2, v1

    .line 109
    :goto_4
    if-eqz p2, :cond_7

    .line 110
    .line 111
    invoke-virtual {p2}, Lq63;->A()J

    .line 112
    .line 113
    .line 114
    move-result-wide p1

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_5

    .line 120
    :cond_7
    move-object p1, v1

    .line 121
    :goto_5
    invoke-static {p1}, Lio4;->h(Ljava/lang/Long;)J

    .line 122
    .line 123
    .line 124
    move-result-wide p1

    .line 125
    iput-wide v3, p0, Lyw;->e:J

    .line 126
    .line 127
    iput-wide p1, p0, Lyw;->f:J

    .line 128
    .line 129
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    move-object v1, v0

    .line 136
    :cond_8
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    iput-wide v0, p0, Lyw;->g:J

    .line 141
    .line 142
    iput-wide p1, p0, Lyw;->h:J

    .line 143
    .line 144
    add-long/2addr v3, p1

    .line 145
    add-long v5, v3, p1

    .line 146
    .line 147
    long-to-float v2, v5

    .line 148
    const/high16 v5, 0x41200000    # 10.0f

    .line 149
    .line 150
    div-float/2addr v2, v5

    .line 151
    float-to-double v5, v2

    .line 152
    invoke-static {v5, v6}, Ltu0;->w(D)J

    .line 153
    .line 154
    .line 155
    move-result-wide v5

    .line 156
    iput-wide v5, p0, Lyw;->i:J

    .line 157
    .line 158
    iput-wide v3, p0, Lyw;->j:J

    .line 159
    .line 160
    add-long/2addr v3, v0

    .line 161
    add-long/2addr v3, p1

    .line 162
    add-long/2addr v3, v5

    .line 163
    iput-wide v3, p0, Lyw;->k:J

    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lyw;->k:J

    .line 2
    .line 3
    return-wide v0
.end method
