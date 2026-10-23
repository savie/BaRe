.class public final Lol3;
.super Ltl3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/ArrayList;

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lol3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

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
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lnx;

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-direct {v1, v2}, Lnx;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_0
    if-nez v1, :cond_1

    .line 36
    .line 37
    sget-object v1, Lov2;->a:Lov2;

    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Lol3;->b:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lol3;->c:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    xor-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    iput-boolean p1, p0, Lol3;->d:Z

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lol3;->e:I

    .line 60
    .line 61
    invoke-virtual {v0}, Lvm3;->getDate()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object v2, Lp93;->a:Lp93;

    .line 70
    .line 71
    invoke-virtual {v0}, Lvm3;->getSize()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, " ("

    .line 84
    .line 85
    const-string v3, ")"

    .line 86
    .line 87
    invoke-static {p1, v2, v0, v3}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lol3;->f:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const-wide/16 v4, 0x0

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    const-string p1, ""

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-static {v1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 109
    .line 110
    invoke-virtual {p1}, Lvm3;->getDate()J

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    invoke-static {v6, v7}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    move-wide v6, v4

    .line 123
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 134
    .line 135
    invoke-virtual {v1}, Lvm3;->getSize()J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    add-long/2addr v6, v8

    .line 140
    goto :goto_0

    .line 141
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {p1, v2, v0, v3}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :goto_1
    iput-object p1, p0, Lol3;->g:Ljava/lang/String;

    .line 154
    .line 155
    iget-object p1, p0, Lol3;->c:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-static {p1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lvm3;

    .line 162
    .line 163
    invoke-virtual {p1}, Lvm3;->getDate()J

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    sget-object v0, Lp93;->a:Lp93;

    .line 172
    .line 173
    iget-object v0, p0, Lol3;->c:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_4

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lvm3;

    .line 190
    .line 191
    invoke-virtual {v1}, Lvm3;->getSize()J

    .line 192
    .line 193
    .line 194
    move-result-wide v6

    .line 195
    add-long/2addr v4, v6

    .line 196
    goto :goto_2

    .line 197
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {p1, v2, v0, v3}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lol3;->h:Ljava/lang/String;

    .line 210
    .line 211
    return-void

    .line 212
    :cond_5
    const-string p0, "Null base backup!"

    .line 213
    .line 214
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lol3;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lol3;

    .line 10
    .line 11
    iget-object p0, p0, Lol3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 12
    .line 13
    iget-object p1, p1, Lol3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hashCode()I

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
    const-string v1, "BackedUp(cloudBackup="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lol3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

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
