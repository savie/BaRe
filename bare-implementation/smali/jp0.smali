.class public final Ljp0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lkp0;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lgc8;

.field public final b:Lod;


# direct methods
.method public constructor <init>(Lgc8;Lod;Lx86;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljp0;->a:Lgc8;

    .line 5
    .line 6
    iput-object p2, p0, Ljp0;->b:Lod;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lod;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp0;->b:Lod;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Ls65;Ljava/lang/Class;)Lbk4;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ls65;->f(Ljava/lang/Class;)Lbk4;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Ljp0;->b:Lod;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p0}, Las5;->h(Ljb9;)Lbk4;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-object p2

    .line 21
    :cond_1
    invoke-virtual {p2, p0}, Lbk4;->c(Lbk4;)Lbk4;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final c(Ls65;Ljava/lang/Class;)Lqk4;
    .locals 2

    .line 1
    iget-object v0, p0, Ljp0;->a:Lgc8;

    .line 2
    .line 3
    iget-object v0, v0, Lgc8;->f:Ljava/lang/Class;

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Lt65;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 12
    .line 13
    .line 14
    iget-object p2, v1, Lt65;->k:Lmp7;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object p2, Lqk4;->e:Lqk4;

    .line 20
    .line 21
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Ljp0;->b:Lod;

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_0
    invoke-virtual {p1, p0}, Las5;->z(Ljb9;)Lqk4;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p2, p0}, Lqk4;->a(Lqk4;)Lqk4;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
