.class public final Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;
    }
.end annotation


# static fields
.field public static final K:Ljava/util/Map;


# instance fields
.field public G:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

.field public H:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public I:Landroid/animation/ValueAnimator;

.field public J:F

.field public a:Lbt3;

.field public b:Lmt3;

.field public c:Z

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/view/LayoutInflater;

.field public final f:Lgv7;

.field public final k:Landroid/view/View;

.field public final n:Landroid/widget/LinearLayout;

.field public final p:Landroid/widget/LinearLayout;

.field public final q:Landroid/widget/LinearLayout;

.field public final r:Ljava/util/LinkedHashMap;

.field public final t:Ljava/util/LinkedHashMap;

.field public final x:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final y:Landroid/animation/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const v0, 0x7f0a0047

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppsQuickActions:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 9
    .line 10
    new-instance v2, Lpw5;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0046

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppsLabels:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 23
    .line 24
    new-instance v3, Lpw5;

    .line 25
    .line 26
    invoke-direct {v3, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0045

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppConfig:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 37
    .line 38
    new-instance v4, Lpw5;

    .line 39
    .line 40
    invoke-direct {v4, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0a006f

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Messages:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 51
    .line 52
    new-instance v5, Lpw5;

    .line 53
    .line 54
    invoke-direct {v5, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a0048

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->CallLogs:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 65
    .line 66
    new-instance v6, Lpw5;

    .line 67
    .line 68
    invoke-direct {v6, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a0063

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Folders:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 79
    .line 80
    new-instance v7, Lpw5;

    .line 81
    .line 82
    invoke-direct {v7, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const v0, 0x7f0a0091

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Wallpapers:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 93
    .line 94
    new-instance v8, Lpw5;

    .line 95
    .line 96
    invoke-direct {v8, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a0092

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Wifi:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 107
    .line 108
    new-instance v9, Lpw5;

    .line 109
    .line 110
    invoke-direct {v9, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    filled-new-array/range {v2 .. v9}, [Lpw5;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 122
    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->e:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    new-instance p3, Ln55;

    .line 21
    .line 22
    const/4 v0, 0x5

    .line 23
    invoke-direct {p3, p0, v0}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lgv7;

    .line 27
    .line 28
    invoke-direct {v0, p3}, Lgv7;-><init>(Lbt3;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->f:Lgv7;

    .line 32
    .line 33
    new-instance p3, Landroid/view/View;

    .line 34
    .line 35
    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lzf1;

    .line 47
    .line 48
    const/4 v2, 0x7

    .line 49
    invoke-direct {v1, p0, v2}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->k:Landroid/view/View;

    .line 61
    .line 62
    new-instance v2, Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    .line 73
    const/4 v4, -0x2

    .line 74
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    .line 82
    .line 83
    const v0, 0x800005

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->j()Landroid/widget/LinearLayout;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->j()Landroid/widget/LinearLayout;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iput-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p:Landroid/widget/LinearLayout;

    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->j()Landroid/widget/LinearLayout;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iput-object v5, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->r:Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 124
    .line 125
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->t:Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    new-instance v6, Landroid/animation/ArgbEvaluator;

    .line 131
    .line 132
    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->y:Landroid/animation/ArgbEvaluator;

    .line 136
    .line 137
    sget-object v6, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Main:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 138
    .line 139
    iput-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->G:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .line 149
    const/4 v7, -0x1

    .line 150
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .line 161
    const v6, 0x800055

    .line 162
    .line 163
    .line 164
    invoke-direct {p3, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->getFabMenuMargin()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    iput v6, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 172
    .line 173
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->getFabMenuMargin()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    iput v6, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 178
    .line 179
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->getFabMenuMargin()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    iput v6, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 184
    .line 185
    invoke-virtual {v2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    new-instance p3, Ll90;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {p3, v0, p0}, Ll90;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    iget-object p3, p3, Ll90;->c:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p3, Lfc5;

    .line 215
    .line 216
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    new-instance v3, Lks7;

    .line 220
    .line 221
    invoke-direct {v3, v0}, Lks7;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    const v0, 0x7f0f0021

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v0, p3}, Lks7;->inflate(ILandroid/view/Menu;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lw20;

    .line 231
    .line 232
    const/16 v3, 0x15

    .line 233
    .line 234
    invoke-direct {v0, p0, v3}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3}, Lfc5;->size()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    move v5, p1

    .line 242
    :goto_0
    if-ge v5, v3, :cond_0

    .line 243
    .line 244
    invoke-virtual {p3, v5}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v0, v6}, Lw20;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    add-int/lit8 v5, v5, 0x1

    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_0
    const p3, 0x7f0d0161

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, p3, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    check-cast p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 265
    .line 266
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->x:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 267
    .line 268
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 269
    .line 270
    invoke-direct {p3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->l(I)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 278
    .line 279
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    .line 281
    .line 282
    new-instance p3, Lh00;

    .line 283
    .line 284
    const/16 v0, 0xa

    .line 285
    .line 286
    invoke-direct {p3, p0, v0}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1, p1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q(ZZ)V

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 301
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic c(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;ZZLa37;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->getActiveMenuItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    and-int/lit8 p4, p4, 0x8

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->b(ZZLjava/util/List;Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final getActiveMenuItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->G:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Apps:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    :goto_0
    new-instance v0, Lnl8;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lnl8;-><init>(Landroid/widget/LinearLayout;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lsh;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-direct {p0, v1}, Lsh;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lme3;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, v0, v2, p0}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private final getFabMenuMargin()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static i(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Ljava/lang/CharSequence;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;ZI)Lb37;
    .locals 5

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p5, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_1
    const/16 v0, 0x8

    .line 13
    .line 14
    and-int/2addr p5, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p5, :cond_2

    .line 17
    .line 18
    move p4, v2

    .line 19
    :cond_2
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->e:Landroid/view/LayoutInflater;

    .line 20
    .line 21
    const v3, 0x7f0d0160

    .line 22
    .line 23
    .line 24
    invoke-virtual {p5, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p5

    .line 28
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast p5, Landroid/view/ViewGroup;

    .line 32
    .line 33
    const v3, 0x7f0a041e

    .line 34
    .line 35
    .line 36
    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 41
    .line 42
    const v4, 0x7f0a041f

    .line 43
    .line 44
    .line 45
    invoke-virtual {p5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    if-eqz p3, :cond_5

    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    move-object v1, p1

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    if-eqz p2, :cond_6

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p2, p1}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_6
    :goto_2
    invoke-virtual {v3, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    invoke-virtual {v3, p1}, Lcom/google/android/material/button/MaterialButton;->setElevation(F)V

    .line 105
    .line 106
    .line 107
    if-eqz p4, :cond_7

    .line 108
    .line 109
    move v0, v2

    .line 110
    :cond_7
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    if-eqz p4, :cond_8

    .line 114
    .line 115
    const/16 p1, 0x18

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->l(I)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    const/16 p3, 0x38

    .line 126
    .line 127
    invoke-virtual {p0, p3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->l(I)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    invoke-virtual {v3, p1, p2, p0, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 136
    .line 137
    .line 138
    :cond_8
    new-instance p0, Lb37;

    .line 139
    .line 140
    invoke-direct {p0, p5, v3, v4}, Lb37;-><init>(Landroid/view/ViewGroup;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/widget/LinearLayout;Lb37;)V
    .locals 3

    .line 1
    iget-object p2, p2, Lb37;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    .line 5
    const/16 v1, 0x38

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->l(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    .line 14
    .line 15
    const v1, 0x800005

    .line 16
    .line 17
    .line 18
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {p0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->l(I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final b(ZZLjava/util/List;Lbt3;)V
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    :cond_0
    move-object v6, p3

    .line 10
    move-object v8, p4

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/View;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/graphics/Rect;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v3, Lc37;

    .line 45
    .line 46
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    move-object v7, p0

    .line 49
    move v5, p1

    .line 50
    move-object v6, p3

    .line 51
    move-object v8, p4

    .line 52
    invoke-direct/range {v3 .. v8}, Lc37;-><init>(Landroid/widget/LinearLayout;ZLjava/util/List;Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Lbt3;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v3}, Lyt5;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    const/high16 p2, 0x3f800000    # 1.0f

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    const/high16 p2, 0x3f000000    # 0.5f

    .line 85
    .line 86
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 87
    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    if-eqz v8, :cond_5

    .line 95
    .line 96
    invoke-interface {v8}, Lbt3;->invoke()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void
.end method

.method public final d(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->h()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->G:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 5
    .line 6
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Main:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Apps:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Ll73;->g(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->J:F

    .line 9
    .line 10
    const v0, 0x7f04014b

    .line 11
    .line 12
    .line 13
    const v1, 0x7f04014a

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->m(FII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->J:F

    .line 21
    .line 22
    const v1, 0x7f040137

    .line 23
    .line 24
    .line 25
    const v2, 0x7f040136

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->m(FII)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->x:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/animation/Animator;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->h()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->I:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->I:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->I:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    return-void
.end method

.method public final getOnActionClick()Lmt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->b:Lmt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOnBeforeExpand()Lbt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->a:Lbt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    move v3, v4

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move v3, v0

    .line 15
    :goto_1
    const/4 v5, 0x0

    .line 16
    const/high16 v6, 0x3f000000    # 0.5f

    .line 17
    .line 18
    const/high16 v7, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move v6, v7

    .line 37
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v5}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    move v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {}, Ll0;->a()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    move v1, v0

    .line 50
    :goto_2
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v1, v3, :cond_4

    .line 57
    .line 58
    move v3, v4

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move v3, v0

    .line 61
    :goto_3
    if-eqz v3, :cond_7

    .line 62
    .line 63
    add-int/lit8 v3, v1, 0x1

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    move v2, v7

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move v2, v6

    .line 80
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v5}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 84
    .line 85
    .line 86
    move v1, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    invoke-static {}, Ll0;->a()V

    .line 89
    .line 90
    .line 91
    :cond_7
    return-void
.end method

.method public final j()Landroid/widget/LinearLayout;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v1, -0x2

    .line 13
    invoke-direct {p0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    const p0, 0x800005

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final k(Landroid/widget/LinearLayout;Landroid/view/MenuItem;ZLbt3;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    move-object v2, v0

    .line 10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->t:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v6, 0x2

    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v1, p0

    .line 30
    move v5, p3

    .line 31
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->i(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Ljava/lang/CharSequence;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;ZI)Lb37;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object p3, p0, Lb37;->a:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    .line 42
    .line 43
    .line 44
    iget-object p3, p0, Lb37;->b:Lcom/google/android/material/button/MaterialButton;

    .line 45
    .line 46
    new-instance v0, Lnf;

    .line 47
    .line 48
    const/16 v2, 0xa

    .line 49
    .line 50
    invoke-direct {v0, p4, v2}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object p3, v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->r:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1, p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->a(Landroid/widget/LinearLayout;Lb37;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final l(I)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, p0

    .line 13
    invoke-static {p1}, Ltu0;->v(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final m(FII)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p2}, Ljm1;->U(Landroid/view/View;I)Landroid/util/TypedValue;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {v0, p2}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, p3}, Ljm1;->U(Landroid/view/View;I)Landroid/util/TypedValue;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {v0, p3}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->y:Landroid/animation/ArgbEvaluator;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast p0, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final n(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->r:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lb37;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lb37;->a:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p1, 0x8

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final o(ZZ)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->a:Lbt3;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/16 v0, 0x8

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    move v2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v2, v0

    .line 32
    :goto_0
    iget-boolean v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->c:Z

    .line 33
    .line 34
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->k:Landroid/view/View;

    .line 35
    .line 36
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    if-ne p1, v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ne v3, v2, :cond_3

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    move v0, v1

    .line 49
    :cond_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q(ZZ)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->f()V

    .line 57
    .line 58
    .line 59
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->c:Z

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Main:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 68
    .line 69
    invoke-virtual {p0, v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    const/16 v1, 0xc

    .line 77
    .line 78
    invoke-static {p0, v2, p2, v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->c(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;ZZLa37;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    if-eqz p2, :cond_5

    .line 83
    .line 84
    new-instance v0, La37;

    .line 85
    .line 86
    invoke-direct {v0, p0, v1}, La37;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;I)V

    .line 87
    .line 88
    .line 89
    const/4 v3, 0x4

    .line 90
    invoke-static {p0, v1, v2, v0, v3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->c(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;ZZLa37;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Main:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 98
    .line 99
    invoke-virtual {p0, v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    const v1, 0x7f130105

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    const v1, 0x7f1303b6

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->x:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v0}, Ls88;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q(ZZ)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->f()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->G:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_2

    .line 7
    .line 8
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->getActiveMenuItems()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Lw01;

    .line 22
    .line 23
    const/16 v1, 0xe

    .line 24
    .line 25
    invoke-direct {v0, v1, p0, p1}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p0, p1, v1, p2, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->b(ZZLjava/util/List;Lbt3;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->h()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->d(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final q(ZZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f1303b6

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->x:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->H:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 18
    .line 19
    const v2, 0x7f08019f

    .line 20
    .line 21
    .line 22
    const v3, 0x7f0801ae

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iput-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->H:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 45
    .line 46
    .line 47
    :cond_3
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const v0, 0x7f08007c

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const v0, 0x7f08007b

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move-object v0, v4

    .line 72
    :goto_1
    instance-of v5, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 73
    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    move-object v4, v0

    .line 77
    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 78
    .line 79
    :cond_6
    iput-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->H:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 80
    .line 81
    if-nez v4, :cond_8

    .line 82
    .line 83
    if-eqz p1, :cond_7

    .line 84
    .line 85
    move v2, v3

    .line 86
    :cond_7
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_8
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 94
    .line 95
    .line 96
    :goto_2
    if-eqz p1, :cond_9

    .line 97
    .line 98
    const/high16 v0, 0x3f800000    # 1.0f

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_9
    const/4 v0, 0x0

    .line 102
    :goto_3
    const/4 v2, 0x0

    .line 103
    const/4 v3, 0x1

    .line 104
    if-nez p2, :cond_a

    .line 105
    .line 106
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->g()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->e(F)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setAnimationEnabled(Z)V

    .line 113
    .line 114
    .line 115
    xor-int/lit8 p0, p1, 0x1

    .line 116
    .line 117
    invoke-virtual {v1, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setAnimationEnabled(Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_a
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->g()V

    .line 125
    .line 126
    .line 127
    iget p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->J:F

    .line 128
    .line 129
    cmpg-float v4, p2, v0

    .line 130
    .line 131
    const/4 v5, 0x2

    .line 132
    if-nez v4, :cond_b

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->e(F)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_b
    new-array v4, v5, [F

    .line 139
    .line 140
    aput p2, v4, v2

    .line 141
    .line 142
    aput v0, v4, v3

    .line 143
    .line 144
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const-wide/16 v6, 0xa0

    .line 149
    .line 150
    invoke-virtual {p2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    .line 152
    .line 153
    sget-object v0, Led;->b:Li53;

    .line 154
    .line 155
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lhr2;

    .line 159
    .line 160
    invoke-direct {v0, p0, v3}, Lhr2;-><init>(Ljava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Le37;

    .line 167
    .line 168
    invoke-direct {v0, p0, p2}, Le37;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Landroid/animation/ValueAnimator;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 175
    .line 176
    .line 177
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->I:Landroid/animation/ValueAnimator;

    .line 178
    .line 179
    :goto_4
    if-eqz p1, :cond_c

    .line 180
    .line 181
    invoke-virtual {v1, v5}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_c
    const/4 p0, 0x3

    .line 186
    invoke-virtual {v1, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final setOnActionClick(Lmt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmt3;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->b:Lmt3;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnBeforeExpand(Lbt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbt3;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->a:Lbt3;

    .line 2
    .line 3
    return-void
.end method
