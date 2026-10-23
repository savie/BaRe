.class public final synthetic Li44;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li44;->a:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 5
    .line 6
    iput-object p2, p0, Li44;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Li44;->a:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 4
    .line 5
    iget v0, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->j:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Li44;->b:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->w(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
