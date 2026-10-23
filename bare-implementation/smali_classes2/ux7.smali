.class public final synthetic Lux7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lux7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lux7;->b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

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
    .locals 14

    .line 1
    iget v0, p0, Lux7;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lux7;->b:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->N()Lay7;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lay7;->e:Lfm1;

    .line 15
    .line 16
    iget-object p0, p0, Lfm1;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f0d017f

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const v0, 0x7f0a00a9

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 44
    .line 45
    const-string v3, "Missing required view with ID: "

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const v0, 0x7f0a00e2

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v6, v1

    .line 57
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    const v0, 0x7f0a0410

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v7, v1

    .line 69
    check-cast v7, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 70
    .line 71
    if-eqz v7, :cond_2

    .line 72
    .line 73
    const v0, 0x7f0a0413

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v8, v1

    .line 81
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    const v0, 0x7f0a04ae

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    const v0, 0x7f0a01e4

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    .line 102
    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    const v0, 0x7f0a020a

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    .line 113
    .line 114
    if-eqz v5, :cond_1

    .line 115
    .line 116
    const v0, 0x7f0a02fb

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Lcom/airbnb/lottie/LottieAnimationView;

    .line 124
    .line 125
    if-eqz v9, :cond_1

    .line 126
    .line 127
    move-object v0, v1

    .line 128
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 129
    .line 130
    const v10, 0x7f0a05b6

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    check-cast v11, Landroid/widget/TextView;

    .line 138
    .line 139
    if-eqz v11, :cond_0

    .line 140
    .line 141
    const v10, 0x7f0a05c6

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    check-cast v12, Landroid/widget/TextView;

    .line 149
    .line 150
    if-eqz v12, :cond_0

    .line 151
    .line 152
    const v10, 0x7f0a05ee

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    check-cast v12, Lcom/airbnb/lottie/LottieAnimationView;

    .line 160
    .line 161
    if-eqz v12, :cond_0

    .line 162
    .line 163
    move-object v13, v9

    .line 164
    new-instance v9, Lfm1;

    .line 165
    .line 166
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v0, v9, Lfm1;->b:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v4, v9, Lfm1;->c:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v5, v9, Lfm1;->d:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v13, v9, Lfm1;->e:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v11, v9, Lfm1;->a:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v12, v9, Lfm1;->f:Ljava/lang/Object;

    .line 180
    .line 181
    const v0, 0x7f0a04e5

    .line 182
    .line 183
    .line 184
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    move-object v10, v1

    .line 189
    check-cast v10, Landroidx/appcompat/widget/Toolbar;

    .line 190
    .line 191
    if-eqz v10, :cond_2

    .line 192
    .line 193
    new-instance v4, Lay7;

    .line 194
    .line 195
    move-object v5, p0

    .line 196
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 197
    .line 198
    invoke-direct/range {v4 .. v10}, Lay7;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lfm1;Landroidx/appcompat/widget/Toolbar;)V

    .line 199
    .line 200
    .line 201
    move-object v2, v4

    .line 202
    goto :goto_0

    .line 203
    :cond_0
    move v0, v10

    .line 204
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_0
    return-object v2

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
