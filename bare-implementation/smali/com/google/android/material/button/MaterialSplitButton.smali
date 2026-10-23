.class public Lcom/google/android/material/button/MaterialSplitButton;
.super Lo85;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic M:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialSplitButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040417

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialSplitButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    const v0, 0x7f1405a7

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3, v0}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lo85;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-gt v0, v1, :cond_2

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lo85;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x1

    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 26
    .line 27
    .line 28
    const-class p1, Landroid/widget/Button;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setA11yClassName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-boolean p2, v0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    const p2, 0x7f130355

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const p2, 0x7f130354

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object p2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 57
    .line 58
    new-instance p2, Lpk8;

    .line 59
    .line 60
    const/16 p3, 0x40

    .line 61
    .line 62
    const/16 v1, 0x1e

    .line 63
    .line 64
    const v2, 0x7f0a04a8

    .line 65
    .line 66
    .line 67
    const-class v3, Ljava/lang/CharSequence;

    .line 68
    .line 69
    invoke-direct {p2, v2, v3, p3, v1}, La65;-><init>(ILjava/lang/Class;II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0, p1}, La65;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lf95;

    .line 76
    .line 77
    invoke-direct {p1, p0, v0}, Lf95;-><init>(Lcom/google/android/material/button/MaterialSplitButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, v0, Lcom/google/android/material/button/MaterialButton;->e:Ljava/util/LinkedHashSet;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void

    .line 86
    :cond_2
    const-string p0, "MaterialSplitButton can only hold two MaterialButtons."

    .line 87
    .line 88
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    const-string p0, "MaterialSplitButton can only hold MaterialButtons."

    .line 93
    .line 94
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
