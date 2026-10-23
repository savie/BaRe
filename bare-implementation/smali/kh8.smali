.class public final Lkh8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Lgy5;

.field public final c:Lqn5;

.field public final d:Lnp1;

.field public final e:Z


# direct methods
.method public constructor <init>(JLgy5;Lnp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lkh8;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lkh8;->b:Lgy5;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lkh8;->c:Lqn5;

    .line 10
    .line 11
    iput-object p4, p0, Lkh8;->d:Lnp1;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lkh8;->e:Z

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(JLgy5;Lqn5;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lkh8;->a:J

    .line 19
    iput-object p3, p0, Lkh8;->b:Lgy5;

    .line 20
    iput-object p4, p0, Lkh8;->c:Lqn5;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lkh8;->d:Lnp1;

    .line 22
    iput-boolean p5, p0, Lkh8;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lnp1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkh8;->d:Lnp1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Can\'t access merge when write is an overwrite!"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final b()Lqn5;
    .locals 0

    .line 1
    iget-object p0, p0, Lkh8;->c:Lqn5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Can\'t access overwrite when write is a merge!"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkh8;->c:Lqn5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    if-eqz p1, :cond_9

    .line 5
    .line 6
    const-class v0, Lkh8;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    check-cast p1, Lkh8;

    .line 16
    .line 17
    iget-wide v0, p0, Lkh8;->a:J

    .line 18
    .line 19
    iget-wide v2, p1, Lkh8;->a:J

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget-object v0, p0, Lkh8;->b:Lgy5;

    .line 27
    .line 28
    iget-object v1, p1, Lkh8;->b:Lgy5;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lgy5;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    iget-boolean v0, p0, Lkh8;->e:Z

    .line 38
    .line 39
    iget-boolean v1, p1, Lkh8;->e:Z

    .line 40
    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_4
    iget-object v0, p1, Lkh8;->c:Lqn5;

    .line 45
    .line 46
    iget-object v1, p0, Lkh8;->c:Lqn5;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_9

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    if-eqz v0, :cond_6

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_6
    :goto_0
    iget-object p1, p1, Lkh8;->d:Lnp1;

    .line 61
    .line 62
    iget-object p0, p0, Lkh8;->d:Lnp1;

    .line 63
    .line 64
    if-eqz p0, :cond_7

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lnp1;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_9

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_7
    if-eqz p1, :cond_8

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :cond_9
    :goto_2
    const/4 p0, 0x0

    .line 79
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lkh8;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-boolean v1, p0, Lkh8;->e:Z

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    .line 26
    iget-object v0, p0, Lkh8;->b:Lgy5;

    .line 27
    .line 28
    invoke-virtual {v0}, Lgy5;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iget-object v2, p0, Lkh8;->c:Lqn5;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v2, v1

    .line 46
    :goto_0
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object p0, p0, Lkh8;->d:Lnp1;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lnp1;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :cond_1
    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UserWriteRecord{id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lkh8;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " path="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lkh8;->b:Lgy5;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " visible="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lkh8;->e:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " overwrite="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lkh8;->c:Lqn5;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " merge="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lkh8;->d:Lnp1;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "}"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
