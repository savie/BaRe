.class public final Lu51;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 15
    iput p2, p0, Lu51;->d:I

    iput-object p1, p0, Lu51;->e:Landroid/view/View;

    invoke-direct {p0}, Lw5;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lu51;->d:I

    .line 3
    .line 4
    iput-object p1, p0, Lu51;->e:Landroid/view/View;

    .line 5
    .line 6
    invoke-direct {p0}, Lw5;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lu51;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lw5;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lu51;->e:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    sget-object p1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 43
    .line 44
    .line 45
    :cond_0
    const/4 p0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    :goto_0
    return p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lu51;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lu51;->e:Landroid/view/View;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Lw5;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    .line 12
    .line 13
    const-class p0, Landroidx/viewpager/widget/ViewPager;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v1, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Low5;->c()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 p1, 0x1

    .line 31
    if-le p0, p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const/16 p1, 0x1000

    .line 43
    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    iget-object p0, v1, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Low5;->c()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 55
    .line 56
    .line 57
    iget p0, v1, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 58
    .line 59
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 60
    .line 61
    .line 62
    iget p0, v1, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 63
    .line 64
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_0
    invoke-super {p0, p1, p2}, Lw5;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "androidx.drawerlayout.widget.DrawerLayout"

    .line 72
    .line 73
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_1
    invoke-super {p0, p1, p2}, Lw5;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 78
    .line 79
    .line 80
    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 81
    .line 82
    iget-boolean p0, v1, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 83
    .line 84
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;Lm6;)V
    .locals 3

    .line 1
    iget v0, p0, Lu51;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lu51;->e:Landroid/view/View;

    .line 5
    .line 6
    iget-object p0, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 14
    .line 15
    .line 16
    const-class p0, Landroidx/viewpager/widget/ViewPager;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p2, p0}, Lm6;->i(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    .line 26
    .line 27
    iget-object p0, v2, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Low5;->c()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-le p0, p1, :cond_0

    .line 37
    .line 38
    move v1, p1

    .line 39
    :cond_0
    invoke-virtual {p2, v1}, Lm6;->o(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const/16 p0, 0x1000

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Lm6;->a(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 p0, -0x1

    .line 54
    invoke-virtual {v2, p0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    const/16 p0, 0x2000

    .line 61
    .line 62
    invoke-virtual {p2, p0}, Lm6;->a(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :pswitch_0
    sget-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->U:[I

    .line 67
    .line 68
    iget-object v0, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 71
    .line 72
    .line 73
    const-string p0, "androidx.drawerlayout.widget.DrawerLayout"

    .line 74
    .line 75
    invoke-virtual {p2, p0}, Lm6;->i(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lg6;->e:Lg6;

    .line 85
    .line 86
    iget-object p0, p0, Lg6;->a:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 91
    .line 92
    .line 93
    sget-object p0, Lg6;->f:Lg6;

    .line 94
    .line 95
    iget-object p0, p0, Lg6;->a:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_1
    iget-object p2, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 104
    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 106
    .line 107
    .line 108
    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    .line 109
    .line 110
    iget-boolean p0, v2, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    .line 111
    .line 112
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 113
    .line 114
    .line 115
    iget-boolean p0, v2, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 116
    .line 117
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget v0, p0, Lu51;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lw5;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    sget-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->U:[I

    .line 12
    .line 13
    iget-object p0, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget v0, p0, Lu51;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lw5;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lu51;->e:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lw5;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 p1, 0x1

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/16 p0, 0x1000

    .line 24
    .line 25
    if-eq p2, p0, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x2000

    .line 28
    .line 29
    if-eq p2, p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, -0x1

    .line 33
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    iget p0, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 40
    .line 41
    sub-int/2addr p0, p1

    .line 42
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    iget p0, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 53
    .line 54
    add-int/2addr p0, p1

    .line 55
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 60
    :goto_1
    return p1

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
