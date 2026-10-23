.class public final Lu60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu60;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu60;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lu60;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lu60;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lgl8;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lgl8;->o(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    check-cast p0, Lfo0;

    .line 16
    .line 17
    iget-object v0, p0, Lfo0;->i:Leo0;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lfo0;->h:Landroid/content/Context;

    .line 22
    .line 23
    const-string v2, "window"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/view/WindowManager;

    .line 30
    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v3, 0x1e

    .line 34
    .line 35
    if-lt v2, v3, :cond_0

    .line 36
    .line 37
    invoke-static {v1}, Lh6;->b(Landroid/view/WindowManager;)Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Landroid/graphics/Point;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .line 58
    .line 59
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 60
    .line 61
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 64
    .line 65
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x2

    .line 72
    new-array v2, v2, [I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 75
    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    aget v2, v2, v3

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    add-int/2addr v3, v2

    .line 85
    sub-int/2addr v1, v3

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    float-to-int v2, v2

    .line 91
    add-int/2addr v1, v2

    .line 92
    iget v2, p0, Lfo0;->o:I

    .line 93
    .line 94
    if-lt v1, v2, :cond_1

    .line 95
    .line 96
    iput v2, p0, Lfo0;->p:I

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    .line 105
    if-nez v3, :cond_2

    .line 106
    .line 107
    sget-object p0, Lfo0;->y:Ljava/lang/String;

    .line 108
    .line 109
    const-string v0, "Unable to apply gesture inset because layout params are not MarginLayoutParams"

    .line 110
    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    iget v3, p0, Lfo0;->o:I

    .line 116
    .line 117
    iput v3, p0, Lfo0;->p:I

    .line 118
    .line 119
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    .line 121
    iget p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 122
    .line 123
    sub-int/2addr v3, v1

    .line 124
    add-int/2addr v3, p0

    .line 125
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_1
    return-void

    .line 131
    :pswitch_1
    check-cast p0, Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
