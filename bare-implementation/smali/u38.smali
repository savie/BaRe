.class public final Lu38;
.super Landroid/view/View$AccessibilityDelegate;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Landroid/content/res/Resources;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu38;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    iput p2, p0, Lu38;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lu38;->a:Landroid/content/res/Resources;

    .line 5
    .line 6
    iget p0, p0, Lu38;->b:I

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
