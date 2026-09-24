.class public final Lmh6;
.super Lyg7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final G:Lgc8;

.field public final H:Lgc8;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9

    .line 1
    invoke-static {p5}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object/from16 v6, p7

    .line 11
    .line 12
    move-object/from16 v7, p8

    .line 13
    .line 14
    move/from16 v8, p9

    .line 15
    .line 16
    invoke-direct/range {v0 .. v8}, Lgc8;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 17
    .line 18
    .line 19
    iput-object p5, p0, Lmh6;->G:Lgc8;

    .line 20
    .line 21
    if-nez p6, :cond_0

    .line 22
    .line 23
    move-object p6, p0

    .line 24
    :cond_0
    iput-object p6, p0, Lmh6;->H:Lgc8;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final B0(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;)Lgc8;
    .locals 10

    .line 1
    new-instance v0, Lmh6;

    .line 2
    .line 3
    iget-object v8, p0, Lgc8;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v9, p0, Lgc8;->q:Z

    .line 6
    .line 7
    iget-object v2, p0, Lgc8;->x:Ljc8;

    .line 8
    .line 9
    iget-object v5, p0, Lmh6;->G:Lgc8;

    .line 10
    .line 11
    iget-object v6, p0, Lmh6;->H:Lgc8;

    .line 12
    .line 13
    iget-object v7, p0, Lgc8;->n:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    move-object v3, p3

    .line 17
    move-object v4, p4

    .line 18
    invoke-direct/range {v0 .. v9}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final C()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final D0(Lgc8;)Lgc8;
    .locals 11

    .line 1
    iget-object v0, p0, Lmh6;->G:Lgc8;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lmh6;

    .line 7
    .line 8
    iget-object v9, p0, Lgc8;->p:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean v10, p0, Lgc8;->q:Z

    .line 11
    .line 12
    iget-object v2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object v3, p0, Lgc8;->x:Ljc8;

    .line 15
    .line 16
    iget-object v4, p0, Lgc8;->r:Lgc8;

    .line 17
    .line 18
    iget-object v5, p0, Lgc8;->t:[Lgc8;

    .line 19
    .line 20
    iget-object v7, p0, Lmh6;->H:Lgc8;

    .line 21
    .line 22
    iget-object v8, p0, Lgc8;->n:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v6, p1

    .line 25
    invoke-direct/range {v1 .. v10}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public final E0(Lsc8;)Lgc8;
    .locals 12

    .line 1
    iget-object v0, p0, Lmh6;->G:Lgc8;

    .line 2
    .line 3
    iget-object v1, v0, Lgc8;->p:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v2, Lmh6;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lgc8;->H0(Ljava/lang/Object;)Lgc8;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    iget-object v10, p0, Lgc8;->p:Ljava/lang/Object;

    .line 15
    .line 16
    iget-boolean v11, p0, Lgc8;->q:Z

    .line 17
    .line 18
    iget-object v3, p0, Lgc8;->f:Ljava/lang/Class;

    .line 19
    .line 20
    iget-object v4, p0, Lgc8;->x:Ljc8;

    .line 21
    .line 22
    iget-object v5, p0, Lgc8;->r:Lgc8;

    .line 23
    .line 24
    iget-object v6, p0, Lgc8;->t:[Lgc8;

    .line 25
    .line 26
    iget-object v8, p0, Lmh6;->H:Lgc8;

    .line 27
    .line 28
    iget-object v9, p0, Lgc8;->n:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct/range {v2 .. v11}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 31
    .line 32
    .line 33
    return-object v2
.end method

.method public final bridge synthetic G0()Lgc8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmh6;->N0()Lmh6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final H0(Ljava/lang/Object;)Lgc8;
    .locals 11

    .line 1
    iget-object v0, p0, Lgc8;->p:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lmh6;

    .line 7
    .line 8
    iget-object v8, p0, Lgc8;->n:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean v10, p0, Lgc8;->q:Z

    .line 11
    .line 12
    iget-object v2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object v3, p0, Lgc8;->x:Ljc8;

    .line 15
    .line 16
    iget-object v4, p0, Lgc8;->r:Lgc8;

    .line 17
    .line 18
    iget-object v5, p0, Lgc8;->t:[Lgc8;

    .line 19
    .line 20
    iget-object v6, p0, Lmh6;->G:Lgc8;

    .line 21
    .line 22
    iget-object v7, p0, Lmh6;->H:Lgc8;

    .line 23
    .line 24
    move-object v9, p1

    .line 25
    invoke-direct/range {v1 .. v10}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public final I0(Ljava/lang/Object;)Lgc8;
    .locals 11

    .line 1
    iget-object v0, p0, Lgc8;->n:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lmh6;

    .line 7
    .line 8
    iget-object v9, p0, Lgc8;->p:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean v10, p0, Lgc8;->q:Z

    .line 11
    .line 12
    iget-object v2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object v3, p0, Lgc8;->x:Ljc8;

    .line 15
    .line 16
    iget-object v4, p0, Lgc8;->r:Lgc8;

    .line 17
    .line 18
    iget-object v5, p0, Lgc8;->t:[Lgc8;

    .line 19
    .line 20
    iget-object v6, p0, Lmh6;->G:Lgc8;

    .line 21
    .line 22
    iget-object v7, p0, Lmh6;->H:Lgc8;

    .line 23
    .line 24
    move-object v8, p1

    .line 25
    invoke-direct/range {v1 .. v10}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public final bridge synthetic K0()Lyg7;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmh6;->N0()Lmh6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final L0(Ljava/lang/Object;)Lyg7;
    .locals 11

    .line 1
    iget-object v0, p0, Lgc8;->p:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lmh6;

    .line 7
    .line 8
    iget-object v8, p0, Lgc8;->n:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean v10, p0, Lgc8;->q:Z

    .line 11
    .line 12
    iget-object v2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object v3, p0, Lgc8;->x:Ljc8;

    .line 15
    .line 16
    iget-object v4, p0, Lgc8;->r:Lgc8;

    .line 17
    .line 18
    iget-object v5, p0, Lgc8;->t:[Lgc8;

    .line 19
    .line 20
    iget-object v6, p0, Lmh6;->G:Lgc8;

    .line 21
    .line 22
    iget-object v7, p0, Lmh6;->H:Lgc8;

    .line 23
    .line 24
    move-object v9, p1

    .line 25
    invoke-direct/range {v1 .. v10}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public final M0(Ljava/lang/Object;)Lyg7;
    .locals 11

    .line 1
    iget-object v0, p0, Lgc8;->n:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lmh6;

    .line 7
    .line 8
    iget-object v9, p0, Lgc8;->p:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean v10, p0, Lgc8;->q:Z

    .line 11
    .line 12
    iget-object v2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object v3, p0, Lgc8;->x:Ljc8;

    .line 15
    .line 16
    iget-object v4, p0, Lgc8;->r:Lgc8;

    .line 17
    .line 18
    iget-object v5, p0, Lgc8;->t:[Lgc8;

    .line 19
    .line 20
    iget-object v6, p0, Lmh6;->G:Lgc8;

    .line 21
    .line 22
    iget-object v7, p0, Lmh6;->H:Lgc8;

    .line 23
    .line 24
    move-object v8, p1

    .line 25
    invoke-direct/range {v1 .. v10}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public final N0()Lmh6;
    .locals 11

    .line 1
    iget-boolean v0, p0, Lgc8;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lmh6;

    .line 7
    .line 8
    iget-object v0, p0, Lmh6;->G:Lgc8;

    .line 9
    .line 10
    invoke-virtual {v0}, Lgc8;->G0()Lgc8;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    iget-object v9, p0, Lgc8;->p:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v10, 0x1

    .line 17
    iget-object v2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 18
    .line 19
    iget-object v3, p0, Lgc8;->x:Ljc8;

    .line 20
    .line 21
    iget-object v4, p0, Lgc8;->r:Lgc8;

    .line 22
    .line 23
    iget-object v5, p0, Lgc8;->t:[Lgc8;

    .line 24
    .line 25
    iget-object v7, p0, Lmh6;->H:Lgc8;

    .line 26
    .line 27
    iget-object v8, p0, Lgc8;->n:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct/range {v1 .. v10}, Lmh6;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, Lmh6;

    .line 14
    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Lmh6;

    .line 19
    .line 20
    iget-object v1, p1, Lgc8;->f:Ljava/lang/Class;

    .line 21
    .line 22
    iget-object v2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 23
    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    return v0

    .line 27
    :cond_3
    iget-object p0, p0, Lmh6;->G:Lgc8;

    .line 28
    .line 29
    iget-object p1, p1, Lmh6;->G:Lgc8;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lgc8;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final l0()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lgc8;->f:Ljava/lang/Class;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lmh6;->G:Lgc8;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p0, v2}, Lgc8;->k0(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/16 p0, 0x3c

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lgc8;->C0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 p0, 0x3e

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final o0()Lgc8;
    .locals 0

    .line 1
    iget-object p0, p0, Lmh6;->G:Lgc8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final p0(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object p0, p0, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, v0}, Lgc8;->j0(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)V

    .line 5
    .line 6
    .line 7
    return-object p1
.end method

.method public final q0(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Lgc8;->j0(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x3c

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lmh6;->G:Lgc8;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lgc8;->q0(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, ">;"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public final s0()Lgc8;
    .locals 0

    .line 1
    iget-object p0, p0, Lmh6;->G:Lgc8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "[reference type, class "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lmh6;->l0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x3c

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lmh6;->G:Lgc8;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ">]"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final x()Lgc8;
    .locals 0

    .line 1
    iget-object p0, p0, Lmh6;->G:Lgc8;

    .line 2
    .line 3
    return-object p0
.end method
