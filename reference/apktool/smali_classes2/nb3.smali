.class public final Lnb3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lob3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:[B

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BJJJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lnb3;->a:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lnb3;->b:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p3, p0, Lnb3;->c:Ljava/lang/String;

    .line 27
    .line 28
    iput-wide p4, p0, Lnb3;->d:J

    .line 29
    .line 30
    iput-object p6, p0, Lnb3;->e:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p7, p0, Lnb3;->f:[B

    .line 33
    .line 34
    iput-wide p8, p0, Lnb3;->g:J

    .line 35
    .line 36
    iput-wide p10, p0, Lnb3;->h:J

    .line 37
    .line 38
    iput-wide p12, p0, Lnb3;->i:J

    .line 39
    .line 40
    iput-object p14, p0, Lnb3;->j:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p15, p0, Lnb3;->k:Ljava/lang/String;

    .line 43
    .line 44
    move/from16 p1, p16

    .line 45
    .line 46
    iput p1, p0, Lnb3;->l:I

    .line 47
    .line 48
    move-object/from16 p1, p17

    .line 49
    .line 50
    iput-object p1, p0, Lnb3;->m:Ljava/lang/String;

    .line 51
    .line 52
    move-object/from16 p1, p18

    .line 53
    .line 54
    iput-object p1, p0, Lnb3;->n:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnb3;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnb3;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lnb3;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lnb3;

    .line 12
    .line 13
    iget-object v0, p0, Lnb3;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lnb3;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lnb3;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lnb3;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lnb3;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p1, Lnb3;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    iget-wide v0, p0, Lnb3;->d:J

    .line 50
    .line 51
    iget-wide v2, p1, Lnb3;->d:J

    .line 52
    .line 53
    cmp-long v0, v0, v2

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lnb3;->e:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, p1, Lnb3;->e:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    iget-object v0, p0, Lnb3;->f:[B

    .line 71
    .line 72
    iget-object v1, p1, Lnb3;->f:[B

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    iget-wide v0, p0, Lnb3;->g:J

    .line 82
    .line 83
    iget-wide v2, p1, Lnb3;->g:J

    .line 84
    .line 85
    cmp-long v0, v0, v2

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    iget-wide v0, p0, Lnb3;->h:J

    .line 91
    .line 92
    iget-wide v2, p1, Lnb3;->h:J

    .line 93
    .line 94
    cmp-long v0, v0, v2

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_9
    iget-wide v0, p0, Lnb3;->i:J

    .line 100
    .line 101
    iget-wide v2, p1, Lnb3;->i:J

    .line 102
    .line 103
    cmp-long v0, v0, v2

    .line 104
    .line 105
    if-eqz v0, :cond_a

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_a
    iget-object v0, p0, Lnb3;->j:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v1, p1, Lnb3;->j:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_b

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_b
    iget-object v0, p0, Lnb3;->k:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, p1, Lnb3;->k:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_c

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_c
    iget v0, p0, Lnb3;->l:I

    .line 131
    .line 132
    iget v1, p1, Lnb3;->l:I

    .line 133
    .line 134
    if-eq v0, v1, :cond_d

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_d
    iget-object v0, p0, Lnb3;->m:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v1, p1, Lnb3;->m:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_e

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_e
    iget-object p0, p0, Lnb3;->n:Ljava/lang/String;

    .line 149
    .line 150
    iget-object p1, p1, Lnb3;->n:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_f

    .line 157
    .line 158
    :goto_0
    const/4 p0, 0x0

    .line 159
    return p0

    .line 160
    :cond_f
    :goto_1
    const/4 p0, 0x1

    .line 161
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnb3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lnb3;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lnb3;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lnb3;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Lnb3;->d:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lnb3;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lnb3;->f:[B

    .line 35
    .line 36
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v0

    .line 41
    mul-int/2addr v2, v1

    .line 42
    iget-wide v3, p0, Lnb3;->g:J

    .line 43
    .line 44
    invoke-static {v3, v4, v2, v1}, Lxs1;->f(JII)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-wide v2, p0, Lnb3;->h:J

    .line 49
    .line 50
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-wide v2, p0, Lnb3;->i:J

    .line 55
    .line 56
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v2, p0, Lnb3;->j:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v2, p0, Lnb3;->k:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget v2, p0, Lnb3;->l:I

    .line 73
    .line 74
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v2, p0, Lnb3;->m:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object p0, p0, Lnb3;->n:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    add-int/2addr p0, v0

    .line 91
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lnb3;->f:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", name="

    .line 8
    .line 9
    const-string v2, ", parentUuid="

    .line 10
    .line 11
    const-string v3, "FilenRemoteFile(uuid="

    .line 12
    .line 13
    iget-object v4, p0, Lnb3;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lnb3;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v4, v1, v5, v2}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lnb3;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", size="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v2, p0, Lnb3;->d:J

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ", mimeType="

    .line 37
    .line 38
    const-string v3, ", key="

    .line 39
    .line 40
    iget-object v4, p0, Lnb3;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v2, v4, v3, v0}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, ", created="

    .line 46
    .line 47
    const-string v2, ", lastModified="

    .line 48
    .line 49
    iget-wide v3, p0, Lnb3;->g:J

    .line 50
    .line 51
    invoke-static {v1, v0, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Lnb3;->h:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ", chunks="

    .line 60
    .line 61
    const-string v2, ", bucket="

    .line 62
    .line 63
    iget-wide v3, p0, Lnb3;->i:J

    .line 64
    .line 65
    invoke-static {v1, v0, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, ", region="

    .line 69
    .line 70
    const-string v2, ", version="

    .line 71
    .line 72
    iget-object v3, p0, Lnb3;->j:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v4, p0, Lnb3;->k:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1, v3, v0, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lnb3;->l:I

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", blake3="

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lnb3;->m:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ", sha512="

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, ")"

    .line 100
    .line 101
    iget-object p0, p0, Lnb3;->n:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v1, p0, v0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method
