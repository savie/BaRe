.class public final synthetic Lp37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp37;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp37;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lp37;->a:I

    .line 4
    .line 5
    iget-object v0, v0, Lp37;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N()Ls37;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ls37;->f:Landroid/widget/ImageView;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f0d0165

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0a00a9

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-static {v2}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const v1, 0x7f0a00f7

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v7, v2

    .line 55
    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    move-object v5, v0

    .line 60
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 61
    .line 62
    const v1, 0x7f0a017c

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object v8, v2

    .line 70
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    .line 72
    if-eqz v8, :cond_0

    .line 73
    .line 74
    const v1, 0x7f0a0186

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v9, v2

    .line 82
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    .line 84
    if-eqz v9, :cond_0

    .line 85
    .line 86
    const v1, 0x7f0a019a

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    const v1, 0x7f0a01a1

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 105
    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    const v1, 0x7f0a02a4

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    move-object v10, v2

    .line 116
    check-cast v10, Landroid/widget/ImageView;

    .line 117
    .line 118
    if-eqz v10, :cond_0

    .line 119
    .line 120
    const v1, 0x7f0a0400

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    move-object v11, v2

    .line 128
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .line 130
    if-eqz v11, :cond_0

    .line 131
    .line 132
    const v1, 0x7f0a0401

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object v12, v2

    .line 140
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    if-eqz v12, :cond_0

    .line 143
    .line 144
    const v1, 0x7f0a0402

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    move-object v13, v2

    .line 152
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    if-eqz v13, :cond_0

    .line 155
    .line 156
    const v1, 0x7f0a040f

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    move-object v14, v2

    .line 164
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    if-eqz v14, :cond_0

    .line 167
    .line 168
    const v1, 0x7f0a042d

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    move-object v15, v2

    .line 176
    check-cast v15, Landroidx/core/widget/NestedScrollView;

    .line 177
    .line 178
    if-eqz v15, :cond_0

    .line 179
    .line 180
    const v1, 0x7f0a0510

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Landroid/widget/TextView;

    .line 188
    .line 189
    if-eqz v2, :cond_0

    .line 190
    .line 191
    const v1, 0x7f0a0522

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Landroid/widget/TextView;

    .line 199
    .line 200
    if-eqz v2, :cond_0

    .line 201
    .line 202
    const v1, 0x7f0a0567

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    move-object/from16 v16, v2

    .line 210
    .line 211
    check-cast v16, Landroid/widget/TextView;

    .line 212
    .line 213
    if-eqz v16, :cond_0

    .line 214
    .line 215
    const v1, 0x7f0a05c5

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Landroid/widget/TextView;

    .line 223
    .line 224
    if-eqz v2, :cond_0

    .line 225
    .line 226
    new-instance v4, Ls37;

    .line 227
    .line 228
    invoke-direct/range {v4 .. v16}, Ls37;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V

    .line 229
    .line 230
    .line 231
    move-object v3, v4

    .line 232
    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string v1, "Missing required view with ID: "

    .line 242
    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :goto_0
    return-object v3

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
