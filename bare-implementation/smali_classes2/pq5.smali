.class public final Lpq5;
.super Lxh2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lkq5;

.field public final d:Lst5;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkq5;Lst5;Lzv1;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3}, Lxh2;-><init>(Lzv1;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lpq5;->c:Lkq5;

    .line 8
    .line 9
    iput-object p2, p0, Lpq5;->d:Lst5;

    .line 10
    .line 11
    const-string p1, "ODeleteSession"

    .line 12
    .line 13
    iput-object p1, p0, Lpq5;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lpq5;->e(Ljava/util/List;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpq5;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/util/List;Z)Z
    .locals 12

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lpq5;->c:Lkq5;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkq5;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object v0, p0, Lpq5;->d:Lst5;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lst5;->b(Ljava/util/ArrayList;)Lnt5;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, v0, Lnt5;->a:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-static {v2, p1}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lnt5;->b:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    move-object v5, v0

    .line 67
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 68
    .line 69
    const/16 v7, 0x8

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    iget-object v3, p0, Lpq5;->e:Ljava/lang/String;

    .line 73
    .line 74
    const-string v4, "deleteFilesByIds: Error during batch deletion"

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    instance-of v0, v5, Lmt5;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    check-cast v5, Lmt5;

    .line 85
    .line 86
    invoke-static {v5}, Ll73;->E(Lmt5;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    const/4 v10, 0x4

    .line 91
    const/4 v11, 0x0

    .line 92
    iget-object v7, p0, Lpq5;->e:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    move-object v6, v2

    .line 96
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v5, Lmt5;->c:Ljava/lang/Long;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v0, 0x0

    .line 103
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    :goto_2
    const/4 v2, 0x0

    .line 107
    if-eqz p2, :cond_5

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-nez p2, :cond_5

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    const-wide/16 v0, 0x1388

    .line 123
    .line 124
    :goto_3
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .line 126
    .line 127
    :catch_1
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    const-string v0, "Retrying deletion for "

    .line 134
    .line 135
    const-string v1, " file ids"

    .line 136
    .line 137
    invoke-static {p2, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/4 v7, 0x4

    .line 142
    const/4 v8, 0x0

    .line 143
    iget-object v4, p0, Lpq5;->e:Ljava/lang/String;

    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1, v2}, Lpq5;->e(Ljava/util/List;Z)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    return p0

    .line 154
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-eqz p0, :cond_6

    .line 159
    .line 160
    :goto_4
    const/4 p0, 0x1

    .line 161
    return p0

    .line 162
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    const-string p2, "/"

    .line 171
    .line 172
    const-string v0, " OneDrive files"

    .line 173
    .line 174
    const-string v1, "Failed deleting "

    .line 175
    .line 176
    invoke-static {v1, p0, p2, v0, p1}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return v2
.end method
