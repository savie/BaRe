.class public Lkt2;
.super Lvz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lny1;

.field public c:Ls03;

.field public final d:Lau1;

.field public final e:Lht2;


# direct methods
.method public constructor <init>(Lau1;Ljt2;Lgt2;Lvq3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lvz7;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lht2;

    .line 5
    .line 6
    invoke-direct {v0, p1, p3, p4}, Lht2;-><init>(Lau1;Lgt2;Lvq3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkt2;->e:Lht2;

    .line 10
    .line 11
    new-instance p3, Lny1;

    .line 12
    .line 13
    invoke-direct {p3, p1, p2, p4}, Lny1;-><init>(Lau1;Ljava/lang/annotation/Annotation;Lvq3;)V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lkt2;->b:Lny1;

    .line 17
    .line 18
    iput-object p1, p0, Lkt2;->d:Lau1;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lht2;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b()Lvb8;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lht2;->b()Lvb8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-object p0, p0, Lht2;->d:Lgt2;

    .line 4
    .line 5
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-object p0, p0, Lht2;->g:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-object p0, p0, Lht2;->b:Lfu;

    .line 4
    .line 5
    return-object p0
.end method

.method public final f()Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Lkt2;->c:Ls03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lkt2;->e:Lht2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lht2;->f()Ls03;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lkt2;->c:Ls03;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lkt2;->c:Ls03;

    .line 14
    .line 15
    return-object p0
.end method

.method public final g()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->b:Lny1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lny1;->b()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lht2;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-object p0, p0, Lht2;->k:Ljava/lang/Class;

    .line 4
    .line 5
    return-object p0
.end method

.method public final i()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final isInline()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-boolean p0, p0, Lht2;->n:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-boolean p0, p0, Lht2;->m:Z

    .line 4
    .line 5
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->d:Lau1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(Ljava/lang/Class;)Lvb8;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->d:Lau1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->b:Lny1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lny1;->c()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final n(Ljava/lang/Class;)Luq4;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final o(Lai5;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lht2;->o(Lai5;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final p()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->b:Lny1;

    .line 2
    .line 3
    iget-object p0, p0, Lny1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lq14;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final q(Lai5;)Lbw1;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkt2;->f()Ls03;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lkt2;->d:Lau1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Ldp1;

    .line 10
    .line 11
    iget-object p0, p0, Lkt2;->b:Lny1;

    .line 12
    .line 13
    invoke-direct {v2, p1, p0, v0, v1}, Ldp1;-><init>(Lai5;Lny1;Ls03;Lvb8;)V

    .line 14
    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    new-instance p1, Lwt1;

    .line 18
    .line 19
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 20
    .line 21
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "Union %s was not declared on a field or method"

    .line 26
    .line 27
    invoke-direct {p1, v0, p0}, Lwt1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lht2;->r()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final t()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-boolean p0, p0, Lht2;->o:Z

    .line 4
    .line 5
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkt2;->e:Lht2;

    .line 2
    .line 3
    iget-object p0, p0, Lht2;->c:Lbs2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lbs2;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
