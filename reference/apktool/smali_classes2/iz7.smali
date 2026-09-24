.class public final Liz7;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr35;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liz7;->f:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 6

    .line 1
    check-cast p1, Lhz7;

    .line 2
    .line 3
    iget-object p0, p0, Lr35;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lrw6;

    .line 10
    .line 11
    iget-object p2, p1, Lhz7;->u:Lcy7;

    .line 12
    .line 13
    iget-object p1, p1, Lhz7;->v:Liz7;

    .line 14
    .line 15
    iget-object p1, p1, Liz7;->f:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lrw6;->b:Lex6;

    .line 21
    .line 22
    iget-object v1, p0, Lrw6;->a:Ljava/lang/Class;

    .line 23
    .line 24
    const-class v2, Lc40;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    new-instance v1, Lfz;

    .line 35
    .line 36
    invoke-direct {v1, p1, p2}, Lfz;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Lcy7;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Ljf;

    .line 40
    .line 41
    invoke-direct {p2, v4, v1, p0}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lez;

    .line 45
    .line 46
    invoke-direct {p0, v3, p2}, Lez;-><init>(ILmt3;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    const-class v2, Lff5;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v5, 0x4

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    new-instance p0, Lif5;

    .line 63
    .line 64
    invoke-direct {p0, p1, p2}, Lif5;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Lcy7;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lox;

    .line 68
    .line 69
    const/16 v1, 0x13

    .line 70
    .line 71
    invoke-direct {p2, p0, v1}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ltf;

    .line 75
    .line 76
    invoke-direct {p0, v5, p2}, Ltf;-><init>(ILmt3;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    const-class v2, Lz11;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    new-instance p0, Lb21;

    .line 92
    .line 93
    invoke-direct {p0, p1, p2}, Lb21;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Lcy7;)V

    .line 94
    .line 95
    .line 96
    new-instance p2, Lv10;

    .line 97
    .line 98
    invoke-direct {p2, p0, v4}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Ls30;

    .line 102
    .line 103
    invoke-direct {p0, v4, p2}, Ls30;-><init>(ILmt3;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    const-class v2, Lwp8;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    new-instance p0, Lyp8;

    .line 119
    .line 120
    invoke-direct {p0, p1, p2, v3}, Lyp8;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Lcy7;I)V

    .line 121
    .line 122
    .line 123
    new-instance p2, Lk3;

    .line 124
    .line 125
    const/16 v1, 0x16

    .line 126
    .line 127
    invoke-direct {p2, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 128
    .line 129
    .line 130
    new-instance p0, Lur0;

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    invoke-direct {p0, v1, p2}, Lur0;-><init>(ILmt3;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_3
    const-class v2, Ltt8;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    new-instance p0, Lyp8;

    .line 149
    .line 150
    invoke-direct {p0, p1, p2, v4}, Lyp8;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Lcy7;I)V

    .line 151
    .line 152
    .line 153
    new-instance p2, Lk3;

    .line 154
    .line 155
    const/16 v1, 0x17

    .line 156
    .line 157
    invoke-direct {p2, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    new-instance p0, Lur0;

    .line 161
    .line 162
    invoke-direct {p0, v5, p2}, Lur0;-><init>(ILmt3;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p1, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_4
    const-class v2, Lqp3;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    new-instance v1, Ltp3;

    .line 178
    .line 179
    invoke-direct {v1, p1, p2}, Ltp3;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Lcy7;)V

    .line 180
    .line 181
    .line 182
    new-instance p2, Lhq0;

    .line 183
    .line 184
    invoke-direct {p2, v4, v1, p0}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    new-instance p0, Ls30;

    .line 188
    .line 189
    invoke-direct {p0, v5, p2}, Ls30;-><init>(ILmt3;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, p1, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_5
    const-string p1, "No binder for task="

    .line 197
    .line 198
    invoke-static {p0, p1}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0181

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lhz7;

    .line 4
    .line 5
    const v2, 0x7f0a01af

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    move-object v6, v3

    .line 13
    check-cast v6, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    const v2, 0x7f0a01d6

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v7, v3

    .line 25
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    const v2, 0x7f0a01e3

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    if-eqz v8, :cond_0

    .line 37
    .line 38
    const v2, 0x7f0a0256

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const v2, 0x7f0a02b7

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v9, v3

    .line 57
    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 58
    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    const v2, 0x7f0a0324

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    const v2, 0x7f0a03a8

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    move-object v10, v3

    .line 80
    check-cast v10, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 81
    .line 82
    if-eqz v10, :cond_0

    .line 83
    .line 84
    const v2, 0x7f0a0400

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    move-object v11, v3

    .line 92
    check-cast v11, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 93
    .line 94
    if-eqz v11, :cond_0

    .line 95
    .line 96
    const v2, 0x7f0a0526

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move-object v12, v3

    .line 104
    check-cast v12, Landroid/widget/TextView;

    .line 105
    .line 106
    if-eqz v12, :cond_0

    .line 107
    .line 108
    const v2, 0x7f0a0531

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object v13, v3

    .line 116
    check-cast v13, Landroid/widget/TextView;

    .line 117
    .line 118
    if-eqz v13, :cond_0

    .line 119
    .line 120
    const v2, 0x7f0a054b

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    move-object v14, v3

    .line 128
    check-cast v14, Landroid/widget/TextView;

    .line 129
    .line 130
    if-eqz v14, :cond_0

    .line 131
    .line 132
    const v2, 0x7f0a054c

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    move-object v15, v3

    .line 140
    check-cast v15, Landroid/widget/TextView;

    .line 141
    .line 142
    if-eqz v15, :cond_0

    .line 143
    .line 144
    const v2, 0x7f0a0571

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    move-object/from16 v16, v3

    .line 152
    .line 153
    check-cast v16, Landroid/widget/TextView;

    .line 154
    .line 155
    if-eqz v16, :cond_0

    .line 156
    .line 157
    const v2, 0x7f0a0578

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    move-object/from16 v17, v3

    .line 165
    .line 166
    check-cast v17, Landroid/widget/TextView;

    .line 167
    .line 168
    if-eqz v17, :cond_0

    .line 169
    .line 170
    const v2, 0x7f0a05c1

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    move-object/from16 v18, v3

    .line 178
    .line 179
    check-cast v18, Landroid/widget/TextView;

    .line 180
    .line 181
    if-eqz v18, :cond_0

    .line 182
    .line 183
    const v2, 0x7f0a05c2

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    move-object/from16 v19, v3

    .line 191
    .line 192
    check-cast v19, Landroid/widget/TextView;

    .line 193
    .line 194
    if-eqz v19, :cond_0

    .line 195
    .line 196
    new-instance v4, Lcy7;

    .line 197
    .line 198
    move-object v5, v0

    .line 199
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 200
    .line 201
    invoke-direct/range {v4 .. v19}, Lcy7;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 202
    .line 203
    .line 204
    move-object/from16 v0, p0

    .line 205
    .line 206
    invoke-direct {v1, v0, v4}, Lhz7;-><init>(Liz7;Lcy7;)V

    .line 207
    .line 208
    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-virtual {v1, v0}, Lfh6;->o(Z)V

    .line 211
    .line 212
    .line 213
    return-object v1

    .line 214
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v1, "Missing required view with ID: "

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const/4 v0, 0x0

    .line 232
    return-object v0
.end method
