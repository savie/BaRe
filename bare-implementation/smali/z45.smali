.class public final Lz45;
.super Lpr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:I

.field public f:Lhe8;


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 8

    .line 1
    iget v0, p0, Lz45;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x3

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    if-eq v0, v4, :cond_3

    .line 11
    .line 12
    if-eq v0, v3, :cond_2

    .line 13
    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    invoke-virtual {p0, v1, p1}, Lz45;->i(ILjava/lang/String;)Lg23;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p0, v5, p1}, Lz45;->i(ILjava/lang/String;)Lg23;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_2
    iget-object p0, p0, Lz45;->f:Lhe8;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lhe8;->b(Ljava/lang/String;)Lg23;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_3
    new-instance v0, Lg23;

    .line 38
    .line 39
    invoke-direct {v0}, Lg23;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lpr1;->h(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const-string v7, " "

    .line 47
    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    iput-object p1, v0, Lg23;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v3}, Lpr1;->g(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object p1, v0, Lg23;->d:Ljava/lang/String;

    .line 83
    .line 84
    iput v1, v0, Lg23;->a:I

    .line 85
    .line 86
    :try_start_0
    iget-object p0, p0, Lpr1;->d:Lp23;

    .line 87
    .line 88
    invoke-virtual {p0, v2}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iput-object p0, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    :catch_0
    return-object v0

    .line 95
    :cond_4
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_5

    .line 106
    .line 107
    iput-object p1, v0, Lg23;->c:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    aget-object p0, p0, v1

    .line 114
    .line 115
    iput-object p0, v0, Lg23;->d:Ljava/lang/String;

    .line 116
    .line 117
    iput v1, v0, Lg23;->a:I

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_5
    return-object v2

    .line 121
    :cond_6
    invoke-virtual {p0, p1}, Lpr1;->h(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    new-instance v0, Lg23;

    .line 128
    .line 129
    invoke-direct {v0}, Lg23;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object p1, v0, Lg23;->c:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0, v3}, Lpr1;->g(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    iput-object p1, v0, Lg23;->d:Ljava/lang/String;

    .line 143
    .line 144
    const-string p1, "PS"

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_7

    .line 151
    .line 152
    iput v1, v0, Lg23;->a:I

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_7
    const-string p1, "PO"

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_8

    .line 162
    .line 163
    const-string p1, "PO-E"

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_a

    .line 170
    .line 171
    :cond_8
    iput v4, v0, Lg23;->a:I

    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_9
    const-string p0, "Migrated"

    .line 175
    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-nez p0, :cond_b

    .line 181
    .line 182
    const-string v0, "ARCIVE"

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_a
    return-object v2

    .line 192
    :cond_b
    :goto_0
    new-instance v0, Lg23;

    .line 193
    .line 194
    invoke-direct {v0}, Lg23;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-object p1, v0, Lg23;->c:Ljava/lang/String;

    .line 198
    .line 199
    iput v5, v0, Lg23;->a:I

    .line 200
    .line 201
    const-string v1, "\\s+"

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p0, :cond_c

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_c
    const/4 v4, 0x5

    .line 211
    :goto_1
    aget-object p0, p1, v4

    .line 212
    .line 213
    iput-object p0, v0, Lg23;->d:Ljava/lang/String;

    .line 214
    .line 215
    return-object v0
.end method

.method public final c(Ljava/util/LinkedList;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "Volume"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x3

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const-string v2, "Dsname"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iput v0, p0, Lz45;->e:I

    .line 34
    .line 35
    const-string v1, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+(?:\\S+\\s+)?\\S+\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lpr1;->e(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v2, "Name"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const-string v2, "Id"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iput v1, p0, Lz45;->e:I

    .line 59
    .line 60
    const-string v1, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Lpr1;->e(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v2, "total"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    iput v1, p0, Lz45;->e:I

    .line 76
    .line 77
    new-instance v1, Lhe8;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {v1, v2, v0}, Lhe8;-><init>(Le23;Z)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lz45;->f:Lhe8;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const-string v2, "Spool Files"

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/16 v4, 0x1e

    .line 93
    .line 94
    if-lt v2, v4, :cond_3

    .line 95
    .line 96
    iput v3, p0, Lz45;->e:I

    .line 97
    .line 98
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v1}, Lpr1;->e(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const-string v2, "JOBNAME"

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    const-string v2, "JOBID"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/16 v2, 0x8

    .line 119
    .line 120
    if-le v1, v2, :cond_4

    .line 121
    .line 122
    const/4 v1, 0x4

    .line 123
    iput v1, p0, Lz45;->e:I

    .line 124
    .line 125
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

    .line 126
    .line 127
    invoke-virtual {p0, v0, v1}, Lpr1;->e(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    const/4 v1, -0x1

    .line 132
    iput v1, p0, Lz45;->e:I

    .line 133
    .line 134
    :goto_0
    iget p0, p0, Lz45;->e:I

    .line 135
    .line 136
    if-eq p0, v3, :cond_5

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_5
    return-void
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "yyyy/MM/dd HH:mm"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "MVS"

    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final i(ILjava/lang/String;)Lg23;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lpr1;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lg23;

    .line 8
    .line 9
    invoke-direct {v0}, Lg23;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lpr1;->g(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "OUTPUT"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput-object p2, v0, Lg23;->c:Ljava/lang/String;

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    invoke-virtual {p0, p1}, Lpr1;->g(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iput-object p0, v0, Lg23;->d:Ljava/lang/String;

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    iput p0, v0, Lg23;->a:I

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method
