.class public final Lda1;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lda1;->d:Lcom/google/android/material/timepicker/ClockFaceView;

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
    .locals 3

    .line 1
    iget-object v0, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0a031d

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lda1;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Landroid/util/SparseArray;

    .line 26
    .line 27
    add-int/lit8 v2, v1, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-static {p1, p0, v2, v1, v2}, Lom5;->e(ZIIII)Lom5;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p2, p0}, Lm6;->j(Lom5;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lg6;->g:Lg6;

    .line 55
    .line 56
    invoke-virtual {p2, p0}, Lm6;->b(Lg6;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lda1;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockFaceView;->L:Lcom/google/android/material/timepicker/ClockHandView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/material/timepicker/ClockFaceView;->M:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    if-ne p2, v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    int-to-float v8, p0

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    int-to-float v9, p0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    move-wide v5, v3

    .line 31
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw5;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0
.end method
