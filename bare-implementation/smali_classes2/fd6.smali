.class public final Lfd6;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lkc;

.field public final synthetic v:Lgd6;


# direct methods
.method public constructor <init>(Lgd6;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lfd6;->v:Lgd6;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a014b

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move-object v2, p2

    .line 19
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    const p1, 0x7f0a05ac

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v4, v0

    .line 29
    check-cast v4, Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const p1, 0x7f0a05ba

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v5, v0

    .line 41
    check-cast v5, Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    new-instance v1, Lkc;

    .line 46
    .line 47
    const/4 v6, 0x3

    .line 48
    invoke-direct/range {v1 .. v6}, Lkc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lfd6;->u:Lkc;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "Missing required view with ID: "

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    throw p0
.end method
