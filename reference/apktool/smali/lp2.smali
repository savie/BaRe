.class public final Llp2;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final d(Landroid/view/View;Lm6;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Landroidx/drawerlayout/widget/DrawerLayout;->U:[I

    .line 9
    .line 10
    sget-object p0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 p1, 0x2

    .line 24
    if-eq p0, p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
