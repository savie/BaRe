.class public final Lyv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lyv5;

.field public final c:Lz86;

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyv5;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lyv5;->b:Lyv5;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3}, Lz86;->c()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p2, p3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move-object p2, p1

    .line 21
    :goto_1
    iput-object p2, p0, Lyv5;->c:Lz86;

    .line 22
    .line 23
    if-eqz p4, :cond_3

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    iget-object p1, p3, Lz86;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const-string p0, "Cannot pass true for \'explName\' if name is null/empty"

    .line 38
    .line 39
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_3
    :goto_2
    iput-boolean p4, p0, Lyv5;->d:Z

    .line 44
    .line 45
    iput-boolean p5, p0, Lyv5;->e:Z

    .line 46
    .line 47
    iput-boolean p6, p0, Lyv5;->f:Z

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lyv5;)Lyv5;
    .locals 1

    .line 1
    iget-object v0, p0, Lyv5;->b:Lyv5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lyv5;->c(Lyv5;)Lyv5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lyv5;->a(Lyv5;)Lyv5;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lyv5;->c(Lyv5;)Lyv5;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final b()Lyv5;
    .locals 4

    .line 1
    iget-object v0, p0, Lyv5;->b:Lyv5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lyv5;->b()Lyv5;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lyv5;->c:Lz86;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, v0, Lyv5;->c:Lz86;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lyv5;->c(Lyv5;)Lyv5;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-virtual {p0, v0}, Lyv5;->c(Lyv5;)Lyv5;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_2
    iget-object v1, v0, Lyv5;->c:Lz86;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-boolean v1, v0, Lyv5;->e:Z

    .line 35
    .line 36
    iget-boolean v3, p0, Lyv5;->e:Z

    .line 37
    .line 38
    if-ne v3, v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lyv5;->c(Lyv5;)Lyv5;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_4
    if-eqz v3, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lyv5;->c(Lyv5;)Lyv5;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_5
    :goto_0
    return-object v0
.end method

.method public final c(Lyv5;)Lyv5;
    .locals 8

    .line 1
    iget-object v0, p0, Lyv5;->b:Lyv5;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lyv5;

    .line 7
    .line 8
    iget-boolean v6, p0, Lyv5;->e:Z

    .line 9
    .line 10
    iget-boolean v7, p0, Lyv5;->f:Z

    .line 11
    .line 12
    iget-object v2, p0, Lyv5;->a:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v4, p0, Lyv5;->c:Lz86;

    .line 15
    .line 16
    iget-boolean v5, p0, Lyv5;->d:Z

    .line 17
    .line 18
    move-object v3, p1

    .line 19
    invoke-direct/range {v1 .. v7}, Lyv5;-><init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final d()Lyv5;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lyv5;->f:Z

    .line 2
    .line 3
    iget-object v1, p0, Lyv5;->b:Lyv5;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lyv5;->d()Lyv5;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1}, Lyv5;->d()Lyv5;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lyv5;->c(Lyv5;)Lyv5;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_2
    return-object p0
.end method

.method public final e()Lyv5;
    .locals 8

    .line 1
    iget-object v0, p0, Lyv5;->b:Lyv5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lyv5;

    .line 7
    .line 8
    iget-boolean v6, p0, Lyv5;->e:Z

    .line 9
    .line 10
    iget-boolean v7, p0, Lyv5;->f:Z

    .line 11
    .line 12
    iget-object v2, p0, Lyv5;->a:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object v4, p0, Lyv5;->c:Lz86;

    .line 16
    .line 17
    iget-boolean v5, p0, Lyv5;->d:Z

    .line 18
    .line 19
    invoke-direct/range {v1 .. v7}, Lyv5;-><init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final f()Lyv5;
    .locals 2

    .line 1
    iget-object v0, p0, Lyv5;->b:Lyv5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lyv5;->f()Lyv5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    iget-boolean v1, p0, Lyv5;->e:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lyv5;->c(Lyv5;)Lyv5;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lyv5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "[visible="

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lyv5;->e:Z

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ",ignore="

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lyv5;->f:Z

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ",explicitName="

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Lyv5;->d:Z

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "]"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object p0, p0, Lyv5;->b:Lyv5;

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    const-string v1, ", "

    .line 59
    .line 60
    invoke-static {v0, v1}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lyv5;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_0
    return-object v0
.end method
