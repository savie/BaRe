.class public final Ly30;
.super Lnd6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnd6<",
        "Lz30;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ll90;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnd6;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt30;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lt30;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lu30;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Lu30;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lys4;->c:Lys4;

    .line 16
    .line 17
    invoke-static {v0, v2}, Ljd4;->x(Lys4;Lbt3;)Los4;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-class v2, La40;

    .line 22
    .line 23
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lv30;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1}, Lv30;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lw30;

    .line 33
    .line 34
    invoke-direct {v4, v0, v1}, Lw30;-><init>(Los4;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lx30;

    .line 38
    .line 39
    invoke-direct {v5, p0, v0, v1}, Lx30;-><init>(Lrl0;Los4;I)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ll90;

    .line 43
    .line 44
    invoke-direct {v0, v2, v3, v5, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Ly30;->d:Ll90;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0d0039

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    const p2, 0x7f0a01bd

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-static {p3}, Lxc6;->a(Landroid/view/View;)Lxc6;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const p2, 0x7f0a01be

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-static {p3}, Lxc6;->a(Landroid/view/View;)Lxc6;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const p2, 0x7f0a01bf

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    if-eqz p3, :cond_0

    .line 49
    .line 50
    invoke-static {p3}, Lxc6;->a(Landroid/view/View;)Lxc6;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v0, Lz30;

    .line 55
    .line 56
    move-object v2, v1

    .line 57
    invoke-direct/range {v0 .. v5}, Lz30;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;Lxc6;Lxc6;Lxc6;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lrl0;->b:Ljk8;

    .line 61
    .line 62
    invoke-virtual {v0}, Lz30;->getRoot()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "Missing required view with ID: "

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lnd6;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lrl0;->b:Ljk8;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast p1, Lz30;

    .line 13
    .line 14
    iget-object p1, p1, Lz30;->b:Landroidx/core/widget/NestedScrollView;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x7

    .line 20
    invoke-static {p1, p2}, Lsz8;->b(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Ly30;->d:Ll90;

    .line 24
    .line 25
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, La40;

    .line 30
    .line 31
    iget-object p2, p2, La40;->e:Lex6;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Llm;

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    invoke-direct {v1, p0, v2}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ls30;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v2, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, La40;

    .line 57
    .line 58
    iget-object p2, p2, La40;->f:Lex6;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lw20;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-direct {v1, p0, v2}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Ls30;

    .line 71
    .line 72
    invoke-direct {v2, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, La40;

    .line 83
    .line 84
    iget-object p1, p1, La40;->g:Lex6;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    new-instance v0, Lc7;

    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    invoke-direct {v0, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    new-instance p0, Ls30;

    .line 97
    .line 98
    invoke-direct {p0, v3, v0}, Ls30;-><init>(ILmt3;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
