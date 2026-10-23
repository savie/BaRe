.class public abstract Log1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lg23;Ljava/lang/String;)Lpg1;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v1, v0, [C

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x2f

    .line 12
    .line 13
    aput-char v3, v1, v2

    .line 14
    .line 15
    invoke-static {p1, v1}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v1, p0, Lg23;->d:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v7, 0x0

    .line 30
    const/16 v8, 0x3e

    .line 31
    .line 32
    const-string v4, "/"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v1, Lpg1;

    .line 41
    .line 42
    iget-object v3, p0, Lg23;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v3, p1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-wide v3, p0, Lg23;->b:J

    .line 51
    .line 52
    iput-wide v3, v1, Lpg1;->c:J

    .line 53
    .line 54
    iget-object v3, p0, Lg23;->e:Ljava/util/Calendar;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v3, v4

    .line 69
    :goto_0
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    iput-wide v5, v1, Lpg1;->d:J

    .line 74
    .line 75
    iget-object v3, p0, Lg23;->e:Ljava/util/Calendar;

    .line 76
    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    :cond_1
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    iput-wide v3, v1, Lpg1;->e:J

    .line 92
    .line 93
    iput-object p1, v1, Lpg1;->f:Ljava/lang/String;

    .line 94
    .line 95
    iget p0, p0, Lg23;->a:I

    .line 96
    .line 97
    if-ne p0, v0, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move v0, v2

    .line 101
    :goto_1
    iput-boolean v0, v1, Lpg1;->g:Z

    .line 102
    .line 103
    return-object v1
.end method

.method public static b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lyz3;

    .line 21
    .line 22
    iget-object v2, v1, Lyz3;->a:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    iget-object v4, v1, Lyz3;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v4, v3

    .line 38
    :goto_1
    if-nez v4, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    new-instance v3, Lpg1;

    .line 42
    .line 43
    invoke-direct {v3, v4, v2}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v4, v1, Lyz3;->c:J

    .line 47
    .line 48
    iput-wide v4, v3, Lpg1;->c:J

    .line 49
    .line 50
    iget-wide v4, v1, Lyz3;->d:J

    .line 51
    .line 52
    iput-wide v4, v3, Lpg1;->d:J

    .line 53
    .line 54
    iget-wide v4, v1, Lyz3;->e:J

    .line 55
    .line 56
    iput-wide v4, v3, Lpg1;->e:J

    .line 57
    .line 58
    iget-object v2, v1, Lyz3;->f:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, v3, Lpg1;->f:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, v1, Lyz3;->i:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "application/vnd.google-apps.folder"

    .line 65
    .line 66
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput-boolean v1, v3, Lpg1;->g:Z

    .line 71
    .line 72
    :goto_2
    if-eqz v3, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-object v0
.end method

.method public static c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lpt5;

    .line 27
    .line 28
    iget-object v2, v1, Lpt5;->d:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, v1, Lpt5;->b:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const-string v5, "/"

    .line 36
    .line 37
    invoke-static {v2, v5}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move-object v2, v4

    .line 43
    :goto_1
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    :cond_1
    const-string v5, "Swift"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static {v2, v5, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_4

    .line 55
    .line 56
    const/4 v7, 0x6

    .line 57
    invoke-static {v2, v5, v6, v6, v7}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-ltz v5, :cond_3

    .line 62
    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    sub-int/2addr v7, v5

    .line 81
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2, v6, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v4, v2, v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-object v2, v4

    .line 95
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    const-string p0, "End index ("

    .line 101
    .line 102
    const-string v0, ") is less than start index (0)."

    .line 103
    .line 104
    invoke-static {v5, p0, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v4

    .line 112
    :cond_4
    :goto_3
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_6

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    move-object v6, v5

    .line 140
    check-cast v6, Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_5

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    const/4 v8, 0x0

    .line 153
    const/16 v9, 0x3e

    .line 154
    .line 155
    const-string v5, "/"

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v7, 0x0

    .line 159
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const-string v4, " "

    .line 164
    .line 165
    const-string v5, "%20"

    .line 166
    .line 167
    invoke-static {v2, v4, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const-string v4, "("

    .line 172
    .line 173
    const-string v5, "%28"

    .line 174
    .line 175
    invoke-static {v2, v4, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const-string v4, ")"

    .line 180
    .line 181
    const-string v5, "%29"

    .line 182
    .line 183
    invoke-static {v2, v4, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    new-instance v4, Lpg1;

    .line 188
    .line 189
    invoke-direct {v4, v3, v2}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-wide v5, v1, Lpt5;->c:J

    .line 193
    .line 194
    iput-wide v5, v4, Lpg1;->c:J

    .line 195
    .line 196
    iget-wide v5, v1, Lpt5;->e:J

    .line 197
    .line 198
    iput-wide v5, v4, Lpg1;->d:J

    .line 199
    .line 200
    iget-wide v5, v1, Lpt5;->f:J

    .line 201
    .line 202
    iput-wide v5, v4, Lpg1;->e:J

    .line 203
    .line 204
    iput-object v2, v4, Lpg1;->f:Ljava/lang/String;

    .line 205
    .line 206
    iget-boolean v1, v1, Lpt5;->g:Z

    .line 207
    .line 208
    iput-boolean v1, v4, Lpg1;->g:Z

    .line 209
    .line 210
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_7
    return-object v0
.end method

.method public static d(Lzi6;Ljava/lang/String;)Lpg1;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [C

    .line 6
    .line 7
    const/16 v1, 0x2f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-char v1, v0, v2

    .line 11
    .line 12
    invoke-static {p1, v0}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0}, Lzi6;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/16 v5, 0x3e

    .line 30
    .line 31
    const-string v1, "/"

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Lpg1;

    .line 40
    .line 41
    invoke-interface {p0}, Lzi6;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, p1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Lzi6;->e()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-interface {p0}, Lzi6;->c()Laj6;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Laj6;->size()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    :goto_0
    iput-wide v1, v0, Lpg1;->c:J

    .line 69
    .line 70
    invoke-interface {p0}, Lzi6;->a()Ljava/util/Date;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    iput-wide v1, v0, Lpg1;->d:J

    .line 79
    .line 80
    invoke-interface {p0}, Lzi6;->d()Ljava/util/Date;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    iput-wide v1, v0, Lpg1;->e:J

    .line 89
    .line 90
    iput-object p1, v0, Lpg1;->f:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {p0}, Lzi6;->b()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    iput-boolean p0, v0, Lpg1;->g:Z

    .line 97
    .line 98
    return-object v0
.end method

.method public static e(Lqg4;)Lpg1;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lqg4;->h()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ltb1;->a:Ltb1;

    .line 6
    .line 7
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ltb1;->i()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-static {v3, v0, v1}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_0
    new-instance v1, Lpg1;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    new-array v3, v3, [C

    .line 38
    .line 39
    const/16 v4, 0x2f

    .line 40
    .line 41
    aput-char v4, v3, v2

    .line 42
    .line 43
    invoke-static {v0, v3}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2, v4}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, v2, v0}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lqg4;->l()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    iput-wide v2, v1, Lpg1;->c:J

    .line 59
    .line 60
    :try_start_0
    invoke-virtual {p0}, Lqg4;->g()Ljava/time/ZonedDateTime;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    const/4 v2, 0x0

    .line 78
    :goto_0
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const-wide/16 v2, 0x0

    .line 86
    .line 87
    :goto_1
    iput-wide v2, v1, Lpg1;->d:J

    .line 88
    .line 89
    iput-wide v2, v1, Lpg1;->e:J

    .line 90
    .line 91
    iput-object v0, v1, Lpg1;->f:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p0}, Lqg4;->e()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    iput-boolean p0, v1, Lpg1;->g:Z

    .line 98
    .line 99
    return-object v1
.end method

.method public static f(Lcom/jcraft/jsch/ChannelSftp$LsEntry;Ljava/lang/String;)Lpg1;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [C

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x2f

    .line 12
    .line 13
    aput-char v2, v0, v1

    .line 14
    .line 15
    invoke-static {p1, v0}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v6, 0x0

    .line 30
    const/16 v7, 0x3e

    .line 31
    .line 32
    const-string v3, "/"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v0, Ltb1;->a:Ltb1;

    .line 41
    .line 42
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ltb1;->i()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x6

    .line 57
    invoke-static {v1, p1, v0}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_0
    new-instance v0, Lpg1;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1, p1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->c:Lcom/jcraft/jsch/SftpATTRS;

    .line 76
    .line 77
    iget-wide v1, p0, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 78
    .line 79
    iput-wide v1, v0, Lpg1;->c:J

    .line 80
    .line 81
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->g:I

    .line 82
    .line 83
    int-to-long v1, v1

    .line 84
    iput-wide v1, v0, Lpg1;->d:J

    .line 85
    .line 86
    iput-wide v1, v0, Lpg1;->e:J

    .line 87
    .line 88
    iput-object p1, v0, Lpg1;->f:Ljava/lang/String;

    .line 89
    .line 90
    const/16 p1, 0x4000

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    iput-boolean p0, v0, Lpg1;->g:Z

    .line 97
    .line 98
    return-object v0
.end method

.method public static g(Lu63;Ljava/lang/String;)Lpg1;
    .locals 10

    .line 1
    iget-object v0, p0, Lu63;->a:La73;

    .line 2
    .line 3
    iget-object p0, p0, Lu63;->b:Lu93;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x5c

    .line 9
    .line 10
    const/16 v2, 0x2f

    .line 11
    .line 12
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-char v3, Lmc3;->a:C

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-gez v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v4, 0x1

    .line 41
    add-int/2addr v1, v4

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v5, Ljava/io/File;

    .line 47
    .line 48
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-array v4, v4, [C

    .line 59
    .line 60
    aput-char v2, v4, v3

    .line 61
    .line 62
    invoke-static {p1, v4}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const/4 v8, 0x0

    .line 75
    const/16 v9, 0x3e

    .line 76
    .line 77
    const-string v5, "/"

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object v2, Ltb1;->a:Ltb1;

    .line 86
    .line 87
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ltb1;->i()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {p1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 100
    .line 101
    const/4 v3, 0x6

    .line 102
    invoke-static {v3, p1, v2}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :cond_0
    new-instance v2, Lpg1;

    .line 111
    .line 112
    invoke-direct {v2, v1, p1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-wide v3, p0, Lu93;->a:J

    .line 116
    .line 117
    iput-wide v3, v2, Lpg1;->c:J

    .line 118
    .line 119
    iget-object v1, v0, La73;->a:Lga3;

    .line 120
    .line 121
    invoke-virtual {v1}, Lga3;->a()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    iput-wide v3, v2, Lpg1;->d:J

    .line 126
    .line 127
    iget-object v0, v0, La73;->c:Lga3;

    .line 128
    .line 129
    invoke-virtual {v0}, Lga3;->a()J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    iput-wide v0, v2, Lpg1;->e:J

    .line 134
    .line 135
    iput-object p1, v2, Lpg1;->f:Ljava/lang/String;

    .line 136
    .line 137
    iget-boolean p0, p0, Lu93;->b:Z

    .line 138
    .line 139
    iput-boolean p0, v2, Lpg1;->g:Z

    .line 140
    .line 141
    return-object v2

    .line 142
    :cond_1
    const-string p0, "Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    .line 143
    .line 144
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x0

    .line 148
    return-object p0
.end method

.method public static h(Lp73;Ljava/lang/String;)Lpg1;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x5c

    .line 5
    .line 6
    const/16 v1, 0x2f

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v2, v0, [C

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-char v1, v2, v3

    .line 20
    .line 21
    invoke-static {p1, v2}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Li73;->a:Ljava/lang/String;

    .line 26
    .line 27
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v8, 0x0

    .line 36
    const/16 v9, 0x3e

    .line 37
    .line 38
    const-string v5, "/"

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v2, Ltb1;->a:Ltb1;

    .line 47
    .line 48
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ltb1;->i()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {p1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    const/4 v4, 0x6

    .line 63
    invoke-static {v4, p1, v2}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :cond_0
    new-instance v2, Lpg1;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v1, p1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-wide v4, p0, Lp73;->e:J

    .line 80
    .line 81
    iput-wide v4, v2, Lpg1;->c:J

    .line 82
    .line 83
    iget-object v1, p0, Lp73;->c:Lga3;

    .line 84
    .line 85
    invoke-virtual {v1}, Lga3;->a()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    iput-wide v4, v2, Lpg1;->d:J

    .line 90
    .line 91
    iget-object v1, p0, Lp73;->d:Lga3;

    .line 92
    .line 93
    invoke-virtual {v1}, Lga3;->a()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    iput-wide v4, v2, Lpg1;->e:J

    .line 98
    .line 99
    iput-object p1, v2, Lpg1;->f:Ljava/lang/String;

    .line 100
    .line 101
    iget-wide p0, p0, Lp73;->f:J

    .line 102
    .line 103
    const-wide/16 v4, 0x10

    .line 104
    .line 105
    and-long/2addr p0, v4

    .line 106
    const-wide/16 v4, 0x0

    .line 107
    .line 108
    cmp-long p0, p0, v4

    .line 109
    .line 110
    if-eqz p0, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    move v0, v3

    .line 114
    :goto_0
    iput-boolean v0, v2, Lpg1;->g:Z

    .line 115
    .line 116
    return-object v2
.end method

.method public static i(Lqq8;Ljava/lang/String;)Lpg1;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqq8;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    const-string v3, "%29"

    .line 19
    .line 20
    const-string v4, ")"

    .line 21
    .line 22
    const-string v5, "%28"

    .line 23
    .line 24
    const-string v6, "("

    .line 25
    .line 26
    const-string v7, "%20"

    .line 27
    .line 28
    const-string v8, " "

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    if-nez v9, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p1, v1

    .line 40
    :goto_1
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-static {p1, v8, v7}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v6, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, v4, v3}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object p1, v1

    .line 56
    :goto_2
    const-string v9, "Swift%20Backup"

    .line 57
    .line 58
    const-string v10, "Swift Backup"

    .line 59
    .line 60
    filled-new-array {v2, p1, v9, v10}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 69
    .line 70
    invoke-direct {v2, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v9, 0x0

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    move-object v10, v2

    .line 93
    check-cast v10, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, v10, v9}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_3

    .line 100
    .line 101
    move-object v1, v2

    .line 102
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-static {v0, v1, v9}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    const/4 p1, 0x6

    .line 113
    invoke-static {p1, v0, v1}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    const/4 p1, 0x1

    .line 123
    new-array p1, p1, [C

    .line 124
    .line 125
    const/16 v1, 0x2f

    .line 126
    .line 127
    aput-char v1, p1, v9

    .line 128
    .line 129
    invoke-static {v0, p1}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :goto_3
    invoke-static {p1, v8, v7}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1, v6, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p1, v4, v3}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v0, Lpg1;

    .line 146
    .line 147
    iget-object v1, p0, Lqq8;->b:Ljava/lang/String;

    .line 148
    .line 149
    invoke-direct {v0, v1, p1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lqq8;->d:Ljava/lang/Long;

    .line 153
    .line 154
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    iput-wide v1, v0, Lpg1;->c:J

    .line 159
    .line 160
    iget-object v1, p0, Lqq8;->e:Ljava/lang/Long;

    .line 161
    .line 162
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    iput-wide v1, v0, Lpg1;->d:J

    .line 167
    .line 168
    iget-object v1, p0, Lqq8;->f:Ljava/lang/Long;

    .line 169
    .line 170
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    iput-wide v1, v0, Lpg1;->e:J

    .line 175
    .line 176
    iput-object p1, v0, Lpg1;->f:Ljava/lang/String;

    .line 177
    .line 178
    iget-boolean p0, p0, Lqq8;->c:Z

    .line 179
    .line 180
    iput-boolean p0, v0, Lpg1;->g:Z

    .line 181
    .line 182
    return-object v0
.end method
