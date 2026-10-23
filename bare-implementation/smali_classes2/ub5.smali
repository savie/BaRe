.class public final Lub5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/google/android/material/button/MaterialButton;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroidx/core/widget/NestedScrollView;

.field public final f:Ld62;

.field public final k:Lx00;

.field public final n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Ld62;Lx00;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub5;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lub5;->b:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    iput-object p3, p0, Lub5;->c:Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object p4, p0, Lub5;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p5, p0, Lub5;->e:Landroidx/core/widget/NestedScrollView;

    .line 13
    .line 14
    iput-object p6, p0, Lub5;->f:Ld62;

    .line 15
    .line 16
    iput-object p7, p0, Lub5;->k:Lx00;

    .line 17
    .line 18
    iput-object p8, p0, Lub5;->n:Landroid/widget/TextView;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lub5;
    .locals 12

    .line 1
    const v0, 0x7f0d0101

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v0, 0x7f0a00f2

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v5, v1

    .line 18
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 19
    .line 20
    const-string v1, "Missing required view with ID: "

    .line 21
    .line 22
    if-eqz v5, :cond_3

    .line 23
    .line 24
    move-object v4, p0

    .line 25
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    const v0, 0x7f0a01b2

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    const v0, 0x7f0a02b7

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v6, v3

    .line 46
    check-cast v6, Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    const v0, 0x7f0a02bd

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    move-object v7, v3

    .line 58
    check-cast v7, Landroid/widget/ImageView;

    .line 59
    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    const v0, 0x7f0a042d

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v8, v3

    .line 70
    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 71
    .line 72
    if-eqz v8, :cond_3

    .line 73
    .line 74
    const v0, 0x7f0a04c9

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    const v0, 0x7f0a020c

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 91
    .line 92
    if-eqz v9, :cond_2

    .line 93
    .line 94
    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 95
    .line 96
    move-object v10, v9

    .line 97
    new-instance v9, Ld62;

    .line 98
    .line 99
    const/4 v11, 0x1

    .line 100
    invoke-direct {v9, v3, v10, v3, v11}, Ld62;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 101
    .line 102
    .line 103
    const v3, 0x7f0a04d2

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    if-eqz v10, :cond_1

    .line 111
    .line 112
    invoke-static {v10, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 117
    .line 118
    if-eqz v3, :cond_0

    .line 119
    .line 120
    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    .line 121
    .line 122
    move-object v0, v10

    .line 123
    new-instance v10, Lx00;

    .line 124
    .line 125
    const/4 v11, 0x2

    .line 126
    invoke-direct {v10, v0, v3, v0, v11}, Lx00;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    const v0, 0x7f0a0518

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    const v0, 0x7f0a05ba

    .line 141
    .line 142
    .line 143
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object v11, v3

    .line 148
    check-cast v11, Landroid/widget/TextView;

    .line 149
    .line 150
    if-eqz v11, :cond_3

    .line 151
    .line 152
    new-instance v3, Lub5;

    .line 153
    .line 154
    invoke-direct/range {v3 .. v11}, Lub5;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Ld62;Lx00;Landroid/widget/TextView;)V

    .line 155
    .line 156
    .line 157
    return-object v3

    .line 158
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v2

    .line 174
    :cond_1
    move v0, v3

    .line 175
    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-object v2

    .line 192
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object v2
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lub5;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object p0
.end method
