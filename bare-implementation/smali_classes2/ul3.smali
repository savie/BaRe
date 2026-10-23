.class public final Lul3;
.super Lxl3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lkj3;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/ArrayList;

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkj3;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lul3;->a:Lkj3;

    .line 5
    .line 6
    invoke-virtual {p1}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-virtual {p1}, Lkj3;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v1, Lc01;

    .line 21
    .line 22
    invoke-direct {v1, v3}, Lc01;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lov2;->a:Lov2;

    .line 32
    .line 33
    :cond_1
    iput-object v1, p0, Lul3;->b:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p1}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1, v1}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lul3;->c:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    xor-int/2addr p1, v3

    .line 50
    iput-boolean p1, p0, Lul3;->d:Z

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lul3;->e:I

    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v2, Lp93;->a:Lp93;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getSize()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v2, " ("

    .line 81
    .line 82
    const-string v3, ")"

    .line 83
    .line 84
    invoke-static {p1, v2, v0, v3}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lul3;->f:Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const-wide/16 v4, 0x0

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    const-string p1, ""

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 106
    .line 107
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    invoke-static {v6, v7}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-wide v6, v4

    .line 120
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 131
    .line 132
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getSize()J

    .line 133
    .line 134
    .line 135
    move-result-wide v8

    .line 136
    add-long/2addr v6, v8

    .line 137
    goto :goto_0

    .line 138
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {p1, v2, v0, v3}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_1
    iput-object p1, p0, Lul3;->g:Ljava/lang/String;

    .line 151
    .line 152
    iget-object p1, p0, Lul3;->c:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-static {p1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;

    .line 159
    .line 160
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 161
    .line 162
    .line 163
    move-result-wide v0

    .line 164
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    sget-object v0, Lp93;->a:Lp93;

    .line 169
    .line 170
    iget-object v0, p0, Lul3;->c:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;

    .line 187
    .line 188
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getSize()J

    .line 189
    .line 190
    .line 191
    move-result-wide v6

    .line 192
    add-long/2addr v4, v6

    .line 193
    goto :goto_2

    .line 194
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {p1, v2, v0, v3}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iput-object p1, p0, Lul3;->h:Ljava/lang/String;

    .line 207
    .line 208
    return-void

    .line 209
    :cond_5
    const-string p0, "Null base backup!"

    .line 210
    .line 211
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lul3;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lul3;

    .line 12
    .line 13
    iget-object p0, p0, Lul3;->a:Lkj3;

    .line 14
    .line 15
    iget-object p1, p1, Lul3;->a:Lkj3;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lul3;->a:Lkj3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BackedUp(localBackup="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lul3;->a:Lkj3;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
