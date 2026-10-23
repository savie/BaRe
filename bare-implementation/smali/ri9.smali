.class public abstract Lri9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lxi9;

.field public b:Lxi9;


# direct methods
.method public constructor <init>(Lxi9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lri9;->a:Lxi9;

    .line 5
    .line 6
    invoke-virtual {p1}, Lxi9;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lxi9;->n()Lxi9;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lri9;->b:Lxi9;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "Default instance must be immutable."

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method


# virtual methods
.method public final a()Lxi9;
    .locals 3

    .line 1
    iget-object v0, p0, Lri9;->b:Lxi9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxi9;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lri9;->b:Lxi9;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lbm9;->c:Lbm9;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lbm9;->a(Ljava/lang/Class;)Ljm9;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, v1}, Ljm9;->zzf(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lxi9;->e()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lri9;->b:Lxi9;

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    invoke-static {v1, p0}, Lxi9;->i(Lxi9;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    new-instance p0, Ljn9;

    .line 45
    .line 46
    invoke-direct {p0}, Ljn9;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lri9;->b:Lxi9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxi9;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lri9;->a:Lxi9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lxi9;->n()Lxi9;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lri9;->b:Lxi9;

    .line 16
    .line 17
    sget-object v2, Lbm9;->c:Lbm9;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lbm9;->a(Ljava/lang/Class;)Ljm9;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2, v0, v1}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lri9;->b:Lxi9;

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lri9;->a:Lxi9;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lxi9;->j(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lri9;

    .line 9
    .line 10
    iget-object v1, p0, Lri9;->b:Lxi9;

    .line 11
    .line 12
    invoke-virtual {v1}, Lxi9;->h()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lri9;->b:Lxi9;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lbm9;->c:Lbm9;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Lbm9;->a(Ljava/lang/Class;)Ljm9;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, v2}, Ljm9;->zzf(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lxi9;->e()V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lri9;->b:Lxi9;

    .line 41
    .line 42
    :goto_0
    iput-object v2, v0, Lri9;->b:Lxi9;

    .line 43
    .line 44
    return-object v0
.end method
