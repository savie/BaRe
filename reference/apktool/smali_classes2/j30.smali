.class public final Lj30;
.super Lu35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final Q:Lil0;

.field public final R:Lgv7;

.field public final S:Lgv7;


# direct methods
.method public constructor <init>(Lil0;)V
    .locals 4

    .line 1
    const v0, 0x7f0d0035

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
    new-instance v1, Ls20;

    .line 21
    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-direct {v1, v0, v3}, Ls20;-><init>(Landroid/widget/LinearLayout;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

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
    iput-object p1, p0, Lj30;->Q:Lil0;

    .line 33
    .line 34
    new-instance p1, Ld76;

    .line 35
    .line 36
    const/4 v0, 0x7

    .line 37
    invoke-direct {p1, p0, v0}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lgv7;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lj30;->R:Lgv7;

    .line 46
    .line 47
    new-instance p1, Lb7;

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    invoke-direct {p1, v0}, Lb7;-><init>(I)V

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
    iput-object v0, p0, Lj30;->S:Lgv7;

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
