.class public final Lqk0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lhz;

.field public final b:Lq63;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ltl;

.field public final f:Lgj;

.field public final g:Z

.field public final h:Lji;

.field public final i:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

.field public final j:Lmk0;

.field public final k:Lgv7;

.field public final l:Lgv7;

.field public final m:Lgv7;

.field public final n:Lgv7;

.field public final o:Lgv7;

.field public final p:Lgv7;

.field public final q:Lgv7;

.field public final r:Lgv7;

.field public final s:Lgv7;

.field public final t:Lgv7;

.field public final u:Lgv7;

.field public final v:Lgv7;

.field public final w:Lgv7;

.field public final x:Lgv7;


# direct methods
.method public constructor <init>(Lhz;Lq63;ZLjava/lang/String;Ltl;Lgj;Z)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lqk0;->a:Lhz;

    .line 8
    .line 9
    iput-object p2, p0, Lqk0;->b:Lq63;

    .line 10
    .line 11
    iput-boolean p3, p0, Lqk0;->c:Z

    .line 12
    .line 13
    iput-object p4, p0, Lqk0;->d:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lqk0;->e:Ltl;

    .line 16
    .line 17
    iput-object p6, p0, Lqk0;->f:Lgj;

    .line 18
    .line 19
    iput-boolean p7, p0, Lqk0;->g:Z

    .line 20
    .line 21
    iget-object p2, p1, Lhz;->b:Lji;

    .line 22
    .line 23
    iput-object p2, p0, Lqk0;->h:Lji;

    .line 24
    .line 25
    iget-object p2, p1, Lhz;->i:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 26
    .line 27
    invoke-static {p2}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lqk0;->i:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 32
    .line 33
    new-instance p2, Lmk0;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lmk0;-><init>(Lhz;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lqk0;->j:Lmk0;

    .line 39
    .line 40
    new-instance p1, Lpk0;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-direct {p1, p0, p2}, Lpk0;-><init>(Lqk0;I)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lgv7;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lqk0;->k:Lgv7;

    .line 52
    .line 53
    new-instance p1, Llf;

    .line 54
    .line 55
    const/16 p2, 0x8

    .line 56
    .line 57
    invoke-direct {p1, p0, p2}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    new-instance p3, Lgv7;

    .line 61
    .line 62
    invoke-direct {p3, p1}, Lgv7;-><init>(Lbt3;)V

    .line 63
    .line 64
    .line 65
    iput-object p3, p0, Lqk0;->l:Lgv7;

    .line 66
    .line 67
    new-instance p1, Lej;

    .line 68
    .line 69
    invoke-direct {p1, p0, p2}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    new-instance p3, Lgv7;

    .line 73
    .line 74
    invoke-direct {p3, p1}, Lgv7;-><init>(Lbt3;)V

    .line 75
    .line 76
    .line 77
    iput-object p3, p0, Lqk0;->m:Lgv7;

    .line 78
    .line 79
    new-instance p1, Lfj;

    .line 80
    .line 81
    const/16 p3, 0xb

    .line 82
    .line 83
    invoke-direct {p1, p0, p3}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    new-instance p4, Lgv7;

    .line 87
    .line 88
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 89
    .line 90
    .line 91
    iput-object p4, p0, Lqk0;->n:Lgv7;

    .line 92
    .line 93
    new-instance p1, Lgj;

    .line 94
    .line 95
    invoke-direct {p1, p0, p3}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    new-instance p4, Lgv7;

    .line 99
    .line 100
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 101
    .line 102
    .line 103
    iput-object p4, p0, Lqk0;->o:Lgv7;

    .line 104
    .line 105
    new-instance p1, Lpk0;

    .line 106
    .line 107
    const/4 p4, 0x1

    .line 108
    invoke-direct {p1, p0, p4}, Lpk0;-><init>(Lqk0;I)V

    .line 109
    .line 110
    .line 111
    new-instance p4, Lgv7;

    .line 112
    .line 113
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 114
    .line 115
    .line 116
    iput-object p4, p0, Lqk0;->p:Lgv7;

    .line 117
    .line 118
    new-instance p1, Lbk;

    .line 119
    .line 120
    const/4 p4, 0x7

    .line 121
    invoke-direct {p1, p0, p4}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    new-instance p4, Lgv7;

    .line 125
    .line 126
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 127
    .line 128
    .line 129
    iput-object p4, p0, Lqk0;->q:Lgv7;

    .line 130
    .line 131
    new-instance p1, Lck;

    .line 132
    .line 133
    const/16 p4, 0x9

    .line 134
    .line 135
    invoke-direct {p1, p0, p4}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    new-instance p4, Lgv7;

    .line 139
    .line 140
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 141
    .line 142
    .line 143
    iput-object p4, p0, Lqk0;->r:Lgv7;

    .line 144
    .line 145
    new-instance p1, Ldk;

    .line 146
    .line 147
    invoke-direct {p1, p0, p3}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    new-instance p3, Lgv7;

    .line 151
    .line 152
    invoke-direct {p3, p1}, Lgv7;-><init>(Lbt3;)V

    .line 153
    .line 154
    .line 155
    iput-object p3, p0, Lqk0;->s:Lgv7;

    .line 156
    .line 157
    new-instance p1, Lek;

    .line 158
    .line 159
    const/16 p3, 0xa

    .line 160
    .line 161
    invoke-direct {p1, p0, p3}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    new-instance p4, Lgv7;

    .line 165
    .line 166
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 167
    .line 168
    .line 169
    iput-object p4, p0, Lqk0;->t:Lgv7;

    .line 170
    .line 171
    new-instance p1, Lah;

    .line 172
    .line 173
    invoke-direct {p1, p0, p3}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 174
    .line 175
    .line 176
    new-instance p4, Lgv7;

    .line 177
    .line 178
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 179
    .line 180
    .line 181
    iput-object p4, p0, Lqk0;->u:Lgv7;

    .line 182
    .line 183
    new-instance p1, Lbh;

    .line 184
    .line 185
    invoke-direct {p1, p0, p3}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    new-instance p4, Lgv7;

    .line 189
    .line 190
    invoke-direct {p4, p1}, Lgv7;-><init>(Lbt3;)V

    .line 191
    .line 192
    .line 193
    iput-object p4, p0, Lqk0;->v:Lgv7;

    .line 194
    .line 195
    new-instance p1, Ld76;

    .line 196
    .line 197
    invoke-direct {p1, p0, p2}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    new-instance p2, Lgv7;

    .line 201
    .line 202
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 203
    .line 204
    .line 205
    iput-object p2, p0, Lqk0;->w:Lgv7;

    .line 206
    .line 207
    new-instance p1, Lkf;

    .line 208
    .line 209
    invoke-direct {p1, p0, p3}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    new-instance p2, Lgv7;

    .line 213
    .line 214
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 215
    .line 216
    .line 217
    iput-object p2, p0, Lqk0;->x:Lgv7;

    .line 218
    .line 219
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqk0;->a:Lhz;

    .line 2
    .line 3
    iget-object v0, v0, Lhz;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0}, Lwx3;->p(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lqk0;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lqk0;->l:Lgv7;

    .line 18
    .line 19
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lqk0;->p:Lgv7;

    .line 32
    .line 33
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqk0;->a:Lhz;

    .line 2
    .line 3
    iget-object v0, v0, Lhz;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0}, Lwx3;->q(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lqk0;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lqk0;->n:Lgv7;

    .line 18
    .line 19
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lqk0;->r:Lgv7;

    .line 32
    .line 33
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqk0;->a:Lhz;

    .line 2
    .line 3
    iget-object v0, v0, Lhz;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0}, Lwx3;->r(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lqk0;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lqk0;->m:Lgv7;

    .line 18
    .line 19
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lqk0;->q:Lgv7;

    .line 32
    .line 33
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqk0;->a:Lhz;

    .line 2
    .line 3
    iget-object v0, v0, Lhz;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0}, Lwx3;->s(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lqk0;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lqk0;->o:Lgv7;

    .line 18
    .line 19
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lqk0;->s:Lgv7;

    .line 32
    .line 33
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final e()Lok0;
    .locals 11

    .line 1
    iget-object v0, p0, Lqk0;->a:Lhz;

    .line 2
    .line 3
    iget-object v1, v0, Lhz;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v1}, Lji8;->t(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v3, Lhk;

    .line 10
    .line 11
    iget-object v2, p0, Lqk0;->k:Lgv7;

    .line 12
    .line 13
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/util/List;

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-static {v4, v5, v2}, Lfk;->d(JLjava/util/List;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v4, p0, Lqk0;->h:Lji;

    .line 32
    .line 33
    invoke-virtual {v4}, Lji;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-direct {v3, v2, v5, v1}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lok0;

    .line 41
    .line 42
    iget-object v0, v0, Lhz;->c:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {v0}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0}, Lqk0;->a()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {p0}, Lqk0;->c()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {p0}, Lqk0;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {p0}, Lqk0;->d()Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    sget-object p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->Companion:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;

    .line 65
    .line 66
    invoke-virtual {v3}, Lhk;->l()J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    invoke-virtual {p0, v4, v9, v10}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;->from(Lji;J)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const/4 v10, 0x0

    .line 75
    move v4, v0

    .line 76
    invoke-direct/range {v2 .. v10}, Lok0;-><init>(Lhk;ZZZZZLorg/swiftapps/swiftbackup/model/app/LocalMetadata;Z)V

    .line 77
    .line 78
    .line 79
    return-object v2
.end method

.method public final f()Ltu0;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lqk0;->a:Lhz;

    .line 4
    .line 5
    iget-object v2, v1, Lhz;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v1, v1, Lhz;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v1}, Lji8;->t(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_7

    .line 21
    .line 22
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_7

    .line 27
    .line 28
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, v4, :cond_7

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_7

    .line 40
    .line 41
    iget-object v3, v3, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 42
    .line 43
    if-eqz v3, :cond_7

    .line 44
    .line 45
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v3, v4, :cond_7

    .line 50
    .line 51
    :goto_0
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 52
    .line 53
    const/4 v9, 0x4

    .line 54
    const/4 v10, 0x0

    .line 55
    const-string v6, "BackupPlan"

    .line 56
    .line 57
    const-string v7, "Latest backup is protected. New backup will be created only if there is any change."

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lqk0;->i()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0}, Lqk0;->e()Lok0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :cond_1
    invoke-static {v2}, Lwx3;->n(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    invoke-virtual {v0}, Lqk0;->j()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    new-instance v0, Lnk0;

    .line 93
    .line 94
    const-string v1, "App is blacklisted with NoData mode."

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lnk0;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_2
    invoke-virtual {v0}, Lqk0;->a()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Lqk0;->k()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0}, Lqk0;->e()Lok0;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :cond_3
    invoke-virtual {v0}, Lqk0;->c()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-virtual {v0}, Lqk0;->m()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-virtual {v0}, Lqk0;->e()Lok0;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0

    .line 134
    :cond_4
    invoke-virtual {v0}, Lqk0;->b()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_5

    .line 139
    .line 140
    invoke-virtual {v0}, Lqk0;->l()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    invoke-virtual {v0}, Lqk0;->e()Lok0;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    :cond_5
    invoke-virtual {v0}, Lqk0;->d()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_6

    .line 156
    .line 157
    invoke-virtual {v0}, Lqk0;->o()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {v0}, Lqk0;->e()Lok0;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    return-object v0

    .line 168
    :cond_6
    new-instance v0, Lnk0;

    .line 169
    .line 170
    const-string v1, "No change in APK or any selected Data parts"

    .line 171
    .line 172
    invoke-direct {v0, v1}, Lnk0;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_7
    invoke-static {v1}, Lji8;->t(Ljava/util/Collection;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    iget-object v3, v0, Lqk0;->k:Lgv7;

    .line 181
    .line 182
    iget-object v5, v0, Lqk0;->h:Lji;

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    const/4 v7, 0x0

    .line 186
    if-eqz v1, :cond_e

    .line 187
    .line 188
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_8

    .line 193
    .line 194
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    :cond_8
    if-eqz v6, :cond_a

    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_9

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_9
    move v1, v7

    .line 208
    goto :goto_2

    .line 209
    :cond_a
    :goto_1
    move v1, v4

    .line 210
    :goto_2
    xor-int/lit8 v6, v1, 0x1

    .line 211
    .line 212
    if-nez v1, :cond_b

    .line 213
    .line 214
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 215
    .line 216
    const/4 v12, 0x4

    .line 217
    const/4 v13, 0x0

    .line 218
    const-string v9, "BackupPlan"

    .line 219
    .line 220
    const-string v10, "Will compare and update the Cloud backup if needed"

    .line 221
    .line 222
    const/4 v11, 0x0

    .line 223
    invoke-static/range {v8 .. v13}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_b
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_c

    .line 231
    .line 232
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-nez v1, :cond_d

    .line 237
    .line 238
    :cond_c
    sget-object v1, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 239
    .line 240
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    check-cast v1, Ljava/util/List;

    .line 245
    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 251
    .line 252
    .line 253
    move-result-wide v8

    .line 254
    invoke-static {v8, v9, v1}, Lfk;->d(JLjava/util/List;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :cond_d
    new-instance v3, Lhk;

    .line 259
    .line 260
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    invoke-direct {v3, v1, v8, v4}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    :goto_3
    move-object v9, v3

    .line 268
    move/from16 v16, v6

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_e
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_f

    .line 276
    .line 277
    iget-object v1, v1, Lgm;->a:Lhk;

    .line 278
    .line 279
    if-eqz v1, :cond_f

    .line 280
    .line 281
    iget-object v6, v1, Lhk;->a:Ljava/lang/String;

    .line 282
    .line 283
    :cond_f
    if-eqz v6, :cond_11

    .line 284
    .line 285
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_10

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_10
    move v1, v7

    .line 293
    goto :goto_5

    .line 294
    :cond_11
    :goto_4
    move v1, v4

    .line 295
    :goto_5
    xor-int/lit8 v6, v1, 0x1

    .line 296
    .line 297
    if-nez v1, :cond_12

    .line 298
    .line 299
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 300
    .line 301
    const/4 v12, 0x4

    .line 302
    const/4 v13, 0x0

    .line 303
    const-string v9, "BackupPlan"

    .line 304
    .line 305
    const-string v10, "Will compare and update the Local backup if needed"

    .line 306
    .line 307
    const/4 v11, 0x0

    .line 308
    invoke-static/range {v8 .. v13}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :cond_12
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    if-eqz v1, :cond_14

    .line 316
    .line 317
    iget-object v1, v1, Lgm;->a:Lhk;

    .line 318
    .line 319
    if-nez v1, :cond_13

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_13
    :goto_6
    move-object v3, v1

    .line 323
    goto :goto_3

    .line 324
    :cond_14
    :goto_7
    new-instance v1, Lhk;

    .line 325
    .line 326
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Ljava/util/List;

    .line 331
    .line 332
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 337
    .line 338
    .line 339
    move-result-wide v8

    .line 340
    invoke-static {v8, v9, v3}, Lfk;->d(JLjava/util/List;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    invoke-direct {v1, v3, v8, v7}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :goto_8
    new-instance v8, Lok0;

    .line 353
    .line 354
    invoke-static {v2}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_15

    .line 359
    .line 360
    invoke-virtual {v0}, Lqk0;->i()Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_15

    .line 365
    .line 366
    move v10, v4

    .line 367
    goto :goto_9

    .line 368
    :cond_15
    move v10, v7

    .line 369
    :goto_9
    invoke-virtual {v0}, Lqk0;->a()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_16

    .line 374
    .line 375
    invoke-virtual {v0}, Lqk0;->k()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_16

    .line 380
    .line 381
    move v11, v4

    .line 382
    goto :goto_a

    .line 383
    :cond_16
    move v11, v7

    .line 384
    :goto_a
    invoke-virtual {v0}, Lqk0;->c()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_17

    .line 389
    .line 390
    invoke-virtual {v0}, Lqk0;->m()Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_17

    .line 395
    .line 396
    move v12, v4

    .line 397
    goto :goto_b

    .line 398
    :cond_17
    move v12, v7

    .line 399
    :goto_b
    invoke-virtual {v0}, Lqk0;->b()Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-eqz v1, :cond_18

    .line 404
    .line 405
    invoke-virtual {v0}, Lqk0;->l()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_18

    .line 410
    .line 411
    move v13, v4

    .line 412
    goto :goto_c

    .line 413
    :cond_18
    move v13, v7

    .line 414
    :goto_c
    invoke-virtual {v0}, Lqk0;->d()Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_19

    .line 419
    .line 420
    invoke-virtual {v0}, Lqk0;->o()Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_19

    .line 425
    .line 426
    move v14, v4

    .line 427
    goto :goto_d

    .line 428
    :cond_19
    move v14, v7

    .line 429
    :goto_d
    invoke-virtual {v9}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-nez v0, :cond_1a

    .line 434
    .line 435
    sget-object v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->Companion:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;

    .line 436
    .line 437
    invoke-virtual {v9}, Lhk;->l()J

    .line 438
    .line 439
    .line 440
    move-result-wide v1

    .line 441
    invoke-virtual {v0, v5, v1, v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;->from(Lji;J)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    :cond_1a
    move-object v15, v0

    .line 446
    invoke-direct/range {v8 .. v16}, Lok0;-><init>(Lhk;ZZZZZLorg/swiftapps/swiftbackup/model/app/LocalMetadata;Z)V

    .line 447
    .line 448
    .line 449
    return-object v8
.end method

.method public final g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;
    .locals 0

    .line 1
    iget-object p0, p0, Lqk0;->v:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 8
    .line 9
    return-object p0
.end method

.method public final h()Lgm;
    .locals 0

    .line 1
    iget-object p0, p0, Lqk0;->u:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgm;

    .line 8
    .line 9
    return-object p0
.end method

.method public final i()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v3, Lpg;

    .line 4
    .line 5
    iget-object v1, v0, Lqk0;->h:Lji;

    .line 6
    .line 7
    invoke-virtual {v1}, Lji;->getVersionName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v7, "Empty"

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move-object v2, v7

    .line 16
    :cond_0
    invoke-virtual {v1}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-wide/16 v8, -0x1

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-wide v4, v8

    .line 30
    :goto_0
    invoke-virtual {v1}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x1

    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v6, v10

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    move v6, v11

    .line 48
    :goto_2
    xor-int/2addr v6, v11

    .line 49
    invoke-virtual {v1}, Lji;->getSharedLibsInfos()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    move v1, v10

    .line 63
    goto :goto_4

    .line 64
    :cond_5
    :goto_3
    move v1, v11

    .line 65
    :goto_4
    xor-int/2addr v1, v11

    .line 66
    move/from16 v16, v6

    .line 67
    .line 68
    move v6, v1

    .line 69
    move-object v1, v3

    .line 70
    move-wide v3, v4

    .line 71
    move/from16 v5, v16

    .line 72
    .line 73
    invoke-direct/range {v1 .. v6}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 74
    .line 75
    .line 76
    move-object v3, v1

    .line 77
    iget-object v1, v0, Lqk0;->a:Lhz;

    .line 78
    .line 79
    iget-object v1, v1, Lhz;->d:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {v1}, Lji8;->t(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget-object v2, v0, Lqk0;->b:Lq63;

    .line 86
    .line 87
    if-eqz v1, :cond_a

    .line 88
    .line 89
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_c

    .line 94
    .line 95
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_6

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_7

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_7
    move-object v4, v0

    .line 110
    invoke-virtual {v2}, Lq63;->A()J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSizeMirrored()Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v10, Lpg;

    .line 119
    .line 120
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-nez v5, :cond_8

    .line 125
    .line 126
    move-object v11, v7

    .line 127
    goto :goto_5

    .line 128
    :cond_8
    move-object v11, v5

    .line 129
    :goto_5
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v5, :cond_9

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    :cond_9
    move-wide v12, v8

    .line 140
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    invoke-direct/range {v10 .. v15}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    move-object v4, v10

    .line 160
    invoke-static/range {v0 .. v6}, Leq;->a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    return v0

    .line 165
    :cond_a
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-nez v0, :cond_b

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_b
    iget-object v0, v0, Lgm;->a:Lhk;

    .line 173
    .line 174
    invoke-virtual {v0}, Lhk;->c()Lq63;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lq63;->j()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_d

    .line 183
    .line 184
    :cond_c
    :goto_6
    return v11

    .line 185
    :cond_d
    invoke-virtual {v2}, Lq63;->A()J

    .line 186
    .line 187
    .line 188
    move-result-wide v1

    .line 189
    invoke-virtual {v0}, Lhk;->c()Lq63;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v4}, Lq63;->A()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v0}, Lhk;->c()Lq63;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-static {v5, v10}, Lng;->a(Lq63;Z)Lrg;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v0}, Lhk;->C()Lq63;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v6}, Lq63;->j()Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v0}, Lhk;->z()Lq63;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lq63;->j()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    move/from16 v16, v6

    .line 226
    .line 227
    move v6, v0

    .line 228
    move-wide v0, v1

    .line 229
    move-object v2, v4

    .line 230
    move-object v4, v5

    .line 231
    move/from16 v5, v16

    .line 232
    .line 233
    invoke-static/range {v0 .. v6}, Leq;->a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    return v0
