.class public final Lzr0;
.super Lkx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final v:Lxd0;

.field public final synthetic w:Lbs0;


# direct methods
.method public constructor <init>(Lbs0;Landroid/view/View;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lzr0;->w:Lbs0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkx4;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0110

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object p1, p2

    .line 18
    check-cast p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 19
    .line 20
    const v1, 0x7f0a01a4

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const v1, 0x7f0a01a6

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const v1, 0x7f0a027c

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    const v1, 0x7f0a028c

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    const v1, 0x7f0a02b7

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    const v1, 0x7f0a05ad

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Landroid/widget/TextView;

    .line 81
    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    const v1, 0x7f0a05ae

    .line 85
    .line 86
    .line 87
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Landroid/widget/TextView;

    .line 92
    .line 93
    if-eqz v7, :cond_0

    .line 94
    .line 95
    const v1, 0x7f0a05ba

    .line 96
    .line 97
    .line 98
    invoke-static {p2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Landroid/widget/TextView;

    .line 103
    .line 104
    if-eqz v8, :cond_0

    .line 105
    .line 106
    new-instance p2, Lxd0;

    .line 107
    .line 108
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p2, Lxd0;->a:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v0, p2, Lxd0;->b:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v2, p2, Lxd0;->c:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v3, p2, Lxd0;->d:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v4, p2, Lxd0;->e:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v5, p2, Lxd0;->f:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v6, p2, Lxd0;->k:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object v7, p2, Lxd0;->n:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v8, p2, Lxd0;->p:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object p2, p0, Lzr0;->v:Lxd0;

    .line 130
    .line 131
    return-void

    .line 132
    :cond_0
    move p1, v1

    .line 133
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-string p1, "Missing required view with ID: "

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 p0, 0x0

    .line 151
    throw p0
.end method
