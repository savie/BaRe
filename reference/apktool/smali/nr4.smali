.class public final synthetic Lnr4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnr4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnr4;->b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnr4;->a:I

    .line 4
    .line 5
    iget-object v0, v0, Lnr4;->b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lrr4;->r:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f0d00de

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
    const v1, 0x7f0a00ea

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
    check-cast v7, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    const v1, 0x7f0a017f

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move-object v8, v2

    .line 67
    check-cast v8, Lcom/google/android/material/card/MaterialCardView;

    .line 68
    .line 69
    if-eqz v8, :cond_0

    .line 70
    .line 71
    const v1, 0x7f0a019a

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    move-object v9, v2

    .line 79
    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    .line 80
    .line 81
    if-eqz v9, :cond_0

    .line 82
    .line 83
    const v1, 0x7f0a0209

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-static {v2}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    const v1, 0x7f0a0270

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    move-object v11, v2

    .line 104
    check-cast v11, Landroid/widget/ImageView;

    .line 105
    .line 106
    if-eqz v11, :cond_0

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
    move-object v12, v2

    .line 116
    check-cast v12, Landroid/widget/ImageView;

    .line 117
    .line 118
    if-eqz v12, :cond_0

    .line 119
    .line 120
    const v1, 0x7f0a02a6

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    move-object v13, v2

    .line 128
    check-cast v13, Landroid/widget/ImageView;

    .line 129
    .line 130
    if-eqz v13, :cond_0

    .line 131
    .line 132
    const v1, 0x7f0a0302

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object v14, v2

    .line 140
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 141
    .line 142
    if-eqz v14, :cond_0

    .line 143
    .line 144
    const v1, 0x7f0a03a8

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    move-object v15, v2

    .line 152
    check-cast v15, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 153
    .line 154
    if-eqz v15, :cond_0

    .line 155
    .line 156
    const v1, 0x7f0a03e7

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    move-object/from16 v16, v2

    .line 164
    .line 165
    check-cast v16, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 166
    .line 167
    if-eqz v16, :cond_0

    .line 168
    .line 169
    const v1, 0x7f0a0400

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    move-object/from16 v17, v2

    .line 177
    .line 178
    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    .line 180
    if-eqz v17, :cond_0

    .line 181
    .line 182
    const v1, 0x7f0a040f

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    move-object/from16 v18, v2

    .line 190
    .line 191
    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .line 193
    if-eqz v18, :cond_0

    .line 194
    .line 195
    const v1, 0x7f0a0513

    .line 196
    .line 197
    .line 198
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    move-object/from16 v19, v2

    .line 203
    .line 204
    check-cast v19, Landroid/widget/TextView;

    .line 205
    .line 206
    if-eqz v19, :cond_0

    .line 207
    .line 208
    const v1, 0x7f0a0592

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    move-object/from16 v20, v2

    .line 216
    .line 217
    check-cast v20, Landroid/widget/TextView;

    .line 218
    .line 219
    if-eqz v20, :cond_0

    .line 220
    .line 221
    const v1, 0x7f0a05ad

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    move-object/from16 v21, v2

    .line 229
    .line 230
    check-cast v21, Landroid/widget/TextView;

    .line 231
    .line 232
    if-eqz v21, :cond_0

    .line 233
    .line 234
    const v1, 0x7f0a05ba

    .line 235
    .line 236
    .line 237
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    move-object/from16 v22, v2

    .line 242
    .line 243
    check-cast v22, Landroid/widget/TextView;

    .line 244
    .line 245
    if-eqz v22, :cond_0

    .line 246
    .line 247
    new-instance v4, Lrr4;

    .line 248
    .line 249
    move-object v5, v0

    .line 250
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 251
    .line 252
    invoke-direct/range {v4 .. v22}, Lrr4;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lzx2;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 253
    .line 254
    .line 255
    move-object v3, v4

    .line 256
    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v1, "Missing required view with ID: "

    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :goto_0
    return-object v3

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