.end method

.method public final j()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqk0;->t:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final k()Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lqk0;->a:Lhz;

    .line 4
    .line 5
    iget-object v2, v1, Lhz;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2}, Lji8;->t(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasData()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataBackupDate()Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSize()Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v7}, Lio4;->h(Ljava/lang/Long;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataPasswordHash()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    move-object/from16 v22, v2

    .line 62
    .line 63
    move-wide v13, v3

    .line 64
    move-wide/from16 v17, v5

    .line 65
    .line 66
    move-wide/from16 v19, v7

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v3, v2, Lgm;->a:Lhk;

    .line 77
    .line 78
    invoke-virtual {v3}, Lhk;->g()Lq63;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lq63;->j()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 89
    return v0

    .line 90
    :cond_5
    iget-object v2, v2, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataBackupDate()Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataBackupSize()Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v7}, Lio4;->h(Ljava/lang/Long;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataPasswordHash()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_0

    .line 121
    :goto_2
    sget-object v10, Liu;->DATA:Liu;

    .line 122
    .line 123
    iget-object v2, v0, Lqk0;->h:Lji;

    .line 124
    .line 125
    invoke-virtual {v2}, Lji;->getDataDir()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const/4 v4, 0x0

    .line 134
    if-eqz v3, :cond_6

    .line 135
    .line 136
    iget-object v3, v3, Lgm;->a:Lhk;

    .line 137
    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    invoke-virtual {v3}, Lhk;->g()Lq63;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    move-object v12, v3

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move-object v12, v4

    .line 147
    :goto_3
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    iget-boolean v1, v1, Lhz;->g:Z

    .line 154
    .line 155
    invoke-virtual {v2, v1}, Lqx;->getTotalDataSize(Z)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :cond_7
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v15

    .line 167
    iget-object v1, v0, Lqk0;->d:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v9, v0, Lqk0;->j:Lmk0;

    .line 170
    .line 171
    move-object/from16 v21, v1

    .line 172
    .line 173
    invoke-virtual/range {v9 .. v22}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    return v0
.end method

.method public final l()Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lqk0;->a:Lhz;

    .line 4
    .line 5
    iget-object v1, v1, Lhz;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v1}, Lji8;->t(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExpansion()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpansionBackupDate()Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSize()Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    :goto_0
    move-wide v12, v2

    .line 58
    move-wide/from16 v16, v4

    .line 59
    .line 60
    move-wide/from16 v18, v6

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object v2, v1, Lgm;->a:Lhk;

    .line 71
    .line 72
    invoke-virtual {v2}, Lhk;->m()Lq63;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lq63;->j()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 83
    return v0

    .line 84
    :cond_5
    iget-object v1, v1, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 85
    .line 86
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpansionBackupDate()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpBackupSize()Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v6

    .line 110
    goto :goto_0

    .line 111
    :goto_2
    sget-object v9, Liu;->EXPANSION:Liu;

    .line 112
    .line 113
    iget-object v1, v0, Lqk0;->h:Lji;

    .line 114
    .line 115
    invoke-virtual {v1}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const/4 v3, 0x0

    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    iget-object v2, v2, Lgm;->a:Lhk;

    .line 127
    .line 128
    if-eqz v2, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2}, Lhk;->m()Lq63;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    move-object v11, v2

    .line 135
    goto :goto_3

    .line 136
    :cond_6
    move-object v11, v3

    .line 137
    :goto_3
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    invoke-virtual {v1}, Lqx;->getExternalObbSize()J

    .line 144
    .line 145
    .line 146
    move-result-wide v1

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :cond_7
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v14

    .line 155
    const/16 v20, 0x0

    .line 156
    .line 157
    const/16 v21, 0x0

    .line 158
    .line 159
    iget-object v8, v0, Lqk0;->j:Lmk0;

    .line 160
    .line 161
    invoke-virtual/range {v8 .. v21}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    return v0
