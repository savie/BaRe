.class public final Lxq1;
.super Lkx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/widget/TextView;

.field public final synthetic y:Lyq1;


# direct methods
.method public constructor <init>(Lyq1;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lxq1;->y:Lyq1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkx4;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    move-object p1, p2

    .line 7
    check-cast p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 8
    .line 9
    const p1, 0x7f0a01a6

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const p1, 0x7f0a028c

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const p1, 0x7f0a05ae

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const p1, 0x7f0a05ba

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    iput-object v0, p0, Lxq1;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 54
    .line 55
    iput-object v2, p0, Lxq1;->w:Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v1, p0, Lxq1;->x:Landroid/widget/TextView;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "Missing required view with ID: "

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    throw p0
.end method
