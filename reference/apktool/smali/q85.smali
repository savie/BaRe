.class public final Lq85;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq85;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Lw5;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lm6;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    iget-object v1, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->S:I

    .line 9
    .line 10
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move v0, v1

    .line 18
    move v3, v0

    .line 19
    :goto_0
    iget-object v4, p0, Lq85;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-ge v0, v5, :cond_3

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-ne v5, p1, :cond_1

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    instance-of v5, v5, Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    if-eq v4, v5, :cond_2

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    :goto_1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 61
    .line 62
    iget-boolean p0, p1, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    invoke-static {p0, v1, p1, v2, p1}, Lom5;->e(ZIIII)Lom5;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p2, p0}, Lm6;->j(Lom5;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
