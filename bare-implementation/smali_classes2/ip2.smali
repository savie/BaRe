.class public final Lip2;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lca3;

.field public final synthetic v:Lid2;


# direct methods
.method public constructor <init>(Lid2;Landroid/view/View;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lip2;->v:Lid2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a015f

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
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const p1, 0x7f0a01e0

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const p1, 0x7f0a0292

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v5, v0

    .line 35
    check-cast v5, Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    const p1, 0x7f0a0503

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v6, v0

    .line 47
    check-cast v6, Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    const p1, 0x7f0a0504

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v7, v0

    .line 59
    check-cast v7, Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    const p1, 0x7f0a0505

    .line 64
    .line 65
    .line 66
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    const p1, 0x7f0a0506

    .line 75
    .line 76
    .line 77
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v8, v0

    .line 82
    check-cast v8, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v8, :cond_0

    .line 85
    .line 86
    new-instance v1, Lca3;

    .line 87
    .line 88
    move-object v2, p2

    .line 89
    check-cast v2, Landroid/widget/LinearLayout;

    .line 90
    .line 91
    invoke-direct/range {v1 .. v8}, Lca3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lip2;->u:Lca3;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string p1, "Missing required view with ID: "

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    throw p0
.end method
