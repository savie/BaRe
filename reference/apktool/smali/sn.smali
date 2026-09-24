.class public final Lsn;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic M:Lh80;


# direct methods
.method public constructor <init>(Lh80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsn;->M:Lh80;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object p0, p0, Lsn;->M:Lh80;

    .line 2
    .line 3
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lfo;

    .line 6
    .line 7
    iget-object v0, p0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lfo;->N:Landroid/widget/PopupWindow;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v0, v0, Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/View;

    .line 39
    .line 40
    sget-object v1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lfo;->P:Llm8;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Llm8;->d(Lom8;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lfo;->P:Llm8;

    .line 57
    .line 58
    iget-object p0, p0, Lfo;->R:Landroid/view/ViewGroup;

    .line 59
    .line 60
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 63
    .line 64
    .line 65
    return-void
.end method
