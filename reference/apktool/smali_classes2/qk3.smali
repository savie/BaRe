.class public final Lqk3;
.super Lu35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic T:I


# instance fields
.field public final Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

.field public final R:Lgv7;

.field public final S:Lgv7;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)V
    .locals 4

    .line 1
    const v0, 0x7f0d00aa

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v2, 0x7f0a03e6

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    new-instance v1, Lrk3;

    .line 21
    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-direct {v1, v0, v3}, Lrk3;-><init>(Landroid/widget/LinearLayout;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0xc

    .line 28
    .line 29
    invoke-direct {p0, p1, v1, v0}, Lu35;-><init>(Lk28;Ljk8;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lqk3;->Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 33
    .line 34
    new-instance p1, Lbh;

    .line 35
    .line 36
    const/16 v0, 0x17

    .line 37
    .line 38
    invoke-direct {p1, p0, v0}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lgv7;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lgv7;-><init>(Lbt3;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lqk3;->R:Lgv7;

    .line 47
    .line 48
    new-instance p1, Ld76;

    .line 49
    .line 50
    invoke-direct {p1, p0, v0}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lgv7;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lqk3;->S:Lgv7;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "Missing required view with ID: "

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1
.end method


# virtual methods
.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lu35;->K:Ljk8;

    .line 2
    .line 3
    check-cast v0, Lrk3;

    .line 4
    .line 5
    iget-object v0, v0, Lrk3;->a:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    new-instance v1, Lyc;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, p0, v2}, Lyc;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lqk3;->Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 14
    .line 15
    invoke-virtual {p0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const v2, 0x7f0b0002

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    int-to-long v2, p0

    .line 27
    const-wide/16 v4, 0x1f4

    .line 28
    .line 29
    add-long/2addr v2, v4

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lqk3;->Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lto3;->getEntries()Ljx2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    check-cast v0, Lkx2;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lkx2;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lto3;

    .line 27
    .line 28
    invoke-virtual {p0}, Lto3;->isCloudSection()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method
