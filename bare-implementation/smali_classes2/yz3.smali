.class public final Lyz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyz3;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lyz3;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lyz3;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lyz3;->d:J

    .line 11
    .line 12
    iput-wide p7, p0, Lyz3;->e:J

    .line 13
    .line 14
    iput-object p9, p0, Lyz3;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p10, p0, Lyz3;->g:Ljava/util/List;

    .line 17
    .line 18
    iput-boolean p11, p0, Lyz3;->h:Z

    .line 19
    .line 20
    iput-object p12, p0, Lyz3;->i:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
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
    instance-of v0, p1, Lyz3;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lyz3;

    .line 11
    .line 12
    iget-object v0, p0, Lyz3;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p1, Lyz3;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lyz3;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p1, Lyz3;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-wide v0, p0, Lyz3;->c:J

    .line 35
    .line 36
    iget-wide v2, p1, Lyz3;->c:J

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iget-wide v0, p0, Lyz3;->d:J

    .line 44
    .line 45
    iget-wide v2, p1, Lyz3;->d:J

    .line 46
    .line 47
    cmp-long v0, v0, v2

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    iget-wide v0, p0, Lyz3;->e:J

    .line 53
    .line 54
    iget-wide v2, p1, Lyz3;->e:J

    .line 55
    .line 56
    cmp-long v0, v0, v2

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    iget-object v0, p0, Lyz3;->f:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p1, Lyz3;->f:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_7
    iget-object v0, p0, Lyz3;->g:Ljava/util/List;

    .line 73
    .line 74
    iget-object v1, p1, Lyz3;->g:Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_8

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_8
    iget-boolean v0, p0, Lyz3;->h:Z

    .line 84
    .line 85
    iget-boolean v1, p1, Lyz3;->h:Z

    .line 86
    .line 87
    if-eq v0, v1, :cond_9

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_9
    iget-object p0, p0, Lyz3;->i:Ljava/lang/String;

    .line 91
    .line 92
    iget-object p1, p1, Lyz3;->i:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_a

    .line 99
    .line 100
    :goto_0
    const/4 p0, 0x0

    .line 101
    return p0

    .line 102
    :cond_a
    :goto_1
    const/4 p0, 0x1

    .line 103
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lyz3;->a:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    const/16 v2, 0x1f

    .line 13
    .line 14
    mul-int/2addr v1, v2

    .line 15
    iget-object v3, p0, Lyz3;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Lfz5;->g(IILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-wide v3, p0, Lyz3;->c:J

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v2}, Lxs1;->f(JII)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-wide v3, p0, Lyz3;->d:J

    .line 28
    .line 29
    invoke-static {v3, v4, v1, v2}, Lxs1;->f(JII)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-wide v3, p0, Lyz3;->e:J

    .line 34
    .line 35
    invoke-static {v3, v4, v1, v2}, Lxs1;->f(JII)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v3, p0, Lyz3;->f:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    move v3, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_1
    add-int/2addr v1, v3

    .line 50
    mul-int/2addr v1, v2

    .line 51
    iget-object v3, p0, Lyz3;->g:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {v3, v1, v2}, Lfz5;->i(Ljava/util/List;II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-boolean v3, p0, Lyz3;->h:Z

    .line 58
    .line 59
    invoke-static {v1, v2, v3}, Lfz5;->h(IIZ)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object p0, p0, Lyz3;->i:Ljava/lang/String;

    .line 64
    .line 65
    if-nez p0, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :goto_2
    add-int/2addr v1, v0

    .line 73
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", name="

    .line 2
    .line 3
    const-string v1, ", size="

    .line 4
    .line 5
    const-string v2, "GoogleDriveFile(id="

    .line 6
    .line 7
    iget-object v3, p0, Lyz3;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lyz3;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lyz3;->c:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", createdTimeMillis="

    .line 21
    .line 22
    const-string v2, ", modifiedTimeMillis="

    .line 23
    .line 24
    iget-wide v3, p0, Lyz3;->d:J

    .line 25
    .line 26
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lyz3;->e:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", thumbnailLink="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lyz3;->f:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", parents="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lyz3;->g:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", trashed="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lyz3;->h:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", mimeType="

    .line 65
    .line 66
    const-string v2, ")"

    .line 67
    .line 68
    iget-object p0, p0, Lyz3;->i:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v1, p0, v2}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
