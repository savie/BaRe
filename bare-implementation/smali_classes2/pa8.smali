.class public final Lpa8;
.super Lu35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final Q:Lgv7;

.field public final R:Lgv7;

.field public final S:Lgv7;

.field public final T:Lgv7;


# direct methods
.method public constructor <init>(Lk28;)V
    .locals 10

    .line 1
    const v0, 0x7f0d0184

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v2, 0x7f0a00ef

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    move-object v6, v3

    .line 17
    check-cast v6, Landroid/widget/ImageView;

    .line 18
    .line 19
    const-string v3, "Missing required view with ID: "

    .line 20
    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    const v2, 0x7f0a01e0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const v2, 0x7f0a025b

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const v2, 0x7f0a05ac

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    const v2, 0x7f0a05ba

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    const v2, 0x7f0a05c3

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v8, :cond_0

    .line 73
    .line 74
    move-object v9, v7

    .line 75
    new-instance v7, Lra8;

    .line 76
    .line 77
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 78
    .line 79
    invoke-direct {v7, v4, v5, v9, v8}, Lra8;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 80
    .line 81
    .line 82
    const v2, 0x7f0a03f0

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    move-object v8, v4

    .line 90
    check-cast v8, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 91
    .line 92
    if-eqz v8, :cond_1

    .line 93
    .line 94
    const v2, 0x7f0a0494

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    move-object v9, v4

    .line 102
    check-cast v9, Landroidx/core/widget/NestedScrollView;

    .line 103
    .line 104
    if-eqz v9, :cond_1

    .line 105
    .line 106
    new-instance v4, Lqa8;

    .line 107
    .line 108
    move-object v5, v0

    .line 109
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 110
    .line 111
    invoke-direct/range {v4 .. v9}, Lqa8;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/ImageView;Lra8;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroidx/core/widget/NestedScrollView;)V

    .line 112
    .line 113
    .line 114
    const/16 v0, 0xc

    .line 115
    .line 116
    invoke-direct {p0, p1, v4, v0}, Lu35;-><init>(Lk28;Ljk8;I)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lus5;

    .line 120
    .line 121
    const/16 v0, 0x9

    .line 122
    .line 123
    invoke-direct {p1, p0, v0}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lgv7;

    .line 127
    .line 128
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lpa8;->Q:Lgv7;

    .line 132
    .line 133
    new-instance p1, Lno5;

    .line 134
    .line 135
    const/16 v0, 0x8

    .line 136
    .line 137
    invoke-direct {p1, p0, v0}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lgv7;

    .line 141
    .line 142
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lpa8;->R:Lgv7;

    .line 146
    .line 147
    new-instance p1, Lqb5;

    .line 148
    .line 149
    const/16 v0, 0xa

    .line 150
    .line 151
    invoke-direct {p1, p0, v0}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lgv7;

    .line 155
    .line 156
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lpa8;->S:Lgv7;

    .line 160
    .line 161
    new-instance p1, Ln55;

    .line 162
    .line 163
    const/16 v0, 0xb

    .line 164
    .line 165
    invoke-direct {p1, p0, v0}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lgv7;

    .line 169
    .line 170
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lpa8;->T:Lgv7;

    .line 174
    .line 175
    return-void

    .line 176
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v1

    .line 192
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v1
.end method
