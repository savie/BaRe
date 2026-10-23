.class public final Ltl9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljm9;


# instance fields
.field public final a:Lmg9;

.field public final b:Lns0;


# direct methods
.method public constructor <init>(Lns0;Lmg9;)V
    .locals 1

    .line 1
    sget-object v0, Lji9;->a:Llk;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ltl9;->b:Lns0;

    .line 7
    .line 8
    iput-object p2, p0, Ltl9;->a:Lmg9;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lxi9;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lxi9;->zzc:Lmn9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lmn9;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b(Ljava/lang/Object;[BIILrg9;)V
    .locals 0

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Lxi9;

    .line 3
    .line 4
    iget-object p2, p0, Lxi9;->zzc:Lmn9;

    .line 5
    .line 6
    sget-object p3, Lmn9;->f:Lmn9;

    .line 7
    .line 8
    if-eq p2, p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lmn9;->b()Lmn9;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lxi9;->zzc:Lmn9;

    .line 16
    .line 17
    :goto_0
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0
.end method

.method public final c(Ljava/lang/Object;Lom5;)V
    .locals 0

    .line 1
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    throw p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    throw p0
.end method

.method public final e(Lxi9;Lxi9;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Lxi9;->zzc:Lmn9;

    .line 2
    .line 3
    iget-object p1, p2, Lxi9;->zzc:Lmn9;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lmn9;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final f(Lmg9;)I
    .locals 5

    .line 1
    check-cast p1, Lxi9;

    .line 2
    .line 3
    iget-object p0, p1, Lxi9;->zzc:Lmn9;

    .line 4
    .line 5
    iget p1, p0, Lmn9;->d:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    move v0, p1

    .line 12
    :goto_0
    iget v1, p0, Lmn9;->a:I

    .line 13
    .line 14
    if-ge p1, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lmn9;->b:[I

    .line 17
    .line 18
    aget v1, v1, p1

    .line 19
    .line 20
    ushr-int/lit8 v1, v1, 0x3

    .line 21
    .line 22
    iget-object v2, p0, Lmn9;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v2, v2, p1

    .line 25
    .line 26
    check-cast v2, Ldh9;

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    invoke-static {v3}, Lnh9;->n(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v3

    .line 35
    const/16 v4, 0x10

    .line 36
    .line 37
    invoke-static {v4}, Lnh9;->n(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v1}, Lnh9;->n(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, v4

    .line 46
    const/16 v4, 0x18

    .line 47
    .line 48
    invoke-static {v4}, Lnh9;->n(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2}, Ldh9;->f()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2, v2, v4}, Lu48;->t(III)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/2addr v3, v1

    .line 61
    add-int/2addr v3, v2

    .line 62
    add-int/2addr v0, v3

    .line 63
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iput v0, p0, Lmn9;->d:I

    .line 67
    .line 68
    return v0

    .line 69
    :cond_1
    return p1
.end method

.method public final zze()Lxi9;
    .locals 3

    .line 1
    iget-object p0, p0, Ltl9;->a:Lmg9;

    .line 2
    .line 3
    instance-of v0, p0, Lxi9;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lxi9;

    .line 8
    .line 9
    invoke-virtual {p0}, Lxi9;->n()Lxi9;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    check-cast p0, Lxi9;

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-virtual {p0, v0}, Lxi9;->j(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lri9;

    .line 22
    .line 23
    iget-object v0, p0, Lri9;->b:Lxi9;

    .line 24
    .line 25
    invoke-virtual {v0}, Lxi9;->h()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lri9;->b:Lxi9;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lbm9;->c:Lbm9;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Lbm9;->a(Ljava/lang/Class;)Ljm9;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, v1}, Ljm9;->zzf(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lxi9;->e()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lri9;->b:Lxi9;

    .line 54
    .line 55
    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Ltl9;->b:Lns0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object p0, p1

    .line 7
    check-cast p0, Lxi9;

    .line 8
    .line 9
    iget-object p0, p0, Lxi9;->zzc:Lmn9;

    .line 10
    .line 11
    iget-boolean v0, p0, Lmn9;->e:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lmn9;->e:Z

    .line 17
    .line 18
    :cond_0
    sget-object p0, Lji9;->a:Llk;

    .line 19
    .line 20
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    throw p0
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lnm9;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
