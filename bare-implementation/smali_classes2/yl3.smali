.class public final Lyl3;
.super Lbm3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:Lgv7;

.field public final g:Lgv7;

.field public final h:Lgv7;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyl3;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lyl3;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lyl3;->c:J

    .line 9
    .line 10
    iput p6, p0, Lyl3;->d:I

    .line 11
    .line 12
    iput p7, p0, Lyl3;->e:I

    .line 13
    .line 14
    new-instance p1, Lbk;

    .line 15
    .line 16
    const/16 p2, 0x12

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lgv7;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lyl3;->f:Lgv7;

    .line 27
    .line 28
    new-instance p1, Lck;

    .line 29
    .line 30
    const/16 p2, 0x14

    .line 31
    .line 32
    invoke-direct {p1, p0, p2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lgv7;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lyl3;->g:Lgv7;

    .line 41
    .line 42
    new-instance p1, Ldk;

    .line 43
    .line 44
    const/16 p2, 0x18

    .line 45
    .line 46
    invoke-direct {p1, p0, p2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lgv7;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 52
    .line 53
    .line 54
    iput-object p2, p0, Lyl3;->h:Lgv7;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lyl3;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lyl3;

    .line 10
    .line 11
    iget-object v0, p0, Lyl3;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lyl3;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-wide v0, p0, Lyl3;->b:J

    .line 23
    .line 24
    iget-wide v2, p1, Lyl3;->b:J

    .line 25
    .line 26
    cmp-long v0, v0, v2

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-wide v0, p0, Lyl3;->c:J

    .line 32
    .line 33
    iget-wide v2, p1, Lyl3;->c:J

    .line 34
    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget v0, p0, Lyl3;->d:I

    .line 41
    .line 42
    iget v1, p1, Lyl3;->d:I

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget p0, p0, Lyl3;->e:I

    .line 48
    .line 49
    iget p1, p1, Lyl3;->e:I

    .line 50
    .line 51
    if-eq p0, p1, :cond_6

    .line 52
    .line 53
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lyl3;->a:Ljava/lang/String;

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
    iget-wide v2, p0, Lyl3;->b:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lyl3;->c:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lyl3;->d:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget p0, p0, Lyl3;->e:I

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v0

    .line 35
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "FolderInfo(path="

    .line 2
    .line 3
    const-string v1, ", size="

    .line 4
    .line 5
    iget-object v2, p0, Lyl3;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lyl3;->b:J

    .line 8
    .line 9
    invoke-static {v0, v2, v3, v4, v1}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, ", lastModified="

    .line 14
    .line 15
    const-string v2, ", folderCount="

    .line 16
    .line 17
    iget-wide v3, p0, Lyl3;->c:J

    .line 18
    .line 19
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lyl3;->d:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", fileCount="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lyl3;->e:I

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ")"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
