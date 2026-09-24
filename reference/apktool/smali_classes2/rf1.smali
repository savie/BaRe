.class public final Lrf1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le61;


# virtual methods
.method public final a(Leb2;)V
    .locals 1

    .line 1
    sget-object p0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance p0, Lgj;

    .line 4
    .line 5
    const/16 v0, 0xe

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Leb2;)V
    .locals 1

    .line 1
    sget-object p0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance p0, Lfj;

    .line 4
    .line 5
    const/16 v0, 0xf

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(Leb2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Leb2;)V
    .locals 1

    .line 1
    sget-object p0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance p0, Lak;

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onCancelled(Lwc2;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    sget-object p0, Lsf1;->g:Lsf1;

    .line 7
    .line 8
    iget-object v1, p0, Ldv;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p1, Lwc2;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
