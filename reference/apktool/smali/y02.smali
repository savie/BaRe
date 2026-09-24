.class public abstract Ly02;
.super Lfw0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly02$a;
    }
.end annotation


# instance fields
.field protected f:Z

.field protected g:Lz02$b;

.field protected h:Lz02$a;

.field protected i:Ljx7;

.field protected j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lfw0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ly02;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfw0;-><init>(Lfw0;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Ly02;->f:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Ly02;->f:Z

    .line 7
    .line 8
    iget-object v0, p1, Ly02;->g:Lz02$b;

    .line 9
    .line 10
    iput-object v0, p0, Ly02;->g:Lz02$b;

    .line 11
    .line 12
    iget-object v0, p1, Ly02;->h:Lz02$a;

    .line 13
    .line 14
    iput-object v0, p0, Ly02;->h:Lz02$a;

    .line 15
    .line 16
    iget-object v0, p1, Ly02;->i:Ljx7;

    .line 17
    .line 18
    iput-object v0, p0, Ly02;->i:Ljx7;

    .line 19
    .line 20
    iget-boolean p1, p1, Ly02;->j:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Ly02;->j:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ly02;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lfw0;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Ly02;

    .line 19
    .line 20
    iget-boolean v1, p0, Ly02;->f:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Ly02;->f:Z

    .line 23
    .line 24
    if-ne v1, v3, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Ly02;->g:Lz02$b;

    .line 27
    .line 28
    iget-object v3, p1, Ly02;->g:Lz02$b;

    .line 29
    .line 30
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Ly02;->h:Lz02$a;

    .line 37
    .line 38
    iget-object v3, p1, Ly02;->h:Lz02$a;

    .line 39
    .line 40
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Ly02;->i:Ljx7;

    .line 47
    .line 48
    iget-object v3, p1, Ly02;->i:Ljx7;

    .line 49
    .line 50
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-boolean p0, p0, Ly02;->j:Z

    .line 57
    .line 58
    iget-boolean p1, p1, Ly02;->j:Z

    .line 59
    .line 60
    if-ne p0, p1, :cond_3

    .line 61
    .line 62
    return v0

    .line 63
    :cond_3
    return v2
.end method

.method public h()Lz02$a;
    .locals 0

    .line 1
    iget-object p0, p0, Ly02;->h:Lz02$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-super {p0}, Lfw0;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v0, p0, Ly02;->f:Z

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Ly02;->g:Lz02$b;

    .line 16
    .line 17
    iget-object v4, p0, Ly02;->h:Lz02$a;

    .line 18
    .line 19
    iget-object v5, p0, Ly02;->i:Ljx7;

    .line 20
    .line 21
    iget-boolean p0, p0, Ly02;->j:Z

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public i()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ly02;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public j()Lz02$b;
    .locals 0

    .line 1
    iget-object p0, p0, Ly02;->g:Lz02$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public k()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ly02;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public l()Ljx7;
    .locals 0

    .line 1
    iget-object p0, p0, Ly02;->i:Ljx7;

    .line 2
    .line 3
    return-object p0
.end method
