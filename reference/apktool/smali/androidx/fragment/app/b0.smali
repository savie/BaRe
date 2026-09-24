.class public abstract Landroidx/fragment/app/b0;
.super Low5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lur3;

.field public final c:I

.field public d:Landroidx/fragment/app/a;

.field public e:Landroidx/fragment/app/o;

.field public f:Z


# direct methods
.method public constructor <init>(Lur3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Low5;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/b0;->b:Lur3;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Landroidx/fragment/app/b0;->c:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/b0;->b:Lur3;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/fragment/app/a;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v1, p1, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/z;

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/o;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " is already attached to a FragmentManager."

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    :goto_0
    new-instance v1, Lds3;

    .line 63
    .line 64
    const/4 v2, 0x6

    .line 65
    invoke-direct {v1, v2, p1}, Lds3;-><init>(ILandroidx/fragment/app/o;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->b(Lds3;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 72
    .line 73
    if-eq p1, v0, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 78
    .line 79
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/fragment/app/b0;->f:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/b0;->f:Z

    .line 12
    .line 13
    iget-boolean v3, v0, Landroidx/fragment/app/a;->g:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iput-boolean v2, v0, Landroidx/fragment/app/a;->h:Z

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/z;

    .line 20
    .line 21
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/z;->A(Landroidx/fragment/app/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    iput-boolean v2, p0, Landroidx/fragment/app/b0;->f:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "This transaction is already being added to the back stack"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    iput-boolean v2, p0, Landroidx/fragment/app/b0;->f:Z

    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final e(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-object p0, p2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final f(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p1, "ViewPager with adapter "

    .line 10
    .line 11
    const-string v0, " requires a view id"

    .line 12
    .line 13
    invoke-static {p0, v0, p1}, Lf6;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public abstract g(I)Landroidx/fragment/app/o;
.end method
