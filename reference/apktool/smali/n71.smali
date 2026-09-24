.class public final Ln71;
.super Landroid/util/Property;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Ln71;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Ln71;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lsu4;

    .line 7
    .line 8
    iget p0, p1, Lsu4;->p:F

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p1, Lo71;

    .line 16
    .line 17
    iget p0, p1, Lo71;->p:F

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget p0, p0, Ln71;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lsu4;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    iput p0, p1, Lsu4;->p:F

    .line 15
    .line 16
    const/high16 p2, 0x44e10000    # 1800.0f

    .line 17
    .line 18
    mul-float/2addr p0, p2

    .line 19
    float-to-int p0, p0

    .line 20
    iget-object p2, p1, Lsu4;->e:[Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    iget-object v0, p1, Lao;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lsp2;

    .line 39
    .line 40
    sget-object v4, Lsu4;->t:[I

    .line 41
    .line 42
    mul-int/lit8 v5, v2, 0x2

    .line 43
    .line 44
    aget v6, v4, v5

    .line 45
    .line 46
    sget-object v7, Lsu4;->r:[I

    .line 47
    .line 48
    aget v8, v7, v5

    .line 49
    .line 50
    invoke-static {p0, v6, v8}, Lao;->h(III)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    aget-object v8, p2, v5

    .line 55
    .line 56
    invoke-interface {v8, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v8, 0x0

    .line 61
    const/high16 v9, 0x3f800000    # 1.0f

    .line 62
    .line 63
    invoke-static {v6, v8, v9}, Liz1;->c(FFF)F

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iput v6, v3, Lsp2;->a:F

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    aget v4, v4, v5

    .line 72
    .line 73
    aget v6, v7, v5

    .line 74
    .line 75
    invoke-static {p0, v4, v6}, Lao;->h(III)F

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    aget-object v5, p2, v5

    .line 80
    .line 81
    invoke-interface {v5, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-static {v4, v8, v9}, Liz1;->c(FFF)F

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    iput v4, v3, Lsp2;->b:F

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-boolean p0, p1, Lsu4;->n:Z

    .line 95
    .line 96
    if-eqz p0, :cond_2

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_1

    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lsp2;

    .line 113
    .line 114
    iget-object v0, p1, Lsu4;->f:Lzu4;

    .line 115
    .line 116
    iget-object v0, v0, Llm0;->e:[I

    .line 117
    .line 118
    iget v2, p1, Lsu4;->k:I

    .line 119
    .line 120
    aget v0, v0, v2

    .line 121
    .line 122
    iput v0, p2, Lsp2;->c:I

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    iput-boolean v1, p1, Lsu4;->n:Z

    .line 126
    .line 127
    :cond_2
    iget-object p0, p1, Lao;->a:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Lmb4;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_0
    check-cast p1, Lo71;

    .line 136
    .line 137
    check-cast p2, Ljava/lang/Float;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    iput p0, p1, Lo71;->p:F

    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
