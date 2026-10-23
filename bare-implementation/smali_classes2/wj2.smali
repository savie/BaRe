.class public final Lwj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/CharSequence;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Z


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 3
    iput-object p2, p0, Lwj2;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lwj2;->c:Z

    .line 5
    iput-boolean p4, p0, Lwj2;->d:Z

    .line 6
    iput-object p5, p0, Lwj2;->e:Ljava/lang/CharSequence;

    .line 7
    iput-boolean p6, p0, Lwj2;->f:Z

    .line 8
    iput-object p7, p0, Lwj2;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lwj2;->h:Ljava/lang/String;

    .line 10
    iput-boolean p9, p0, Lwj2;->i:Z

    .line 11
    iput-object p10, p0, Lwj2;->j:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lwj2;->k:Ljava/lang/String;

    .line 13
    iput-boolean p12, p0, Lwj2;->l:Z

    .line 14
    iput-object p13, p0, Lwj2;->m:Ljava/lang/String;

    .line 15
    iput-object p14, p0, Lwj2;->n:Ljava/lang/String;

    .line 16
    iput-object p15, p0, Lwj2;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Lwj2;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Lwj2;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 19
    iput-object p1, p0, Lwj2;->r:Ljava/lang/String;

    move/from16 p1, p19

    .line 20
    iput-boolean p1, p0, Lwj2;->s:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lwj2;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lwj2;

    .line 12
    .line 13
    iget-object v0, p0, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 14
    .line 15
    iget-object v1, p1, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lwj2;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lwj2;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget-boolean v0, p0, Lwj2;->c:Z

    .line 38
    .line 39
    iget-boolean v1, p1, Lwj2;->c:Z

    .line 40
    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_4
    iget-boolean v0, p0, Lwj2;->d:Z

    .line 46
    .line 47
    iget-boolean v1, p1, Lwj2;->d:Z

    .line 48
    .line 49
    if-eq v0, v1, :cond_5

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_5
    iget-object v0, p0, Lwj2;->e:Ljava/lang/CharSequence;

    .line 54
    .line 55
    iget-object v1, p1, Lwj2;->e:Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_6
    iget-boolean v0, p0, Lwj2;->f:Z

    .line 66
    .line 67
    iget-boolean v1, p1, Lwj2;->f:Z

    .line 68
    .line 69
    if-eq v0, v1, :cond_7

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_7
    iget-object v0, p0, Lwj2;->g:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v1, p1, Lwj2;->g:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_8

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_8
    iget-object v0, p0, Lwj2;->h:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v1, p1, Lwj2;->h:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_9

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_9
    iget-boolean v0, p0, Lwj2;->i:Z

    .line 98
    .line 99
    iget-boolean v1, p1, Lwj2;->i:Z

    .line 100
    .line 101
    if-eq v0, v1, :cond_a

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_a
    iget-object v0, p0, Lwj2;->j:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v1, p1, Lwj2;->j:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_b

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_b
    iget-object v0, p0, Lwj2;->k:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v1, p1, Lwj2;->k:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_c

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_c
    iget-boolean v0, p0, Lwj2;->l:Z

    .line 128
    .line 129
    iget-boolean v1, p1, Lwj2;->l:Z

    .line 130
    .line 131
    if-eq v0, v1, :cond_d

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_d
    iget-object v0, p0, Lwj2;->m:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, p1, Lwj2;->m:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_e

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_e
    iget-object v0, p0, Lwj2;->n:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v1, p1, Lwj2;->n:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_f

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_f
    iget-object v0, p0, Lwj2;->o:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v1, p1, Lwj2;->o:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_10

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_10
    iget-object v0, p0, Lwj2;->p:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v1, p1, Lwj2;->p:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_11

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_11
    iget-object v0, p0, Lwj2;->q:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v1, p1, Lwj2;->q:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-nez v0, :cond_12

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_12
    iget-object v0, p0, Lwj2;->r:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v1, p1, Lwj2;->r:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_13

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_13
    iget-boolean p0, p0, Lwj2;->s:Z

    .line 201
    .line 202
    iget-boolean p1, p1, Lwj2;->s:Z

    .line 203
    .line 204
    if-eq p0, p1, :cond_14

    .line 205
    .line 206
    :goto_0
    const/4 p0, 0x0

    .line 207
    return p0

    .line 208
    :cond_14
    :goto_1
    const/4 p0, 0x1

    .line 209
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lwj2;->b:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-boolean v3, p0, Lwj2;->c:Z

    .line 24
    .line 25
    invoke-static {v0, v1, v3}, Lfz5;->h(IIZ)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v3, p0, Lwj2;->d:Z

    .line 30
    .line 31
    invoke-static {v0, v1, v3}, Lfz5;->h(IIZ)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v3, p0, Lwj2;->e:Ljava/lang/CharSequence;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    move v3, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :goto_1
    add-int/2addr v0, v3

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-boolean v3, p0, Lwj2;->f:Z

    .line 48
    .line 49
    invoke-static {v0, v1, v3}, Lfz5;->h(IIZ)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v3, p0, Lwj2;->g:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    move v3, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_2
    add-int/2addr v0, v3

    .line 64
    mul-int/2addr v0, v1

    .line 65
    iget-object v3, p0, Lwj2;->h:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    move v3, v2

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    :goto_3
    add-int/2addr v0, v3

    .line 76
    mul-int/2addr v0, v1

    .line 77
    iget-boolean v3, p0, Lwj2;->i:Z

    .line 78
    .line 79
    invoke-static {v0, v1, v3}, Lfz5;->h(IIZ)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v3, p0, Lwj2;->j:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    move v3, v2

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    :goto_4
    add-int/2addr v0, v3

    .line 94
    mul-int/2addr v0, v1

    .line 95
    iget-object v3, p0, Lwj2;->k:Ljava/lang/String;

    .line 96
    .line 97
    if-nez v3, :cond_5

    .line 98
    .line 99
    move v3, v2

    .line 100
    goto :goto_5

    .line 101
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    :goto_5
    add-int/2addr v0, v3

    .line 106
    mul-int/2addr v0, v1

    .line 107
    iget-boolean v3, p0, Lwj2;->l:Z

    .line 108
    .line 109
    invoke-static {v0, v1, v3}, Lfz5;->h(IIZ)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v3, p0, Lwj2;->m:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    move v3, v2

    .line 118
    goto :goto_6

    .line 119
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    :goto_6
    add-int/2addr v0, v3

    .line 124
    mul-int/2addr v0, v1

    .line 125
    iget-object v3, p0, Lwj2;->n:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v3, :cond_7

    .line 128
    .line 129
    move v3, v2

    .line 130
    goto :goto_7

    .line 131
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :goto_7
    add-int/2addr v0, v3

    .line 136
    mul-int/2addr v0, v1

    .line 137
    iget-object v3, p0, Lwj2;->o:Ljava/lang/String;

    .line 138
    .line 139
    if-nez v3, :cond_8

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    :goto_8
    add-int/2addr v0, v2

    .line 147
    mul-int/2addr v0, v1

    .line 148
    iget-object v2, p0, Lwj2;->p:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-object v2, p0, Lwj2;->q:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iget-object v2, p0, Lwj2;->r:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iget-boolean p0, p0, Lwj2;->s:Z

    .line 167
    .line 168
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    add-int/2addr p0, v0

    .line 173
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CloudBackupState(backup="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", apkSize="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lwj2;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", hasSplits="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lwj2;->c:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", hasSharedLibs="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lwj2;->d:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", dataSize="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lwj2;->e:Ljava/lang/CharSequence;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", dataEncrypted="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lwj2;->f:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", dataEncryptionLabel="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", extDataSize="

    .line 69
    .line 70
    const-string v2, ", extDataEncrypted="

    .line 71
    .line 72
    iget-object v3, p0, Lwj2;->g:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v4, p0, Lwj2;->h:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v1, p0, Lwj2;->i:Z

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", extDataEncryptionLabel="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lwj2;->j:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", mediaSize="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lwj2;->k:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", mediaEncrypted="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-boolean v1, p0, Lwj2;->l:Z

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", mediaEncryptionLabel="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, ", expansionSize="

    .line 120
    .line 121
    const-string v2, ", totalSize="

    .line 122
    .line 123
    iget-object v3, p0, Lwj2;->m:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v4, p0, Lwj2;->n:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v1, ", infoString="

    .line 131
    .line 132
    const-string v2, ", versionNameString="

    .line 133
    .line 134
    iget-object v3, p0, Lwj2;->o:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v4, p0, Lwj2;->p:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v1, ", versionInfoString="

    .line 142
    .line 143
    const-string v2, ", isProtectedBackup="

    .line 144
    .line 145
    iget-object v3, p0, Lwj2;->q:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v4, p0, Lwj2;->r:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v1, ")"

    .line 153
    .line 154
    iget-boolean p0, p0, Lwj2;->s:Z

    .line 155
    .line 156
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0
.end method
