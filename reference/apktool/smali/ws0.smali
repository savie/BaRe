.class public abstract Lws0;
.super Lon5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c()Lon5;
    .locals 0

    .line 1
    iget-object p0, p0, Lon5;->a:Lon5;

    .line 2
    .line 3
    check-cast p0, Lws0;

    .line 4
    .line 5
    return-object p0
.end method

.method public final d(Lon5;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lws0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lon5;->a:Lon5;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Parent of block must also be block (can not be inline)"

    .line 9
    .line 10
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
