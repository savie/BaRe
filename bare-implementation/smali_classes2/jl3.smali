.class public final Ljl3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Lcom/google/android/material/button/MaterialButton;

.field public final c:Llj3;

.field public final d:Llj3;

.field public final e:Lzx2;

.field public final f:Landroid/widget/ImageView;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final n:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Llj3;Llj3;Lzx2;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljl3;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    .line 6
    iput-object p2, p0, Ljl3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    iput-object p3, p0, Ljl3;->c:Llj3;

    .line 9
    .line 10
    iput-object p4, p0, Ljl3;->d:Llj3;

    .line 11
    .line 12
    iput-object p5, p0, Ljl3;->e:Lzx2;

    .line 13
    .line 14
    iput-object p6, p0, Ljl3;->f:Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object p7, p0, Ljl3;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    iput-object p8, p0, Ljl3;->n:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 19
    .line 20
    iput-object p9, p0, Ljl3;->p:Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p10, p0, Ljl3;->q:Landroid/widget/TextView;

    .line 23
    .line 24
    return-void
.end method

.method public static a(Landroid/view/View;)Ljl3;
    .locals 13

    .line 1
    const v0, 0x7f0a0119

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const v0, 0x7f0a01b5

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Llj3;->a(Landroid/view/View;)Llj3;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const v0, 0x7f0a01b7

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Llj3;->a(Landroid/view/View;)Llj3;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const v0, 0x7f0a01e0

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const v0, 0x7f0a0209

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-static {v1}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const v0, 0x7f0a02bd

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v8, v1

    .line 69
    check-cast v8, Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    const v0, 0x7f0a0302

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v9, v1

    .line 81
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    if-eqz v9, :cond_0

    .line 84
    .line 85
    const v0, 0x7f0a03a8

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object v10, v1

    .line 93
    check-cast v10, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 94
    .line 95
    if-eqz v10, :cond_0

    .line 96
    .line 97
    const v0, 0x7f0a0556

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    move-object v11, v1

    .line 105
    check-cast v11, Landroid/widget/TextView;

    .line 106
    .line 107
    if-eqz v11, :cond_0

    .line 108
    .line 109
    const v0, 0x7f0a05ba

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move-object v12, v1

    .line 117
    check-cast v12, Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v12, :cond_0

    .line 120
    .line 121
    new-instance v2, Ljl3;

    .line 122
    .line 123
    move-object v3, p0

    .line 124
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 125
    .line 126
    invoke-direct/range {v2 .. v12}, Ljl3;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Llj3;Llj3;Lzx2;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 127
    .line 128
    .line 129
    return-object v2

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    const-string v0, "Missing required view with ID: "

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x0

    .line 148
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ljl3;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    return-object p0
.end method
