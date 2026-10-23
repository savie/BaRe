.class public final Ltk0;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

.field public final f:Ljava/lang/CharSequence;

.field public final k:Lom5;

.field public final n:Landroid/widget/TextView;

.field public final p:Lcom/google/android/material/card/MaterialCardView;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ltk0;->e:Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 11
    .line 12
    iput-object p2, p0, Ltk0;->f:Ljava/lang/CharSequence;

    .line 13
    .line 14
    const p2, 0x7f0d003a

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object v2, p1

    .line 23
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 24
    .line 25
    const p2, 0x7f0a02a1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v3, v1

    .line 33
    check-cast v3, Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const p2, 0x7f0a0360

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v4, v1

    .line 45
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    const p2, 0x7f0a0536

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v5, v1

    .line 57
    check-cast v5, Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    const p2, 0x7f0a0580

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v6, v1

    .line 69
    check-cast v6, Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz v6, :cond_0

    .line 72
    .line 73
    new-instance v1, Lom5;

    .line 74
    .line 75
    invoke-direct/range {v1 .. v6}, Lom5;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Ltk0;->k:Lom5;

    .line 79
    .line 80
    iput-object v5, p0, Ltk0;->n:Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object v4, p0, Ltk0;->p:Lcom/google/android/material/card/MaterialCardView;

    .line 83
    .line 84
    iput-object v6, p0, Ltk0;->q:Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v3, p0, Ltk0;->r:Landroid/widget/ImageView;

    .line 87
    .line 88
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p1, "Missing required view with ID: "

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 2

    .line 1
    iget-object v0, p0, Ltk0;->n:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->l()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ltk0;->q:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v1, p0, Ltk0;->f:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lh7;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-direct {v0, p0, v1}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ltk0;->p:Lcom/google/android/material/card/MaterialCardView;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lof;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-direct {v0, p0, v1}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Ltk0;->r:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Ltk0;->k:Lom5;

    .line 40
    .line 41
    return-object p0
.end method
