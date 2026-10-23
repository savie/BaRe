.class public final Lej2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Lcom/google/android/material/button/MaterialButton;

.field public final c:Lzx2;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Loe;

.field public final k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final p:Lcom/google/android/material/tabs/TabLayout;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lzx2;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Loe;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lej2;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    .line 6
    iput-object p2, p0, Lej2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    iput-object p3, p0, Lej2;->c:Lzx2;

    .line 9
    .line 10
    iput-object p4, p0, Lej2;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p5, p0, Lej2;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lej2;->f:Loe;

    .line 15
    .line 16
    iput-object p7, p0, Lej2;->k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 17
    .line 18
    iput-object p8, p0, Lej2;->n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 19
    .line 20
    iput-object p9, p0, Lej2;->p:Lcom/google/android/material/tabs/TabLayout;

    .line 21
    .line 22
    iput-object p10, p0, Lej2;->q:Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p11, p0, Lej2;->r:Landroid/widget/TextView;

    .line 25
    .line 26
    return-void
.end method

.method public static a(Landroid/view/View;)Lej2;
    .locals 14

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
    const/4 v1, 0x0

    .line 12
    const-string v2, "Missing required view with ID: "

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    const v0, 0x7f0a0209

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-static {v3}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const v0, 0x7f0a02bd

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v6, v3

    .line 37
    check-cast v6, Landroid/widget/ImageView;

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    const v0, 0x7f0a0302

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v7, v3

    .line 49
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    const v0, 0x7f0a0361

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    move-object v0, v3

    .line 63
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 64
    .line 65
    const v8, 0x7f0a02af

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    const v8, 0x7f0a02b7

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz v9, :cond_0

    .line 86
    .line 87
    const v8, 0x7f0a0568

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz v9, :cond_0

    .line 97
    .line 98
    new-instance v8, Loe;

    .line 99
    .line 100
    const/16 v3, 0x9

    .line 101
    .line 102
    invoke-direct {v8, v3, v0, v9}, Loe;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const v0, 0x7f0a03a8

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    move-object v9, v3

    .line 113
    check-cast v9, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 114
    .line 115
    if-eqz v9, :cond_1

    .line 116
    .line 117
    const v0, 0x7f0a03ed

    .line 118
    .line 119
    .line 120
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    move-object v10, v3

    .line 125
    check-cast v10, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 126
    .line 127
    if-eqz v10, :cond_1

    .line 128
    .line 129
    const v0, 0x7f0a049e

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    move-object v11, v3

    .line 137
    check-cast v11, Lcom/google/android/material/tabs/TabLayout;

    .line 138
    .line 139
    if-eqz v11, :cond_1

    .line 140
    .line 141
    const v0, 0x7f0a0557

    .line 142
    .line 143
    .line 144
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    move-object v12, v3

    .line 149
    check-cast v12, Landroid/widget/TextView;

    .line 150
    .line 151
    if-eqz v12, :cond_1

    .line 152
    .line 153
    const v0, 0x7f0a05ba

    .line 154
    .line 155
    .line 156
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    move-object v13, v3

    .line 161
    check-cast v13, Landroid/widget/TextView;

    .line 162
    .line 163
    if-eqz v13, :cond_1

    .line 164
    .line 165
    new-instance v2, Lej2;

    .line 166
    .line 167
    move-object v3, p0

    .line 168
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 169
    .line 170
    invoke-direct/range {v2 .. v13}, Lej2;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lzx2;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Loe;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 171
    .line 172
    .line 173
    return-object v2

    .line 174
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-object v1

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object v1
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lej2;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    return-object p0
.end method
