.class public abstract Lvz7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Luq4;


# instance fields
.field public final a:Ltr9;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ltr9;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lvz7;->a:Ltr9;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public b()Lvb8;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Luq4;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Luq4;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lvz7;->a:Ltr9;

    .line 2
    .line 3
    iget-object v0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lvz7;

    .line 6
    .line 7
    invoke-interface {v0}, Luq4;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Ltr9;->d(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 v0, 0x3

    .line 20
    invoke-virtual {p0, v0}, Ltr9;->d(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public h()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lx70;

    .line 2
    .line 3
    return p0
.end method

.method public i()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lht2;

    .line 2
    .line 3
    return p0
.end method

.method public isInline()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lj18;

    .line 2
    .line 3
    return p0
.end method

.method public j()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lj18;

    .line 2
    .line 3
    return p0
.end method

.method public l(Ljava/lang/Class;)Lvb8;
    .locals 0

    .line 1
    invoke-interface {p0}, Luq4;->k()Lau1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public m()[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0}, Luq4;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public n(Ljava/lang/Class;)Luq4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public p()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lo18;

    .line 2
    .line 3
    return p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public s()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lkt2;

    .line 2
    .line 3
    return p0
.end method
