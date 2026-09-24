.class public final Lz6;
.super Lkx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/widget/ImageView;

.field public final synthetic y:La7;


# direct methods
.method public constructor <init>(La7;Landroid/view/View;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lz6;->y:La7;

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
    const p1, 0x7f0a028c

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "Missing required view with ID: "

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const p1, 0x7f0a028e

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move-object p1, v3

    .line 33
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    const p1, 0x7f0a02bf

    .line 36
    .line 37
    .line 38
    invoke-static {v3, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/widget/ImageView;

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    const p1, 0x7f0a0565

    .line 47
    .line 48
    .line 49
    invoke-static {v3, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    iput-object v0, p0, Lz6;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 58
    .line 59
    iput-object v4, p0, Lz6;->w:Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object p2, p0, Lz6;->x:Landroid/widget/ImageView;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1
.end method
