.class public final Lq10;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Landroid/widget/ImageView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/widget/ImageView;

.field public final y:Landroid/view/View;

.field public final synthetic z:Lr10;


# direct methods
.method public constructor <init>(Lr10;Landroid/view/View;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lq10;->z:Lr10;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a01e0

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const p1, 0x7f0a02b7

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const p1, 0x7f0a02c7

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const p1, 0x7f0a05ad

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    const p1, 0x7f0a05ba

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    check-cast p2, Landroid/widget/LinearLayout;

    .line 60
    .line 61
    iput-object v1, p0, Lq10;->u:Landroid/widget/ImageView;

    .line 62
    .line 63
    iput-object v4, p0, Lq10;->v:Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v3, p0, Lq10;->w:Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v2, p0, Lq10;->x:Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lq10;->y:Landroid/view/View;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "Missing required view with ID: "

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    throw p0
.end method
