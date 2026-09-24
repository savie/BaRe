.class public final Ljc4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmc4;


# instance fields
.field public a:Lmc4;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d()Lmc4;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lmc4;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getAttribute(Ljava/lang/String;)Lmc4;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getAttributes()Lxn5;
    .locals 1

    .line 1
    new-instance v0, Lnc4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnc4;-><init>(Ljc4;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljc4;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParent()Lmc4;
    .locals 0

    .line 1
    iget-object p0, p0, Ljc4;->a:Lmc4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPosition()Ltr9;
    .locals 0

    .line 1
    iget-object p0, p0, Ljc4;->a:Lmc4;

    .line 2
    .line 3
    invoke-interface {p0}, Lmc4;->getPosition()Ltr9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljc4;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ljc4;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Ljc4;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "=\'"

    .line 6
    .line 7
    const-string v2, "\'"

    .line 8
    .line 9
    const-string v3, "attribute "

    .line 10
    .line 11
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
