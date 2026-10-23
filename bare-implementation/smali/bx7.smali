.class public final Lbx7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbx7;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lbx7;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    instance-of v1, v0, Landroid/text/Spanned;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroid/text/Spanned;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-class v4, Lax7;

    .line 27
    .line 28
    invoke-interface {v1, v3, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v0, v2

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    array-length v1, v0

    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    array-length v1, v0

    .line 40
    :goto_1
    if-ge v3, v1, :cond_1

    .line 41
    .line 42
    aget-object v4, v0, v3

    .line 43
    .line 44
    check-cast v4, Lax7;

    .line 45
    .line 46
    iput-object v2, v4, Lax7;->r:Lib;

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 52
    .line 53
    .line 54
    const p0, 0x7f0a0305

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
