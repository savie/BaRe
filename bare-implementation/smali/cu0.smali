.class public final Lcu0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lum8;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcu0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu0;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcu0;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lix7;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcu0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p1}, Lix7;->b()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public o(Landroid/view/View;Ltv8;Lvm8;)Ltv8;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Ltv8;->a:Lqv8;

    .line 10
    .line 11
    const/16 v5, 0x207

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Lqv8;->h(I)Lvc4;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/16 v6, 0x20

    .line 18
    .line 19
    invoke-virtual {v4, v6}, Lqv8;->h(I)Lvc4;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v6, v0, Lcu0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 26
    .line 27
    iget-boolean v7, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    .line 28
    .line 29
    iget v8, v5, Lvc4;->b:I

    .line 30
    .line 31
    iget v9, v5, Lvc4;->c:I

    .line 32
    .line 33
    iget v10, v5, Lvc4;->a:I

    .line 34
    .line 35
    iput v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v12, 0x1

    .line 42
    if-ne v8, v12, :cond_0

    .line 43
    .line 44
    move v8, v12

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v8, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 56
    .line 57
    .line 58
    move-result v15

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Ltv8;->a()I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    iput v13, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    .line 66
    .line 67
    iget v11, v3, Lvm8;->d:I

    .line 68
    .line 69
    add-int/2addr v13, v11

    .line 70
    :cond_1
    iget-boolean v11, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 71
    .line 72
    if-eqz v11, :cond_3

    .line 73
    .line 74
    if-eqz v8, :cond_2

    .line 75
    .line 76
    iget v11, v3, Lvm8;->c:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget v11, v3, Lvm8;->a:I

    .line 80
    .line 81
    :goto_1
    add-int v14, v11, v10

    .line 82
    .line 83
    :cond_3
    iget-boolean v11, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Z

    .line 84
    .line 85
    if-eqz v11, :cond_5

    .line 86
    .line 87
    if-eqz v8, :cond_4

    .line 88
    .line 89
    iget v3, v3, Lvm8;->a:I

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    iget v3, v3, Lvm8;->c:I

    .line 93
    .line 94
    :goto_2
    add-int v15, v3, v9

    .line 95
    .line 96
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .line 102
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    .line 103
    .line 104
    if-eqz v8, :cond_6

    .line 105
    .line 106
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 107
    .line 108
    if-eq v8, v10, :cond_6

    .line 109
    .line 110
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 111
    .line 112
    move v11, v12

    .line 113
    goto :goto_3

    .line 114
    :cond_6
    const/4 v11, 0x0

    .line 115
    :goto_3
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    .line 116
    .line 117
    if-eqz v8, :cond_7

    .line 118
    .line 119
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 120
    .line 121
    if-eq v8, v9, :cond_7

    .line 122
    .line 123
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 124
    .line 125
    move v11, v12

    .line 126
    :cond_7
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    .line 127
    .line 128
    if-eqz v8, :cond_8

    .line 129
    .line 130
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    .line 132
    iget v5, v5, Lvc4;->b:I

    .line 133
    .line 134
    if-eq v8, v5, :cond_8

    .line 135
    .line 136
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    move v12, v11

    .line 140
    :goto_4
    if-eqz v12, :cond_9

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v1, v14, v3, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 150
    .line 151
    .line 152
    iget-boolean v0, v0, Lcu0;->a:Z

    .line 153
    .line 154
    if-eqz v0, :cond_a

    .line 155
    .line 156
    iget v1, v4, Lvc4;->d:I

    .line 157
    .line 158
    iput v1, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 159
    .line 160
    :cond_a
    if-nez v7, :cond_c

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_b
    return-object v2

    .line 166
    :cond_c
    :goto_5
    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S()V

    .line 167
    .line 168
    .line 169
    return-object v2
.end method
