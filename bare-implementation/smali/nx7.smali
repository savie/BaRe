.class public final Lnx7;
.super Ljava/util/TimerTask;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public final synthetic e:Lcw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq63;Lcw;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lnx7;->e:Lcw;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {p2}, Lq63;->q()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lnx7;->a:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "toybox du -sk "

    .line 22
    .line 23
    invoke-static {p2, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lnx7;->b:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lmp6;->a:Lmp6;

    .line 6
    .line 7
    invoke-static {}, Lmp6;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lnx7;->b:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    filled-new-array {v3}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lqe7;->c([Ljava/lang/String;)Lne7;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v2, v2, Lne7;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    filled-new-array {v3}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lmp6;->l([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    move-object v5, v3

    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    iget-object v6, p0, Lnx7;->a:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-static {v5, v6, v7}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/4 v6, 0x1

    .line 69
    if-ne v5, v6, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v3, v4

    .line 73
    :goto_1
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    const-string v2, "\t"

    .line 78
    .line 79
    filled-new-array {v2}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v5, 0x6

    .line 84
    invoke-static {v3, v2, v5}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move-object v2, v4

    .line 106
    :goto_2
    if-eqz v2, :cond_4

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :cond_4
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    const-wide/16 v4, 0x400

    .line 121
    .line 122
    mul-long/2addr v2, v4

    .line 123
    iget-wide v4, p0, Lnx7;->c:J

    .line 124
    .line 125
    sub-long v4, v2, v4

    .line 126
    .line 127
    iget-wide v6, p0, Lnx7;->d:J

    .line 128
    .line 129
    sub-long v6, v0, v6

    .line 130
    .line 131
    long-to-float v6, v6

    .line 132
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 133
    .line 134
    div-float/2addr v6, v7

    .line 135
    long-to-float v4, v4

    .line 136
    div-float/2addr v4, v6

    .line 137
    float-to-long v4, v4

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iget-object v5, p0, Lnx7;->e:Lcw;

    .line 147
    .line 148
    invoke-virtual {v5, v6, v4}, Lcw;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    iput-wide v2, p0, Lnx7;->c:J

    .line 152
    .line 153
    iput-wide v0, p0, Lnx7;->d:J

    .line 154
    .line 155
    return-void
.end method
