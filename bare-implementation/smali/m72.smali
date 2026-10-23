.class public final Lm72;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ln72;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm72;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "CustomViewTarget"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lm72;->a:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ln72;

    .line 34
    .line 35
    if-eqz p0, :cond_8

    .line 36
    .line 37
    iget-object v0, p0, Ln72;->b:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v1, p0, Ln72;->a:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v2

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v4, 0x0

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v2, v4

    .line 68
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {p0, v5, v2, v3}, Ln72;->a(III)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    add-int/2addr v5, v3

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    .line 93
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {p0, v3, v4, v5}, Ln72;->a(III)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/high16 v4, -0x80000000

    .line 102
    .line 103
    if-gtz v2, :cond_4

    .line 104
    .line 105
    if-ne v2, v4, :cond_8

    .line 106
    .line 107
    :cond_4
    if-gtz v3, :cond_5

    .line 108
    .line 109
    if-ne v3, v4, :cond_8

    .line 110
    .line 111
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Lfh7;

    .line 131
    .line 132
    invoke-virtual {v5, v2, v3}, Lfh7;->m(II)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    iget-object v2, p0, Ln72;->c:Lm72;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Ln72;->c:Lm72;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    .line 156
    .line 157
    :cond_8
    :goto_2
    const/4 p0, 0x1

    .line 158
    return p0
.end method
