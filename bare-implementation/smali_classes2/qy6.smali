.class public final Lqy6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JJJJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lqy6;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lqy6;->b:J

    .line 7
    .line 8
    iput-wide p5, p0, Lqy6;->c:J

    .line 9
    .line 10
    iput-wide p7, p0, Lqy6;->d:J

    .line 11
    .line 12
    iput-wide p9, p0, Lqy6;->e:J

    .line 13
    .line 14
    iput-wide p11, p0, Lqy6;->f:J

    .line 15
    .line 16
    iput-wide p13, p0, Lqy6;->g:J

    .line 17
    .line 18
    move-wide p1, p15

    .line 19
    iput-wide p1, p0, Lqy6;->h:J

    .line 20
    .line 21
    move-wide/from16 p1, p17

    .line 22
    .line 23
    iput-wide p1, p0, Lqy6;->i:J

    .line 24
    .line 25
    move-wide/from16 p1, p19

    .line 26
    .line 27
    iput-wide p1, p0, Lqy6;->j:J

    .line 28
    .line 29
    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lqy6;

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
    check-cast p1, Lqy6;

    .line 12
    .line 13
    iget-wide v3, p0, Lqy6;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lqy6;->a:J

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
    iget-wide v3, p0, Lqy6;->b:J

    .line 23
    .line 24
    iget-wide v5, p1, Lqy6;->b:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lqy6;->c:J

    .line 32
    .line 33
    iget-wide v5, p1, Lqy6;->c:J

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
    iget-wide v3, p0, Lqy6;->d:J

    .line 41
    .line 42
    iget-wide v5, p1, Lqy6;->d:J

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
    iget-wide v3, p0, Lqy6;->e:J

    .line 50
    .line 51
    iget-wide v5, p1, Lqy6;->e:J

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
    iget-wide v3, p0, Lqy6;->f:J

    .line 59
    .line 60
    iget-wide v5, p1, Lqy6;->f:J

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
    iget-wide v3, p0, Lqy6;->g:J

    .line 68
    .line 69
    iget-wide v5, p1, Lqy6;->g:J

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
    iget-wide v3, p0, Lqy6;->h:J

    .line 77
    .line 78
    iget-wide v5, p1, Lqy6;->h:J

    .line 79
    .line 80
    cmp-long v1, v3, v5

    .line 81
    .line 82
    if-eqz v1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    iget-wide v3, p0, Lqy6;->i:J

    .line 86
    .line 87
    iget-wide v5, p1, Lqy6;->i:J

    .line 88
    .line 89
    cmp-long v1, v3, v5

    .line 90
    .line 91
    if-eqz v1, :cond_a

    .line 92
    .line 93
    return v2

    .line 94
    :cond_a
    iget-wide v3, p0, Lqy6;->j:J

    .line 95
    .line 96
    iget-wide p0, p1, Lqy6;->j:J

    .line 97
    .line 98
    cmp-long p0, v3, p0

    .line 99
    .line 100
    if-eqz p0, :cond_b

    .line 101
    .line 102
    return v2

    .line 103
    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lqy6;->a:J

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
    iget-wide v2, p0, Lqy6;->b:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lqy6;->c:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Lqy6;->d:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-wide v2, p0, Lqy6;->e:J

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-wide v2, p0, Lqy6;->f:J

    .line 35
    .line 36
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-wide v2, p0, Lqy6;->g:J

    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-wide v2, p0, Lqy6;->h:J

    .line 47
    .line 48
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-wide v2, p0, Lqy6;->i:J

    .line 53
    .line 54
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-wide v1, p0, Lqy6;->j:J

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/2addr p0, v0

    .line 65
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "SbaCreateDiagnostics(fileSize="

    .line 2
    .line 3
    const-string v1, ", indexOffset="

    .line 4
    .line 5
    iget-wide v2, p0, Lqy6;->a:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v1, p0, Lqy6;->b:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", indexSize="

    .line 17
    .line 18
    const-string v2, ", nativeHeaderMillis="

    .line 19
    .line 20
    iget-wide v3, p0, Lqy6;->c:J

    .line 21
    .line 22
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Lqy6;->d:J

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", nativePayloadMillis="

    .line 31
    .line 32
    const-string v2, ", nativeProducerMillis="

    .line 33
    .line 34
    iget-wide v3, p0, Lqy6;->e:J

    .line 35
    .line 36
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-wide v1, p0, Lqy6;->f:J

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", nativeEncryptionMillis="

    .line 45
    .line 46
    const-string v2, ", nativeIndexFooterMillis="

    .line 47
    .line 48
    iget-wide v3, p0, Lqy6;->g:J

    .line 49
    .line 50
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-wide v1, p0, Lqy6;->h:J

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", nativeTotalMillis="

    .line 59
    .line 60
    const-string v2, ", cryptoSetupMillis="

    .line 61
    .line 62
    iget-wide v3, p0, Lqy6;->i:J

    .line 63
    .line 64
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, ")"

    .line 68
    .line 69
    iget-wide v2, p0, Lqy6;->j:J

    .line 70
    .line 71
    invoke-static {v2, v3, v1, v0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
