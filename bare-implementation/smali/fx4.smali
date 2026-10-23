.class public final Lfx4;
.super Landroid/view/View$AccessibilityDelegate;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lcom/google/android/material/listitem/ListItemLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/listitem/ListItemLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfx4;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Lix4;Lm6;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    new-instance v2, Lg6;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v2, v3, v1}, Lg6;-><init>(ILjava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lm6;->b(Lg6;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public static b(Lix4;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    move v1, v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ne v3, p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lm6;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Lm6;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lfx4;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 12
    .line 13
    invoke-static {p2, p1}, Lfx4;->a(Lix4;Lm6;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 17
    .line 18
    invoke-static {p0, p1}, Lfx4;->a(Lix4;Lm6;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfx4;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 4
    .line 5
    invoke-static {v1, p2}, Lfx4;->b(Lix4;I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 13
    .line 14
    invoke-static {v0, p2}, Lfx4;->b(Lix4;I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method
