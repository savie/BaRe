.class public abstract Ls91;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lg6;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lw5;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lg6;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, v1, p1}, Lg6;-><init>(ILjava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ls91;->d:Lg6;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lm6;)V
    .locals 2

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
    iget-object p0, p0, Ls91;->d:Lg6;

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Lm6;->b(Lg6;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
