.class public final Lrs5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lts5;

.field public final b:Lov2;

.field public final c:Lov2;

.field public d:Z

.field public e:Lf41;

.field public final f:Lss5;

.field public g:Z


# direct methods
.method public constructor <init>(Lss5;Lts5;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lss5;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lrs5;->a:Lts5;

    .line 9
    .line 10
    sget-object p2, Lov2;->a:Lov2;

    .line 11
    .line 12
    iput-object p2, p0, Lrs5;->b:Lov2;

    .line 13
    .line 14
    iput-object p2, p0, Lrs5;->c:Lov2;

    .line 15
    .line 16
    iput-boolean v0, p0, Lrs5;->d:Z

    .line 17
    .line 18
    iput-object p1, p0, Lrs5;->f:Lss5;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lrs5;->g:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrs5;->e:Lf41;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, Lf41;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v0, v0, Lf41;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lsl5;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lsl5;->f:Lrs5;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eq p0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget v1, v0, Lsl5;->g:I

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lrs5;->f:Lss5;

    .line 35
    .line 36
    invoke-virtual {v1}, Lss5;->handleOnBackCancelled()V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-object v2, v0, Lsl5;->f:Lrs5;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput v1, v0, Lsl5;->g:I

    .line 43
    .line 44
    iput-object v2, v0, Lsl5;->h:Lrl5;

    .line 45
    .line 46
    :goto_1
    iget-object v1, v0, Lsl5;->d:Lw40;

    .line 47
    .line 48
    invoke-virtual {v1, p0}, Lw40;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lsl5;->e:Lw40;

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Lw40;->remove(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lrs5;->e:Lf41;

    .line 57
    .line 58
    invoke-virtual {v0}, Lsl5;->b()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lrs5;->g:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lrs5;->f:Lss5;

    .line 6
    .line 7
    invoke-virtual {p1}, Lss5;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-boolean v0, p0, Lrs5;->d:Z

    .line 17
    .line 18
    if-ne v0, p1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-boolean p1, p0, Lrs5;->d:Z

    .line 22
    .line 23
    iget-object p0, p0, Lrs5;->e:Lf41;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lf41;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lsl5;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lsl5;->b()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    return-void
.end method
