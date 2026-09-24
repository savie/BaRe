.class public final Leg7;
.super Llp0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final b:Lod;

.field public final c:Lx86;

.field public final d:Lz86;

.field public final e:Lqk4;


# direct methods
.method public constructor <init>(Las5;Lod;Lz86;Lx86;Lqk4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Leg7;->b:Lod;

    .line 5
    .line 6
    iput-object p3, p0, Leg7;->d:Lz86;

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    .line 10
    sget-object p4, Lx86;->p:Lx86;

    .line 11
    .line 12
    :cond_0
    iput-object p4, p0, Leg7;->c:Lx86;

    .line 13
    .line 14
    iput-object p5, p0, Leg7;->e:Lqk4;

    .line 15
    .line 16
    return-void
.end method

.method public static t(Ls65;Lhn8;Lz86;Lx86;Lpk4;)Leg7;
    .locals 7

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    sget-object v0, Lpk4;->e:Lpk4;

    .line 4
    .line 5
    if-ne p4, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    sget-object v1, Lqk4;->e:Lqk4;

    .line 9
    .line 10
    if-eq p4, v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lqk4;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p4, v1, v1, v1}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Lqk4;->e:Lqk4;

    .line 20
    .line 21
    :goto_0
    move-object v6, v0

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    sget-object v0, Llp0;->a:Lqk4;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_2
    new-instance v1, Leg7;

    .line 27
    .line 28
    invoke-virtual {p0}, Ls65;->d()Las5;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v3, p1

    .line 33
    move-object v4, p2

    .line 34
    move-object v5, p3

    .line 35
    invoke-direct/range {v1 .. v6}, Leg7;-><init>(Las5;Lod;Lz86;Lx86;Lqk4;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method


# virtual methods
.method public final b()Lqk4;
    .locals 0

    .line 1
    iget-object p0, p0, Leg7;->e:Lqk4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ltd;
    .locals 1

    .line 1
    iget-object p0, p0, Leg7;->b:Lod;

    .line 2
    .line 3
    instance-of v0, p0, Ltd;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Ltd;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final g()Lld;
    .locals 1

    .line 1
    iget-object p0, p0, Leg7;->b:Lod;

    .line 2
    .line 3
    instance-of v0, p0, Lld;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lld;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final h()Lpd;
    .locals 1

    .line 1
    iget-object p0, p0, Leg7;->b:Lod;

    .line 2
    .line 3
    instance-of v0, p0, Lpd;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lpd;

    .line 8
    .line 9
    iget-object v0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final i()Lx86;
    .locals 0

    .line 1
    iget-object p0, p0, Leg7;->c:Lx86;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Leg7;->d:Lz86;

    .line 2
    .line 3
    iget-object p0, p0, Lz86;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final k()Lgc8;
    .locals 0

    .line 1
    iget-object p0, p0, Leg7;->b:Lod;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljb9;->D()Lgc8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final l()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Leg7;->b:Lod;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljb9;->C()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final o()Lpd;
    .locals 2

    .line 1
    iget-object p0, p0, Leg7;->b:Lod;

    .line 2
    .line 3
    instance-of v0, p0, Lpd;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lpd;

    .line 8
    .line 9
    iget-object v0, p0, Lpd;->P:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final p()V
    .locals 0

    .line 1
    return-void
.end method

.method public final r()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
