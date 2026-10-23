.class public final Lo17;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo17;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:J

.field public final H:J

.field public final I:J

.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final k:J

.field public final n:J

.field public final p:Ljava/lang/String;

.field public final q:J

.field public final r:J

.field public final t:J

.field public final x:J

.field public final y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmk;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lmk;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lo17;->a:J

    .line 4
    iput p3, p0, Lo17;->b:I

    .line 5
    iput p4, p0, Lo17;->c:I

    .line 6
    iput p5, p0, Lo17;->d:I

    .line 7
    iput-object p6, p0, Lo17;->e:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lo17;->f:Ljava/lang/String;

    .line 9
    iput-wide p8, p0, Lo17;->k:J

    .line 10
    iput-wide p10, p0, Lo17;->n:J

    .line 11
    iput-object p12, p0, Lo17;->p:Ljava/lang/String;

    .line 12
    iput-wide p13, p0, Lo17;->q:J

    move-wide p1, p15

    .line 13
    iput-wide p1, p0, Lo17;->r:J

    move-wide/from16 p1, p17

    .line 14
    iput-wide p1, p0, Lo17;->t:J

    move-wide/from16 p1, p19

    .line 15
    iput-wide p1, p0, Lo17;->x:J

    move-wide/from16 p1, p21

    .line 16
    iput-wide p1, p0, Lo17;->y:J

    move-wide/from16 p1, p23

    .line 17
    iput-wide p1, p0, Lo17;->G:J

    move-wide/from16 p1, p25

    .line 18
    iput-wide p1, p0, Lo17;->H:J

    move-wide/from16 p1, p27

    .line 19
    iput-wide p1, p0, Lo17;->I:J

    return-void
.end method

.method public synthetic constructor <init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V
    .locals 31

    move/from16 v0, p29

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit16 v1, v0, 0x200

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    move-wide v15, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v15, p13

    :goto_1
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    move-wide/from16 v17, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v17, p15

    :goto_2
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_3

    move-wide/from16 v19, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v19, p17

    :goto_3
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move-wide/from16 v21, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v21, p19

    :goto_4
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move-wide/from16 v23, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v23, p21

    :goto_5
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_6

    move-wide/from16 v25, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v25, p23

    :goto_6
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move-wide/from16 v27, v2

    goto :goto_7

    :cond_7
    move-wide/from16 v27, p25

    :goto_7
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move-wide/from16 v29, v2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    goto :goto_8

    :cond_8
    move-wide/from16 v29, p27

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    .line 1
    :goto_8
    invoke-direct/range {v2 .. v30}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJ)V

    return-void
.end method

