.class public final Lwb7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lhy5;
.implements Lul0;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Z

.field public final c:Lc35;

.field public final d:Ldc7;

.field public e:Z

.field public final f:Llp1;


# direct methods
.method public constructor <init>(Lc35;Lam0;Lnc7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwb7;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Llp1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Llp1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lwb7;->f:Llp1;

    .line 18
    .line 19
    iget-boolean v0, p3, Lnc7;->d:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lwb7;->b:Z

    .line 22
    .line 23
    iput-object p1, p0, Lwb7;->c:Lc35;

    .line 24
    .line 25
    iget-object p1, p3, Lnc7;->c:Lhc;

    .line 26
    .line 27
    invoke-virtual {p1}, Lhc;->n()Lyl0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    move-object p3, p1

    .line 32
    check-cast p3, Ldc7;

    .line 33
    .line 34
    iput-object p3, p0, Lwb7;->d:Ldc7;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lam0;->g(Lyl0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lwb7;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, Lwb7;->a:Landroid/graphics/Path;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lwb7;->b:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-boolean v2, p0, Lwb7;->e:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    iget-object v0, p0, Lwb7;->d:Ldc7;

    .line 20
    .line 21
    invoke-virtual {v0}, Lyl0;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/graphics/Path;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lwb7;->f:Llp1;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Llp1;->a(Landroid/graphics/Path;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v2, p0, Lwb7;->e:Z

    .line 44
    .line 45
    return-object v1
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lwb7;->e:Z

    .line 3
    .line 4
    iget-object p0, p0, Lwb7;->c:Lc35;

    .line 5
    .line 6
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lgu1;

    .line 16
    .line 17
    instance-of v1, v0, Lnb8;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lnb8;

    .line 22
    .line 23
    iget v1, v0, Lnb8;->c:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lwb7;->f:Llp1;

    .line 29
    .line 30
    iget-object v1, v1, Llp1;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lnb8;->d(Lul0;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method
