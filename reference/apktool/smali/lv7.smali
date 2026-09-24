.class public final Llv7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Liv7;

.field public final b:Ljava/util/ArrayList;

.field public c:Lvc4;

.field public d:Lvc4;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llv7;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    sget-object v0, Lvc4;->e:Lvc4;

    .line 12
    .line 13
    iput-object v0, p0, Llv7;->c:Lvc4;

    .line 14
    .line 15
    iput-object v0, p0, Llv7;->d:Lvc4;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v2

    .line 34
    :goto_0
    iput v0, p0, Llv7;->e:I

    .line 35
    .line 36
    new-instance v0, Liv7;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, p0, v1, p1}, Liv7;-><init>(Llv7;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Llv7;->a:Liv7;

    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lhb;

    .line 57
    .line 58
    const/4 v4, 0x6

    .line 59
    invoke-direct {v3, p0, v4}, Lhb;-><init>(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    sget-object v4, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-static {v0, v3}, Luk8;->c(Landroid/view/View;Lls5;)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Ljv7;

    .line 68
    .line 69
    invoke-direct {v3, p0}, Ljv7;-><init>(Llv7;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v3}, Ldl8;->p(Landroid/view/View;Lol1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    sub-int/2addr p0, v1

    .line 80
    :goto_1
    if-ltz p0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eq v3, v4, :cond_1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v1, 0x0

    .line 101
    :goto_2
    if-nez v1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    new-instance p0, Lkv7;

    .line 108
    .line 109
    invoke-direct {p0, p1, v0}, Lkv7;-><init>(Landroid/view/ViewGroup;Liv7;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
