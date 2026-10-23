.class public abstract Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;
.super Landroidx/fragment/app/u;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private adjustLayoutForDualScreenActivity()V
    .locals 10

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/WindowManager;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "com.microsoft.device.display.displaymask"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    :cond_1
    move v0, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/WindowManager;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v0, v2

    .line 54
    :goto_1
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getHinge(Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;I)Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-lez v4, :cond_1

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-lez v4, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :goto_2
    const/4 v3, 0x2

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    if-ne v1, v3, :cond_5

    .line 94
    .line 95
    :cond_4
    const/4 v2, 0x1

    .line 96
    :cond_5
    new-instance v4, Lnt1;

    .line 97
    .line 98
    invoke-direct {v4}, Lnt1;-><init>()V

    .line 99
    .line 100
    .line 101
    const/4 v8, 0x1

    .line 102
    const/4 v9, 0x0

    .line 103
    const v5, 0x7f0a01f0

    .line 104
    .line 105
    .line 106
    const/4 v6, 0x1

    .line 107
    const v7, 0x7f0a01f2

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 111
    .line 112
    .line 113
    const/4 v8, 0x2

    .line 114
    const/4 v6, 0x2

    .line 115
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 116
    .line 117
    .line 118
    const/4 v8, 0x3

    .line 119
    const/4 v6, 0x3

    .line 120
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 121
    .line 122
    .line 123
    const/4 v8, 0x4

    .line 124
    const/4 v6, 0x4

    .line 125
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 126
    .line 127
    .line 128
    const/4 v8, 0x1

    .line 129
    const v5, 0x7f0a01f1

    .line 130
    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 134
    .line 135
    .line 136
    const/4 v8, 0x2

    .line 137
    const/4 v6, 0x2

    .line 138
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 139
    .line 140
    .line 141
    const/4 v8, 0x3

    .line 142
    const/4 v6, 0x3

    .line 143
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 144
    .line 145
    .line 146
    const/4 v8, 0x4

    .line 147
    const/4 v6, 0x4

    .line 148
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const/16 v6, 0x10

    .line 156
    .line 157
    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    if-eqz v2, :cond_6

    .line 163
    .line 164
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getHinge(Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;I)Landroid/graphics/Rect;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    div-int/lit8 v9, v0, 0x2

    .line 173
    .line 174
    const v7, 0x7f0a05dc

    .line 175
    .line 176
    .line 177
    const/4 v8, 0x2

    .line 178
    const v5, 0x7f0a01f0

    .line 179
    .line 180
    .line 181
    const/4 v6, 0x1

    .line 182
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 183
    .line 184
    .line 185
    const/4 v8, 0x1

    .line 186
    const/4 v9, 0x0

    .line 187
    const v5, 0x7f0a01f1

    .line 188
    .line 189
    .line 190
    const/4 v6, 0x2

    .line 191
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_6
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getHinge(Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;I)Landroid/graphics/Rect;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    div-int/lit8 v9, v0, 0x2

    .line 204
    .line 205
    const v7, 0x7f0a0265

    .line 206
    .line 207
    .line 208
    const/4 v8, 0x3

    .line 209
    const v5, 0x7f0a01f0

    .line 210
    .line 211
    .line 212
    const/4 v6, 0x4

    .line 213
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 214
    .line 215
    .line 216
    const/4 v8, 0x4

    .line 217
    const/4 v9, 0x0

    .line 218
    const v5, 0x7f0a01f1

    .line 219
    .line 220
    .line 221
    const/4 v6, 0x3

    .line 222
    invoke-virtual/range {v4 .. v9}, Lnt1;->d(IIIII)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const/16 v1, 0x30

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    iget-object v0, v4, Lnt1;->c:Ljava/util/HashMap;

    .line 236
    .line 237
    const v1, 0x7f0a01f1

    .line 238
    .line 239
    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    :goto_3
    const v0, 0x7f0a01f2

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 255
    .line 256
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lnt1;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method private static getHinge(Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;I)Landroid/graphics/Rect;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/device/display/DisplayMask;->fromResourcesRect(Landroid/content/Context;)Lcom/microsoft/device/display/DisplayMask;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/device/display/DisplayMask;->getBoundingRectsForRotation(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance p0, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    return-object p0

    .line 31
    :goto_0
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 32
    .line 33
    const-string p1, "DualScreenActivity:getHinge"

    .line 34
    .line 35
    const-string v1, "Failed to get hinge rect"

    .line 36
    .line 37
    invoke-static {p1, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method private initializeContentView()V
    .locals 3

    .line 1
    const v0, 0x7f0d0096

    .line 2
    .line 3
    .line 4
    invoke-super {p0, v0}, Lio1;->setContentView(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_HANDLING_FOR_EDGE_TO_EDGE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const v0, 0x1020002

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Le6;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    invoke-static {v0, v1}, Luk8;->c(Landroid/view/View;Lls5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 38
    .line 39
    const-string v0, "DualScreenActivity:initializeContentView"

    .line 40
    .line 41
    const-string v1, "Failed to set OnApplyWindowInsetsListener"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->adjustLayoutForDualScreenActivity()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public getThemeResId()I
    .locals 0

    .line 1
    const p0, 0x7f14014d

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lio1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->adjustLayoutForDualScreenActivity()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_HANDLING_FOR_EDGE_TO_EDGE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getThemeResId()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->setEdgeToEdge()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio1;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->initializeContentView()V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a01f0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEdgeToEdge()V
    .locals 6

    .line 1
    new-instance v0, Lmv7;

    .line 2
    .line 3
    new-instance v1, Lzi1;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lzi1;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v0, v2, v2, v3, v1}, Lmv7;-><init>(IIILmt3;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lmv7;

    .line 16
    .line 17
    new-instance v4, Lzi1;

    .line 18
    .line 19
    const/16 v5, 0x9

    .line 20
    .line 21
    invoke-direct {v4, v5}, Lzi1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v2, v3, v4}, Lmv7;-><init>(IIILmt3;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Los2;->a(Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;Lmv7;Lmv7;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->initializeContentView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 14
    .line 15
    .line 16
    const p0, 0x7f0a01f0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/a;->e()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
