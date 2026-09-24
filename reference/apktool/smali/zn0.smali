.class public final Lzn0;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:Lfo0;


# direct methods
.method public constructor <init>(Lfo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzn0;->d:Lfo0;

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
    .locals 1

    .line 1
    iget-object v0, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    const/high16 p0, 0x100000

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Lm6;->a(I)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/high16 v0, 0x100000

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lzn0;->d:Lfo0;

    .line 6
    .line 7
    check-cast p0, Lqi7;

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    invoke-virtual {p0, p1}, Lfo0;->a(I)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw5;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method
