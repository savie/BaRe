.class public final Lw61;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/ChipTextInputComboView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw61;->d:Lcom/google/android/material/timepicker/ChipTextInputComboView;

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
    .locals 2

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
    check-cast p1, Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Lm6;->p(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lw61;->d:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x2

    .line 29
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
