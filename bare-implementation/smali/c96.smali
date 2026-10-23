.class public final Lc96;
.super Ld96;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lco4;
.implements Lqt3;


# virtual methods
.method public final c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld96;->b()Lco4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lc96;

    .line 6
    .line 7
    invoke-virtual {p0}, Lc96;->c()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final computeReflected()Lrn4;
    .locals 1

    .line 1
    sget-object v0, Lph6;->a:Lqh6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc96;->c()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method
