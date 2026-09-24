.class public final Lav5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lev5;


# instance fields
.field public a:Lx46;

.field public b:Lev5;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final c()Lx46;
    .locals 0

    .line 1
    iget-object p0, p0, Lav5;->a:Lx46;

    .line 2
    .line 3
    return-object p0
.end method

.method public final commit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lav5;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getAttributes()Lxn5;
    .locals 1

    .line 1
    new-instance v0, Lfv5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfv5;-><init>(Lev5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lav5;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParent()Lev5;
    .locals 0

    .line 1
    iget-object p0, p0, Lav5;->b:Lev5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lav5;->a:Lx46;

    .line 2
    .line 3
    iget-object p0, p0, Lav5;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lx46;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lav5;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Z)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lav5;->a:Lx46;

    .line 2
    .line 3
    iget-object p0, p0, Lav5;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lx46;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lev5;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final j()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)Lev5;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lav5;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lav5;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lav5;->d:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lav5;->e:Ljava/lang/String;

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
