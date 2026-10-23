.class public final synthetic Log7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/ferfalk/simplesearchview/SimpleSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Log7;->a:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    sget p1, Lcom/ferfalk/simplesearchview/SimpleSearchView;->O:I

    .line 2
    .line 3
    iget-object p0, p0, Log7;->a:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-lez p3, :cond_1

    .line 19
    .line 20
    iget-object p3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->K:Lug7;

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-interface {p3}, Lug7;->z()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a(Z)V

    .line 32
    .line 33
    .line 34
    iput-boolean p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->M:Z

    .line 35
    .line 36
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->M:Z

    .line 44
    .line 45
    :cond_1
    :goto_0
    return p2
.end method
