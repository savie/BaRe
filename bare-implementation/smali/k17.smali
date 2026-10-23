.class public final Lk17;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk17;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final k:J

.field public final n:Lg17;

.field public final p:Ljava/lang/String;

.field public final q:I

.field public final r:Ljava/lang/Long;

.field public final t:Ljava/lang/Long;

.field public final x:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm10;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lm10;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lk17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJJJJLg17;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lk17;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput p2, p0, Lk17;->b:I

    .line 16
    .line 17
    iput-wide p3, p0, Lk17;->c:J

    .line 18
    .line 19
    iput-wide p5, p0, Lk17;->d:J

    .line 20
    .line 21
    iput-wide p7, p0, Lk17;->e:J

    .line 22
    .line 23
    iput-wide p9, p0, Lk17;->f:J

    .line 24
    .line 25
    iput-wide p11, p0, Lk17;->k:J

    .line 26
    .line 27
    iput-object p13, p0, Lk17;->n:Lg17;

    .line 28
    .line 29
    iput-object p14, p0, Lk17;->p:Ljava/lang/String;

    .line 30
    .line 31
    iput p15, p0, Lk17;->q:I

    .line 32
    .line 33
    move-object/from16 p1, p16

    .line 34
    .line 35
    iput-object p1, p0, Lk17;->r:Ljava/lang/Long;

    .line 36
    .line 37
    move-object/from16 p1, p17

    .line 38
    .line 39
    iput-object p1, p0, Lk17;->t:Ljava/lang/Long;

    .line 40
    .line 41
    move-object/from16 p1, p18

    .line 42
    .line 43
    iput-object p1, p0, Lk17;->x:Ljava/lang/Long;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final c()Lxy6;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lxy6;

    .line 4
    .line 5
    iget-object v2, v0, Lk17;->n:Lg17;

    .line 6
    .line 7
    invoke-virtual {v2}, Lg17;->c()Lcy0;

    .line 8
    .line 9
    .line 10
    move-result-object v13

    .line 11
    iget-object v2, v0, Lk17;->p:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v3, v2}, Lwx3;->D(Ljava/lang/Integer;Ljava/lang/String;)Lwy6;

    .line 15
    .line 16
    .line 17
    move-result-object v14

    .line 18
    iget-object v2, v0, Lk17;->t:Ljava/lang/Long;

    .line 19
    .line 20
    iget-object v3, v0, Lk17;->x:Ljava/lang/Long;

    .line 21
    .line 22
    move-object v4, v1

    .line 23
    iget-object v1, v0, Lk17;->a:Ljava/lang/String;

    .line 24
    .line 25
    move-object/from16 v17, v2

    .line 26
    .line 27
    iget v2, v0, Lk17;->b:I

    .line 28
    .line 29
    move-object/from16 v18, v3

    .line 30
    .line 31
    move-object v5, v4

    .line 32
    iget-wide v3, v0, Lk17;->c:J

    .line 33
    .line 34
    move-object v7, v5

    .line 35
    iget-wide v5, v0, Lk17;->d:J

    .line 36
    .line 37
    move-object v9, v7

    .line 38
    iget-wide v7, v0, Lk17;->e:J

    .line 39
    .line 40
    move-object v11, v9

    .line 41
    iget-wide v9, v0, Lk17;->f:J

    .line 42
    .line 43
    move-object v15, v11

    .line 44
    iget-wide v11, v0, Lk17;->k:J

    .line 45
    .line 46
    move-object/from16 v16, v15

    .line 47
    .line 48
    iget v15, v0, Lk17;->q:I

    .line 49
    .line 50
    iget-object v0, v0, Lk17;->r:Ljava/lang/Long;

    .line 51
    .line 52
    move-object/from16 v19, v16

    .line 53
    .line 54
    move-object/from16 v16, v0

    .line 55
    .line 56
    move-object/from16 v0, v19

    .line 57
    .line 58
    invoke-direct/range {v0 .. v18}, Lxy6;-><init>(Ljava/lang/String;IJJJJJLcy0;Lwy6;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 59
    .line 60
    .line 61
    move-object v15, v0

    .line 62
    return-object v15
.end method

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
    instance-of v1, p1, Lk17;

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
    check-cast p1, Lk17;

    .line 12
    .line 13
    iget-object v1, p0, Lk17;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lk17;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lk17;->b:I

    .line 25
    .line 26
    iget v3, p1, Lk17;->b:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lk17;->c:J

    .line 32
    .line 33
    iget-wide v5, p1, Lk17;->c:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-wide v3, p0, Lk17;->d:J

    .line 41
    .line 42
    iget-wide v5, p1, Lk17;->d:J

    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lk17;->e:J

    .line 50
    .line 51
    iget-wide v5, p1, Lk17;->e:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-wide v3, p0, Lk17;->f:J

    .line 59
    .line 60
    iget-wide v5, p1, Lk17;->f:J

    .line 61
    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-wide v3, p0, Lk17;->k:J

    .line 68
    .line 69
    iget-wide v5, p1, Lk17;->k:J

    .line 70
    .line 71
    cmp-long v1, v3, v5

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    iget-object v1, p0, Lk17;->n:Lg17;

    .line 77
    .line 78
    iget-object v3, p1, Lk17;->n:Lg17;

    .line 79
    .line 80
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_9

    .line 85
    .line 86
    return v2

    .line 87
    :cond_9
    iget-object v1, p0, Lk17;->p:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p1, Lk17;->p:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_a

    .line 96
    .line 97
    return v2

    .line 98
    :cond_a
    iget v1, p0, Lk17;->q:I

    .line 99
    .line 100
    iget v3, p1, Lk17;->q:I

    .line 101
    .line 102
    if-eq v1, v3, :cond_b

    .line 103
    .line 104
    return v2

    .line 105
    :cond_b
    iget-object v1, p0, Lk17;->r:Ljava/lang/Long;

    .line 106
    .line 107
    iget-object v3, p1, Lk17;->r:Ljava/lang/Long;

    .line 108
    .line 109
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_c

    .line 114
    .line 115
    return v2

    .line 116
    :cond_c
    iget-object v1, p0, Lk17;->t:Ljava/lang/Long;

    .line 117
    .line 118
    iget-object v3, p1, Lk17;->t:Ljava/lang/Long;

    .line 119
    .line 120
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_d

    .line 125
    .line 126
    return v2

    .line 127
    :cond_d
    iget-object p0, p0, Lk17;->x:Ljava/lang/Long;

    .line 128
    .line 129
    iget-object p1, p1, Lk17;->x:Ljava/lang/Long;

    .line 130
    .line 131
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_e

    .line 136
    .line 137
    return v2

    .line 138
    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lk17;->a:Ljava/lang/String;

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
    iget v2, p0, Lk17;->b:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lk17;->c:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Lk17;->d:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-wide v2, p0, Lk17;->e:J

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-wide v2, p0, Lk17;->f:J

    .line 35
    .line 36
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-wide v2, p0, Lk17;->k:J

    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v2, p0, Lk17;->n:Lg17;

    .line 47
    .line 48
    invoke-virtual {v2}, Lg17;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v0

    .line 53
    mul-int/2addr v2, v1

    .line 54
    iget-object v0, p0, Lk17;->p:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2, v1, v0}, Lfz5;->g(IILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v2, p0, Lk17;->q:I

    .line 61
    .line 62
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lk17;->r:Ljava/lang/Long;

    .line 68
    .line 69
    if-nez v3, :cond_0

    .line 70
    .line 71
    move v3, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_0
    add-int/2addr v0, v3

    .line 78
    mul-int/2addr v0, v1

    .line 79
    iget-object v3, p0, Lk17;->t:Ljava/lang/Long;

    .line 80
    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    move v3, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :goto_1
    add-int/2addr v0, v3

    .line 90
    mul-int/2addr v0, v1

    .line 91
    iget-object p0, p0, Lk17;->x:Ljava/lang/Long;

    .line 92
    .line 93
    if-nez p0, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_2
    add-int/2addr v0, v2

    .line 101
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", order="

    .line 2
    .line 3
    const-string v1, ", entryOffset="

    .line 4
    .line 5
    const-string v2, "SbaRootEntryInfo(name="

    .line 6
    .line 7
    iget-object v3, p0, Lk17;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lk17;->b:I

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lk17;->c:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", payloadOffset="

    .line 21
    .line 22
    const-string v2, ", payloadSize="

    .line 23
    .line 24
    iget-wide v3, p0, Lk17;->d:J

    .line 25
    .line 26
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lk17;->e:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", compressedSize="

    .line 35
    .line 36
    const-string v2, ", tarSize="

    .line 37
    .line 38
    iget-wide v3, p0, Lk17;->f:J

    .line 39
    .line 40
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-wide v1, p0, Lk17;->k:J

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", compression="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lk17;->n:Lg17;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", encryption="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lk17;->p:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", flags="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lk17;->q:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", tarEntryCount="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lk17;->r:Ljava/lang/Long;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", regularFileCount="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lk17;->t:Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", directoryCount="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lk17;->x:Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p0, ")"

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk17;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lk17;->b:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lk17;->c:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lk17;->d:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lk17;->e:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Lk17;->f:J

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lk17;->k:J

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lk17;->n:Lg17;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Lg17;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lk17;->p:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Lk17;->q:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lk17;->r:Ljava/lang/Long;

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1, p2, v1}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v1, p0, Lk17;->t:Ljava/lang/Long;

    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-static {p1, p2, v1}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object p0, p0, Lk17;->x:Ljava/lang/Long;

    .line 79
    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    invoke-static {p1, p2, p0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
