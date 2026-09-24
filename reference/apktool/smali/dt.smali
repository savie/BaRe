.class public abstract Ldt;
.super Ler6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public X:Lbt;

.field public Y:Z

.field public Z:Lsc3;

.field public final a0:Lgv7;

.field public final b0:Lgv7;

.field public final c0:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ler6;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lak;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Ldt;->a0:Lgv7;

    .line 16
    .line 17
    new-instance v0, Lbk;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Ldt;->b0:Lgv7;

    .line 29
    .line 30
    new-instance v0, Lck;

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, p0, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lgv7;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Ldt;->c0:Lgv7;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final Y()Lbt;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt;->X:Lbt;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "mCurrentSection"

    .line 7
    .line 8
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final Z()Lw45;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt;->c0:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw45;

    .line 8
    .line 9
    return-object p0
.end method

.method public abstract a0()Let;
.end method

.method public final b0()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldt;->Y()Lbt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lbt;->isCloudSection()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public abstract c0()V
.end method

.method public final d0(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldt;->a0:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    check-cast v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 27
    .line 28
    iget-object v1, p0, Ldt;->b0:Lgv7;

    .line 29
    .line 30
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lk10;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ldt;->a0()Let;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Let;->f:Lex6;

    .line 44
    .line 45
    new-instance v1, Lxs;

    .line 46
    .line 47
    invoke-direct {v1, v2, p0, p1}, Lxs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljs;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-direct {p1, v2, v1}, Ljs;-><init>(ILmt3;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0, p1}, Lzy4;->e(Lfu4;Les5;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public e0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f0(Lq05;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lct;->a:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne p1, v2, :cond_0

    .line 18
    .line 19
    new-instance p1, Lah;

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-direct {p1, p0, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, p1, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    instance-of p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    move-object p1, p0

    .line 38
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 39
    .line 40
    invoke-virtual {p1}, Ldt;->Y()Lbt;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lbt;->isLocalSection()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 52
    .line 53
    .line 54
    :cond_3
    sget-object p1, Lbt;->LOCAL:Lbt;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-object v1, Lbt;->CLOUD:Lbt;

    .line 60
    .line 61
    if-ne p1, v1, :cond_4

    .line 62
    .line 63
    sget-object p1, Ltb1;->a:Ltb1;

    .line 64
    .line 65
    invoke-static {}, Lqb1;->m()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    move-object v0, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    move-object v0, p1

    .line 74
    :cond_5
    :goto_0
    new-instance p1, Landroid/content/Intent;

    .line 75
    .line 76
    const-class v1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 77
    .line 78
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "KEY_SECTION"

    .line 82
    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    const/16 v0, 0x66

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x65

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    filled-new-array {v1, v3}, [Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    if-ne p2, v1, :cond_5

    .line 33
    .line 34
    if-eqz p3, :cond_5

    .line 35
    .line 36
    const-string p2, "labels_extra_filtered_ids"

    .line 37
    .line 38
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 p3, 0x0

    .line 43
    if-nez p2, :cond_0

    .line 44
    .line 45
    new-array p2, p3, [Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    invoke-static {p2}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eq p1, v2, :cond_4

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Ldt;->Z:Lsc3;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    sget-object v0, Lxd3;->a:Lxd3;

    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Lxd3;->g(Ljava/util/Set;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v0}, Lod3;->reset()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0, p3}, Lsc3;->n(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const-string p0, "_filterBottomDialog not initialized"

    .line 79
    .line 80
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    new-instance p0, Lio5;

    .line 85
    .line 86
    const-string p2, "onLabelsSelected: Request code \'"

    .line 87
    .line 88
    const-string p3, "\' not implemented"

    .line 89
    .line 90
    invoke-static {p1, p2, p3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_4
    sget-object p1, Lud3;->a:Lud3;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lud3;->h(Ljava/util/Set;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ldt;->c0()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    invoke-super {p0, p1, p2, p3}, Ler6;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Liy;->b:Lex6;

    .line 5
    .line 6
    new-instance v0, Lk3;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljs;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v2, v0}, Ljs;-><init>(ILmt3;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final s()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