.end method

.method public final m()Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lqk0;->a:Lhz;

    .line 4
    .line 5
    iget-object v2, v1, Lhz;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2}, Lji8;->t(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExtData()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataBackupDate()Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSize()Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v7}, Lio4;->h(Ljava/lang/Long;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataPasswordHash()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    move-object/from16 v22, v2

    .line 62
    .line 63
    move-wide v13, v3

    .line 64
    move-wide/from16 v17, v5

    .line 65
    .line 66
    move-wide/from16 v19, v7

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v3, v2, Lgm;->a:Lhk;

    .line 77
    .line 78
    invoke-virtual {v3}, Lhk;->n()Lq63;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lq63;->j()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 89
    return v0

    .line 90
    :cond_5
    iget-object v2, v2, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataBackupDate()Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataBackupSize()Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v7}, Lio4;->h(Ljava/lang/Long;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataPasswordHash()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_0

    .line 121
    :goto_2
    sget-object v10, Liu;->EXTDATA:Liu;

    .line 122
    .line 123
    iget-object v2, v0, Lqk0;->h:Lji;

    .line 124
    .line 125
    invoke-virtual {v2}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const/4 v4, 0x0

    .line 134
    if-eqz v3, :cond_6

    .line 135
    .line 136
    iget-object v3, v3, Lgm;->a:Lhk;

    .line 137
    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    invoke-virtual {v3}, Lhk;->n()Lq63;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    move-object v12, v3

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move-object v12, v4

    .line 147
    :goto_3
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    iget-boolean v1, v1, Lhz;->g:Z

    .line 154
    .line 155
    invoke-virtual {v2, v1}, Lqx;->getExtDataSize(Z)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :cond_7
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v15

    .line 167
    iget-object v1, v0, Lqk0;->d:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v9, v0, Lqk0;->j:Lmk0;

    .line 170
    .line 171
    move-object/from16 v21, v1

    .line 172
    .line 173
    invoke-virtual/range {v9 .. v22}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    return v0
.end method

.method public final n(Liu;J)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lqk0;->a:Lhz;

    .line 6
    .line 7
    iget-object v3, v2, Lhz;->b:Lji;

    .line 8
    .line 9
    iget-object v4, v0, Lqk0;->f:Lgj;

    .line 10
    .line 11
    invoke-virtual {v4}, Lgj;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const-string v5, ": "

    .line 22
    .line 23
    const-string v6, ", "

    .line 24
    .line 25
    const-string v7, "/"

    .line 26
    .line 27
    const-string v8, " ("

    .line 28
    .line 29
    const-string v9, "BackupPlan"

    .line 30
    .line 31
    const-string v10, ", diff="

    .line 32
    .line 33
    const-string v11, ", limit="

    .line 34
    .line 35
    iget-object v13, v0, Lqk0;->e:Ltl;

    .line 36
    .line 37
    const-string v15, ")"

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const-wide v17, 0x100000000L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v4, p2, v17

    .line 47
    .line 48
    if-lez v4, :cond_2

    .line 49
    .line 50
    sget-object v0, Lp93;->a:Lp93;

    .line 51
    .line 52
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sub-long v17, p2, v17

    .line 69
    .line 70
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    new-instance v12, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v14, ": Skipped as current storage is FAT32 format with ~4GB max file size limit.(size="

    .line 87
    .line 88
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v12, v10, v4, v15}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 105
    .line 106
    sget-object v11, Lvr6$a;->YELLOW:Lvr6$a;

    .line 107
    .line 108
    invoke-virtual {v10, v9, v4, v11}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    invoke-static {v1, v9, v4, v10}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v1, v13, Ltl;->f:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v1, :cond_1

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_0

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_0
    invoke-static {v1, v6, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lji;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1, v5, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :goto_1
    iput-object v0, v13, Ltl;->f:Ljava/lang/String;

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    return v18

    .line 174
    :cond_2
    iget-boolean v0, v0, Lqk0;->g:Z

    .line 175
    .line 176
    if-nez v0, :cond_d

    .line 177
    .line 178
    invoke-virtual {v2}, Lhz;->c()Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_4

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    move-object v12, v4

    .line 199
    check-cast v12, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 200
    .line 201
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    if-ne v12, v1, :cond_3

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    const/4 v4, 0x0

    .line 209
    :goto_2
    move-object v0, v4

    .line 210
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    const/4 v0, 0x0

    .line 214
    :goto_3
    iget-object v2, v2, Lhz;->d:Ljava/util/List;

    .line 215
    .line 216
    invoke-static {v2}, Lji8;->t(Ljava/util/Collection;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_7

    .line 221
    .line 222
    if-eqz v0, :cond_6

    .line 223
    .line 224
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getCloudLimitBytes()J

    .line 225
    .line 226
    .line 227
    move-result-wide v19

    .line 228
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_4

    .line 233
    :cond_6
    const/4 v0, 0x0

    .line 234
    :goto_4
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 235
    .line 236
    .line 237
    move-result-wide v19

    .line 238
    goto :goto_6

    .line 239
    :cond_7
    if-eqz v0, :cond_8

    .line 240
    .line 241
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getLocalLimitBytes()J

    .line 242
    .line 243
    .line 244
    move-result-wide v19

    .line 245
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    goto :goto_5

    .line 250
    :cond_8
    const/4 v0, 0x0

    .line 251
    :goto_5
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 252
    .line 253
    .line 254
    move-result-wide v19

    .line 255
    :goto_6
    const-wide/16 v21, 0x0

    .line 256
    .line 257
    cmp-long v0, v19, v21

    .line 258
    .line 259
    if-lez v0, :cond_d

    .line 260
    .line 261
    cmp-long v0, p2, v19

    .line 262
    .line 263
    if-lez v0, :cond_d

    .line 264
    .line 265
    sget-object v0, Lp93;->a:Lp93;

    .line 266
    .line 267
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    sub-long v19, p2, v19

    .line 284
    .line 285
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    invoke-static {v12}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 294
    .line 295
    move/from16 p0, v2

    .line 296
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    move-object/from16 v19, v3

    .line 306
    .line 307
    const-string v3, ": Skipped due to limit set by user (size="

    .line 308
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v10, v12, v15}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    sget-object v3, Lvr6$a;->YELLOW:Lvr6$a;

    .line 326
    .line 327
    invoke-virtual {v14, v9, v2, v3}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x1

    .line 331
    const/4 v9, 0x0

    .line 332
    const/4 v10, 0x0

    .line 333
    invoke-static {v1, v9, v2, v10}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    if-eqz p0, :cond_9

    .line 365
    .line 366
    iget-object v1, v13, Ltl;->e:Ljava/lang/String;

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_9
    iget-object v1, v13, Ltl;->d:Ljava/lang/String;

    .line 370
    .line 371
    :goto_7
    if-eqz v1, :cond_b

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-nez v2, :cond_a

    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_a
    invoke-static {v1, v6, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    goto :goto_9

    .line 385
    :cond_b
    :goto_8
    invoke-virtual/range {v19 .. v19}, Lji;->getName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v1, v5, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    :goto_9
    if-eqz p0, :cond_c

    .line 394
    .line 395
    iput-object v0, v13, Ltl;->e:Ljava/lang/String;

    .line 396
    .line 397
    const/16 v18, 0x0

    .line 398
    .line 399
    return v18

    .line 400
    :cond_c
    const/16 v18, 0x0

    .line 401
    .line 402
    iput-object v0, v13, Ltl;->d:Ljava/lang/String;

    .line 403
    .line 404
    return v18

    .line 405
    :cond_d
    const/16 v16, 0x1

    .line 406
    .line 407
    return v16
.end method

.method public final o()Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lqk0;->a:Lhz;

    .line 4
    .line 5
    iget-object v1, v1, Lhz;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v1}, Lji8;->t(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lqk0;->g()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasMedia()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaBackupDate()Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSize()Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v6}, Lio4;->h(Ljava/lang/Long;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaPasswordHash()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_0
    move-object/from16 v21, v1

    .line 62
    .line 63
    move-wide v12, v2

    .line 64
    move-wide/from16 v16, v4

    .line 65
    .line 66
    move-wide/from16 v18, v6

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v2, v1, Lgm;->a:Lhk;

    .line 77
    .line 78
    invoke-virtual {v2}, Lhk;->q()Lq63;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lq63;->j()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 89
    return v0

    .line 90
    :cond_5
    iget-object v1, v1, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 91
    .line 92
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaBackupDate()Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaBackupSize()Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v6}, Lio4;->h(Ljava/lang/Long;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaPasswordHash()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_0

    .line 121
    :goto_2
    sget-object v9, Liu;->MEDIA:Liu;

    .line 122
    .line 123
    iget-object v1, v0, Lqk0;->h:Lji;

    .line 124
    .line 125
    invoke-virtual {v1}, Lji;->getMediaDir()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v0}, Lqk0;->h()Lgm;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/4 v3, 0x0

    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    iget-object v2, v2, Lgm;->a:Lhk;

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    invoke-virtual {v2}, Lhk;->q()Lq63;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object v11, v2

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move-object v11, v3

    .line 147
    :goto_3
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    invoke-virtual {v1}, Lqx;->getMediaSize()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :cond_7
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v14

    .line 165
    iget-object v1, v0, Lqk0;->d:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v8, v0, Lqk0;->j:Lmk0;

    .line 168
    .line 169
    move-object/from16 v20, v1

    .line 170
    .line 171
    invoke-virtual/range {v8 .. v21}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    return v0
.end method
