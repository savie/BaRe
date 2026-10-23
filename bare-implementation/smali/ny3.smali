.class public final Lny3;
.super Lr4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lmy3;


# direct methods
.method public constructor <init>(Lnh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmy3;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lmy3;-><init>(Lnh;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lny3;->a:Lmy3;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Landroid/widget/TextView;)V
    .locals 6

    .line 1
    const p0, 0x7f0a0304

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lyc9;->p(Landroid/widget/TextView;)[Lv60;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    array-length v0, p0

    .line 41
    if-lez v0, :cond_2

    .line 42
    .line 43
    const v0, 0x7f0a0303

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Lr60;

    .line 53
    .line 54
    invoke-direct {v1, p1}, Lr60;-><init>(Landroid/widget/TextView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance v0, Lu60;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, p1, v1}, Lu60;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    array-length v2, p0

    .line 70
    :goto_0
    if-ge v1, v2, :cond_2

    .line 71
    .line 72
    aget-object v3, p0, v1

    .line 73
    .line 74
    iget-object v3, v3, Lv60;->b:Lp60;

    .line 75
    .line 76
    new-instance v4, Lt60;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-direct {v4, p1, v0, v5}, Lt60;-><init>(Landroid/widget/TextView;Lu60;Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Lp60;->c(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lyc9;->k0(Landroid/widget/TextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e(Li75;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lny3;->a:Lmy3;

    .line 2
    .line 3
    iput-object p0, p1, Li75;->b:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final g(Lbb2;)V
    .locals 1

    .line 1
    new-instance p0, Lck1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lck1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-class v0, Ls94;

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
