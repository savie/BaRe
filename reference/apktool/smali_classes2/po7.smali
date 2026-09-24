.class public final Lpo7;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Landroid/widget/TextView;

.field public final B:Landroid/widget/TextView;

.field public final C:Lcom/google/android/material/card/MaterialCardView;

.field public final D:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic E:Lqo7;

.field public final u:Lib;

.field public final v:Lcom/google/android/material/card/MaterialCardView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lqo7;Landroid/view/View;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lpo7;->E:Lqo7;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0218

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
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const p1, 0x7f0a02b7

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    const p1, 0x7f0a03a4

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    const p1, 0x7f0a053f

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v6, v0

    .line 50
    check-cast v6, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    const p1, 0x7f0a0545

    .line 55
    .line 56
    .line 57
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    const p1, 0x7f0a0546

    .line 67
    .line 68
    .line 69
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v8, v0

    .line 74
    check-cast v8, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v8, :cond_0

    .line 77
    .line 78
    const p1, 0x7f0a054b

    .line 79
    .line 80
    .line 81
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v9, v0

    .line 86
    check-cast v9, Landroid/widget/TextView;

    .line 87
    .line 88
    if-eqz v9, :cond_0

    .line 89
    .line 90
    const p1, 0x7f0a05ad

    .line 91
    .line 92
    .line 93
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v10, v0

    .line 98
    check-cast v10, Landroid/widget/TextView;

    .line 99
    .line 100
    if-eqz v10, :cond_0

    .line 101
    .line 102
    const p1, 0x7f0a05ba

    .line 103
    .line 104
    .line 105
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-object v11, v0

    .line 110
    check-cast v11, Landroid/widget/TextView;

    .line 111
    .line 112
    if-eqz v11, :cond_0

    .line 113
    .line 114
    new-instance v1, Lib;

    .line 115
    .line 116
    move-object v2, p2

    .line 117
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 118
    .line 119
    invoke-direct/range {v1 .. v11}, Lib;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lpo7;->u:Lib;

    .line 123
    .line 124
    iput-object v2, p0, Lpo7;->v:Lcom/google/android/material/card/MaterialCardView;

    .line 125
    .line 126
    iput-object v4, p0, Lpo7;->w:Landroid/widget/ImageView;

    .line 127
    .line 128
    iput-object v9, p0, Lpo7;->x:Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object v11, p0, Lpo7;->y:Landroid/widget/TextView;

    .line 131
    .line 132
    iput-object v10, p0, Lpo7;->z:Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object v8, p0, Lpo7;->A:Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v7, p0, Lpo7;->B:Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object v3, p0, Lpo7;->C:Lcom/google/android/material/card/MaterialCardView;

    .line 139
    .line 140
    iput-object v5, p0, Lpo7;->D:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 141
    .line 142
    return-void

    .line 143
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const-string p1, "Missing required view with ID: "

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/4 p0, 0x0

    .line 161
    throw p0
.end method
