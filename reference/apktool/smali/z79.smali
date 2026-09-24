.class public final Lz79;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le89;


# instance fields
.field public final a:Lo69;


# direct methods
.method public constructor <init>(Lo69;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz79;->a:Lo69;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lxs1;->r(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final b(Lk79;Lk79;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Lk79;->zzb:Ll89;

    .line 2
    .line 3
    iget-object p1, p2, Lk79;->zzb:Ll89;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll89;->equals(Ljava/lang/Object;)Z

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

.method public final c(Ljava/lang/Object;Ljq6;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lxs1;->r(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final d(Lk79;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lk79;->zzb:Ll89;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll89;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Lk79;

    .line 3
    .line 4
    iget-object p0, p0, Lk79;->zzb:Ll89;

    .line 5
    .line 6
    iget-boolean v0, p0, Ll89;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Ll89;->e:Z

    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Lxs1;->r(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public final f(Ljava/lang/Object;[BIILs69;)V
    .locals 0

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Lk79;

    .line 3
    .line 4
    iget-object p2, p0, Lk79;->zzb:Ll89;

    .line 5
    .line 6
    sget-object p3, Ll89;->f:Ll89;

    .line 7
    .line 8
    if-ne p2, p3, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ll89;->e()Ll89;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lk79;->zzb:Ll89;

    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    throw p0
.end method

.method public final g(Lk79;)I
    .locals 6

    .line 1
    iget-object p0, p1, Lk79;->zzb:Ll89;

    .line 2
    .line 3
    iget p1, p0, Ll89;->d:I

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    move v0, p1

    .line 11
    :goto_0
    iget v1, p0, Ll89;->a:I

    .line 12
    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Ll89;->b:[I

    .line 16
    .line 17
    aget v1, v1, p1

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    ushr-int/2addr v1, v2

    .line 21
    iget-object v3, p0, Ll89;->c:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v3, v3, p1

    .line 24
    .line 25
    check-cast v3, Lt69;

    .line 26
    .line 27
    const/16 v4, 0x8

    .line 28
    .line 29
    invoke-static {v4}, Lc79;->t(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    shl-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    const/16 v5, 0x10

    .line 36
    .line 37
    invoke-static {v5}, Lc79;->t(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v1, v5, v4}, Lu48;->h(III)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v2, v3}, Lc79;->n(ILt69;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v2, v1

    .line 50
    add-int/2addr v0, v2

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iput v0, p0, Ll89;->d:I

    .line 55
    .line 56
    return v0
.end method

.method public final h(Ljava/lang/Object;Llb4;Lf79;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lnh4;->u(Ljava/lang/Object;)Ll89;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Ljava/lang/ClassCastException;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 10
    .line 11
    .line 12
    throw p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lxh8;->J(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zza()Lk79;
    .locals 2

    .line 1
    iget-object p0, p0, Lz79;->a:Lo69;

    .line 2
    .line 3
    instance-of v0, p0, Lk79;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lk79;

    .line 8
    .line 9
    invoke-virtual {p0}, Lk79;->p()Lk79;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    check-cast p0, Lk79;

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-virtual {p0, v0}, Lk79;->d(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lj79;

    .line 22
    .line 23
    iget-object v0, p0, Lj79;->b:Lk79;

    .line 24
    .line 25
    invoke-virtual {v0}, Lk79;->s()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {v1}, Lk79;->q()V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lj79;->b:Lk79;

    .line 38
    .line 39
    return-object p0
.end method
