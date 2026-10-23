.class public final synthetic Lkr2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:Llr2;


# direct methods
.method public synthetic constructor <init>(Llr2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkr2;->a:Llr2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lkr2;->a:Llr2;

    .line 2
    .line 3
    iget-object v0, p0, Llr2;->h:Landroid/widget/AutoCompleteTextView;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lqw2;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x1

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method
