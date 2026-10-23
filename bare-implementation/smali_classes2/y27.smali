.class public final Ly27;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

.field public final b:Lhj;

.field public c:Lwa;

.field public final d:Lgh2;

.field public final e:Lcom/google/android/material/button/MaterialButton;

.field public final f:Lw27;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;Lhj;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ly27;->a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 5
    .line 6
    iput-object p3, p0, Ly27;->b:Lhj;

    .line 7
    .line 8
    const p3, 0x7f0d015d

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p3, 0x7f0a00ff

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    const p3, 0x7f0a03e5

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 35
    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    new-instance p3, Lgh2;

    .line 39
    .line 40
    check-cast p1, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-direct {p3, p1, v1, v2}, Lgh2;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Ly27;->d:Lgh2;

    .line 46
    .line 47
    iput-object v1, p0, Ly27;->e:Lcom/google/android/material/button/MaterialButton;

    .line 48
    .line 49
    new-instance p1, Lw27;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lgm7;-><init>(Lfm7;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Ly27;->f:Lw27;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 57
    .line 58
    .line 59
    sget p3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->c1:I

    .line 60
    .line 61
    const/4 p3, 0x1

    .line 62
    invoke-virtual {v2, p3}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 63
    .line 64
    .line 65
    new-instance p3, Lf7;

    .line 66
    .line 67
    const/4 v1, 0x4

    .line 68
    invoke-direct {p3, p1, v1}, Lf7;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    iput-object p3, p1, Lgm7;->j:Lqt3;

    .line 72
    .line 73
    new-instance p3, Lhq0;

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-direct {p3, v1, p0, p1}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iput-object p3, p1, Lw27;->l:Lhq0;

    .line 80
    .line 81
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getBatteryPercentReq()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->getEntries()Ljx2;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    .line 93
    .line 94
    const/16 p3, 0xa

    .line 95
    .line 96
    invoke-static {p2, p3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    check-cast p2, Lz3;

    .line 104
    .line 105
    new-instance p3, Lw3;

    .line 106
    .line 107
    invoke-direct {p3, p2}, Lw3;-><init>(Lz3;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {p3}, Lw3;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_1

    .line 115
    .line 116
    invoke-virtual {p3}, Lw3;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 121
    .line 122
    new-instance v1, Lx27;

    .line 123
    .line 124
    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 125
    .line 126
    if-ne p2, v3, :cond_0

    .line 127
    .line 128
    move v3, p1

    .line 129
    goto :goto_1

    .line 130
    :cond_0
    const/16 v3, 0x32

    .line 131
    .line 132
    :goto_1
    invoke-direct {v1, p2, v3}, Lx27;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_3

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    move-object p3, p2

    .line 154
    check-cast p3, Lx27;

    .line 155
    .line 156
    iget-object p3, p3, Lx27;->a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 157
    .line 158
    iget-object v1, p0, Ly27;->a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 159
    .line 160
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getBatteryReqEnum()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-ne p3, v1, :cond_2

    .line 165
    .line 166
    move-object v0, p2

    .line 167
    :cond_3
    check-cast v0, Lx27;

    .line 168
    .line 169
    if-nez v0, :cond_4

    .line 170
    .line 171
    invoke-static {v2}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    move-object v0, p1

    .line 176
    check-cast v0, Lx27;

    .line 177
    .line 178
    :cond_4
    iget-object p1, p0, Ly27;->f:Lw27;

    .line 179
    .line 180
    new-instance v1, Lfm7;

    .line 181
    .line 182
    iget-object p2, v0, Lx27;->a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-static {p2}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    const/4 v5, 0x0

    .line 193
    const/16 v6, 0x1c

    .line 194
    .line 195
    const/4 v4, 0x0

    .line 196
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    const/4 p2, 0x0

    .line 200
    invoke-virtual {p1, v1, p2}, Lgm7;->w(Lfm7;Z)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Ly27;->e:Lcom/google/android/material/button/MaterialButton;

    .line 204
    .line 205
    new-instance p2, Lh7;

    .line 206
    .line 207
    const/16 p3, 0xd

    .line 208
    .line 209
    invoke-direct {p2, p0, p3}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    const-string p1, "Missing required view with ID: "

    .line 225
    .line 226
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0
.end method