.method public static c(Lo17;)Lo17;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lo17;->a:J

    .line 4
    .line 5
    iget v4, v0, Lo17;->c:I

    .line 6
    .line 7
    iget v5, v0, Lo17;->d:I

    .line 8
    .line 9
    iget-object v6, v0, Lo17;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v7, v0, Lo17;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v8, v0, Lo17;->k:J

    .line 14
    .line 15
    iget-wide v10, v0, Lo17;->n:J

    .line 16
    .line 17
    iget-object v12, v0, Lo17;->p:Ljava/lang/String;

    .line 18
    .line 19
    iget-wide v13, v0, Lo17;->q:J

    .line 20
    .line 21
    move-wide v15, v1

    .line 22
    iget-wide v1, v0, Lo17;->r:J

    .line 23
    .line 24
    move-wide/from16 v17, v1

    .line 25
    .line 26
    iget-wide v1, v0, Lo17;->t:J

    .line 27
    .line 28
    move-wide/from16 v19, v1

    .line 29
    .line 30
    iget-wide v1, v0, Lo17;->x:J

    .line 31
    .line 32
    move-wide/from16 v21, v1

    .line 33
    .line 34
    iget-wide v1, v0, Lo17;->y:J

    .line 35
    .line 36
    move-wide/from16 v23, v1

    .line 37
    .line 38
    iget-wide v1, v0, Lo17;->G:J

    .line 39
    .line 40
    move-wide/from16 v25, v1

    .line 41
    .line 42
    iget-wide v1, v0, Lo17;->H:J

    .line 43
    .line 44
    move-wide/from16 v27, v1

    .line 45
    .line 46
    iget-wide v0, v0, Lo17;->I:J

    .line 47
    .line 48
    move-wide/from16 v29, v27

    .line 49
    .line 50
    move-wide/from16 v27, v0

    .line 51
    .line 52
    move-wide v1, v15

    .line 53
    move-wide/from16 v15, v17

    .line 54
    .line 55
    move-wide/from16 v17, v19

    .line 56
    .line 57
    move-wide/from16 v19, v21

    .line 58
    .line 59
    move-wide/from16 v21, v23

    .line 60
    .line 61
    move-wide/from16 v23, v25

    .line 62
    .line 63
    move-wide/from16 v25, v29

    .line 64
    .line 65
    new-instance v0, Lo17;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-direct/range {v0 .. v28}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJ)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lo17;

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
    check-cast p1, Lo17;

    .line 12
    .line 13
    iget-wide v3, p0, Lo17;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lo17;->a:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lo17;->b:I

    .line 23
    .line 24
    iget v3, p1, Lo17;->b:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget v1, p0, Lo17;->c:I

    .line 30
    .line 31
    iget v3, p1, Lo17;->c:I

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget v1, p0, Lo17;->d:I

    .line 37
    .line 38
    iget v3, p1, Lo17;->d:I

    .line 39
    .line 40
    if-eq v1, v3, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    iget-object v1, p0, Lo17;->e:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lo17;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget-object v1, p0, Lo17;->f:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p1, Lo17;->f:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_7

    .line 63
    .line 64
    return v2

    .line 65
    :cond_7
    iget-wide v3, p0, Lo17;->k:J

    .line 66
    .line 67
    iget-wide v5, p1, Lo17;->k:J

    .line 68
    .line 69
    cmp-long v1, v3, v5

    .line 70
    .line 71
    if-eqz v1, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    iget-wide v3, p0, Lo17;->n:J

    .line 75
    .line 76
    iget-wide v5, p1, Lo17;->n:J

    .line 77
    .line 78
    cmp-long v1, v3, v5

    .line 79
    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    return v2

    .line 83
    :cond_9
    iget-object v1, p0, Lo17;->p:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p1, Lo17;->p:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_a

    .line 92
    .line 93
    return v2

    .line 94
    :cond_a
    iget-wide v3, p0, Lo17;->q:J

    .line 95
    .line 96
    iget-wide v5, p1, Lo17;->q:J

    .line 97
    .line 98
    cmp-long v1, v3, v5

    .line 99
    .line 100
    if-eqz v1, :cond_b

    .line 101
    .line 102
    return v2

    .line 103
    :cond_b
    iget-wide v3, p0, Lo17;->r:J

    .line 104
    .line 105
    iget-wide v5, p1, Lo17;->r:J

    .line 106
    .line 107
    cmp-long v1, v3, v5

    .line 108
    .line 109
    if-eqz v1, :cond_c

    .line 110
    .line 111
    return v2

    .line 112
    :cond_c
    iget-wide v3, p0, Lo17;->t:J

    .line 113
    .line 114
    iget-wide v5, p1, Lo17;->t:J

    .line 115
    .line 116
    cmp-long v1, v3, v5

    .line 117
    .line 118
    if-eqz v1, :cond_d

    .line 119
    .line 120
    return v2

    .line 121
    :cond_d
    iget-wide v3, p0, Lo17;->x:J

    .line 122
    .line 123
    iget-wide v5, p1, Lo17;->x:J

    .line 124
    .line 125
    cmp-long v1, v3, v5

    .line 126
    .line 127
    if-eqz v1, :cond_e

    .line 128
    .line 129
    return v2

    .line 130
    :cond_e
    iget-wide v3, p0, Lo17;->y:J

    .line 131
    .line 132
    iget-wide v5, p1, Lo17;->y:J

    .line 133
    .line 134
    cmp-long v1, v3, v5

    .line 135
    .line 136
    if-eqz v1, :cond_f

    .line 137
    .line 138
    return v2

    .line 139
    :cond_f
    iget-wide v3, p0, Lo17;->G:J

    .line 140
    .line 141
    iget-wide v5, p1, Lo17;->G:J

    .line 142
    .line 143
    cmp-long v1, v3, v5

    .line 144
    .line 145
    if-eqz v1, :cond_10

    .line 146
    .line 147
    return v2

    .line 148
    :cond_10
    iget-wide v3, p0, Lo17;->H:J

    .line 149
    .line 150
    iget-wide v5, p1, Lo17;->H:J

    .line 151
    .line 152
    cmp-long v1, v3, v5

    .line 153
    .line 154
    if-eqz v1, :cond_11

    .line 155
    .line 156
    return v2

    .line 157
    :cond_11
    iget-wide v3, p0, Lo17;->I:J

    .line 158
    .line 159
    iget-wide p0, p1, Lo17;->I:J

    .line 160
    .line 161
    cmp-long p0, v3, p0

    .line 162
    .line 163
    if-eqz p0, :cond_12

    .line 164
    .line 165
    return v2

    .line 166
    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lo17;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

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
    iget v2, p0, Lo17;->b:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lo17;->c:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lo17;->d:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lo17;->e:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_0
    add-int/2addr v0, v3

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object v3, p0, Lo17;->f:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    move v3, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_1
    add-int/2addr v0, v3

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-wide v3, p0, Lo17;->k:J

    .line 54
    .line 55
    invoke-static {v3, v4, v0, v1}, Lxs1;->f(JII)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-wide v3, p0, Lo17;->n:J

    .line 60
    .line 61
    invoke-static {v3, v4, v0, v1}, Lxs1;->f(JII)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v3, p0, Lo17;->p:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    :goto_2
    add-int/2addr v0, v2

    .line 75
    mul-int/2addr v0, v1

    .line 76
    iget-wide v2, p0, Lo17;->q:J

    .line 77
    .line 78
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-wide v2, p0, Lo17;->r:J

    .line 83
    .line 84
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-wide v2, p0, Lo17;->t:J

    .line 89
    .line 90
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-wide v2, p0, Lo17;->x:J

    .line 95
    .line 96
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-wide v2, p0, Lo17;->y:J

    .line 101
    .line 102
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-wide v2, p0, Lo17;->G:J

    .line 107
    .line 108
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-wide v2, p0, Lo17;->H:J

    .line 113
    .line 114
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget-wide v1, p0, Lo17;->I:J

    .line 119
    .line 120
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    add-int/2addr p0, v0

    .line 125
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SbaRootResult(operationId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lo17;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", state="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lo17;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", errorCode="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lo17;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", errorSubCode="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lo17;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", errorMessage="

    .line 44
    .line 45
    const-string v2, ", outputPath="

    .line 46
    .line 47
    iget-object v3, p0, Lo17;->e:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, p0, Lo17;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, v1, v3, v2, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, ", bytesProcessed="

    .line 55
    .line 56
    const-string v2, ", durationMillis="

    .line 57
    .line 58
    iget-wide v3, p0, Lo17;->k:J

    .line 59
    .line 60
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-wide v1, p0, Lo17;->n:J

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", diagnostics="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lo17;->p:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", tarEntryCount="

    .line 79
    .line 80
    const-string v2, ", tarRegularFileCount="

    .line 81
    .line 82
    iget-wide v3, p0, Lo17;->q:J

    .line 83
    .line 84
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-wide v1, p0, Lo17;->r:J

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", tarDirectoryCount="

    .line 93
    .line 94
    const-string v2, ", tarSymlinkCount="

    .line 95
    .line 96
    iget-wide v3, p0, Lo17;->t:J

    .line 97
    .line 98
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lo17;->x:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", tarHardlinkCount="

    .line 107
    .line 108
    const-string v2, ", tarOtherEntryCount="

    .line 109
    .line 110
    iget-wide v3, p0, Lo17;->y:J

    .line 111
    .line 112
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-wide v1, p0, Lo17;->G:J

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", tarSkippedEntryCount="

    .line 121
    .line 122
    const-string v2, ", tarRegularFileBytes="

    .line 123
    .line 124
    iget-wide v3, p0, Lo17;->H:J

    .line 125
    .line 126
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v1, ")"

    .line 130
    .line 131
    iget-wide v2, p0, Lo17;->I:J

    .line 132
    .line 133
    invoke-static {v2, v3, v1, v0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lo17;->a:J

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lo17;->b:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lo17;->c:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lo17;->d:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lo17;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lo17;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lo17;->k:J

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    .line 38
    .line 39
    iget-wide v0, p0, Lo17;->n:J

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lo17;->p:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide v0, p0, Lo17;->q:J

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    .line 53
    .line 54
    iget-wide v0, p0, Lo17;->r:J

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, p0, Lo17;->t:J

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    .line 63
    .line 64
    iget-wide v0, p0, Lo17;->x:J

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    .line 68
    .line 69
    iget-wide v0, p0, Lo17;->y:J

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    .line 73
    .line 74
    iget-wide v0, p0, Lo17;->G:J

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    .line 78
    .line 79
    iget-wide v0, p0, Lo17;->H:J

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    .line 83
    .line 84
    iget-wide v0, p0, Lo17;->I:J

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
