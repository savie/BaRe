.class public final Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic N:I


# instance fields
.field public final K:Lgv7;

.field public final L:Lgv7;

.field public final M:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lno5;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lno5;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->K:Lgv7;

    .line 16
    .line 17
    new-instance v0, Lqb5;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {v0, p0, v1}, Lqb5;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->L:Lgv7;

    .line 29
    .line 30
    new-instance v0, Ln55;

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, p0, v1}, Ln55;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->M:Lgv7;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->K:Lgv7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Loo5;

    .line 11
    .line 12
    iget-object v0, v0, Loo5;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Loo5;

    .line 22
    .line 23
    iget-object p1, p1, Loo5;->b:Lw00;

    .line 24
    .line 25
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lix0;

    .line 28
    .line 29
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->L:Lgv7;

    .line 47
    .line 48
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 53
    .line 54
    const/4 v1, 0x7

    .line 55
    invoke-static {p1, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2, v0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->M:Lgv7;

    .line 74
    .line 75
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lqo5;

    .line 80
    .line 81
    new-instance v1, Lnj2;

    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    invoke-direct {v1, v2, v0, p0}, Lnj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v0, Lqo5;->n:Lmt3;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lso5;->a:Lso5;

    .line 93
    .line 94
    invoke-virtual {p1}, Lso5;->a()V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lso5;->d:Lex6;

    .line 98
    .line 99
    new-instance v0, Lk3;

    .line 100
    .line 101
    const/16 v1, 0x10

    .line 102
    .line 103
    invoke-direct {v0, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lps0;

    .line 107
    .line 108
    const/4 v2, 0x3

    .line 109
    invoke-direct {v1, v2, v0}, Lps0;-><init>(ILmt3;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
