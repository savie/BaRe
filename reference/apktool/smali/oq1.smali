.class public final Loq1;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic A:Lpq1;

.field public final u:Lyf1;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/widget/ImageView;

.field public final y:Landroid/widget/TextView;

.field public final z:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method public constructor <init>(Lpq1;Landroid/view/View;)V
    .locals 9

    .line 1
    iput-object p1, p0, Loq1;->A:Lpq1;

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
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const p1, 0x7f0a0177

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Lny1;->a(Landroid/view/View;)Lny1;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const p1, 0x7f0a019b

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const p1, 0x7f0a01b4

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const p1, 0x7f0a02ab

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v5, v0

    .line 61
    check-cast v5, Landroid/widget/ImageView;

    .line 62
    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    const p1, 0x7f0a02d3

    .line 66
    .line 67
    .line 68
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v6, v0

    .line 73
    check-cast v6, Landroid/widget/ImageView;

    .line 74
    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    const p1, 0x7f0a0515

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    const p1, 0x7f0a0594

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v7, v0

    .line 96
    check-cast v7, Landroid/widget/TextView;

    .line 97
    .line 98
    if-eqz v7, :cond_0

    .line 99
    .line 100
    const p1, 0x7f0a0595

    .line 101
    .line 102
    .line 103
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v8, v0

    .line 108
    check-cast v8, Landroid/widget/TextView;

    .line 109
    .line 110
    if-eqz v8, :cond_0

    .line 111
    .line 112
    const p1, 0x7f0a0596

    .line 113
    .line 114
    .line 115
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v0, :cond_0

    .line 122
    .line 123
    new-instance v1, Lyf1;

    .line 124
    .line 125
    move-object v2, p2

    .line 126
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 127
    .line 128
    invoke-direct/range {v1 .. v8}, Lyf1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;Lny1;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Loq1;->u:Lyf1;

    .line 132
    .line 133
    iput-object v7, p0, Loq1;->v:Landroid/widget/TextView;

    .line 134
    .line 135
    iput-object v6, p0, Loq1;->w:Landroid/widget/ImageView;

    .line 136
    .line 137
    iput-object v5, p0, Loq1;->x:Landroid/widget/ImageView;

    .line 138
    .line 139
    iput-object v8, p0, Loq1;->y:Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v3, p0, Loq1;->z:Lcom/google/android/material/card/MaterialCardView;

    .line 142
    .line 143
    return-void

    .line 144
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const-string p1, "Missing required view with ID: "

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    throw p0
.end method
