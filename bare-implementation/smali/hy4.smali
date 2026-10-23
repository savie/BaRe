.class public final Lhy4;
.super Landroid/database/DataSetObserver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lky4;


# direct methods
.method public constructor <init>(Lky4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhy4;->a:Lky4;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhy4;->a:Lky4;

    .line 2
    .line 3
    iget-object v0, p0, Lky4;->R:Lqo;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lky4;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lhy4;->a:Lky4;

    .line 2
    .line 3
    invoke-virtual {p0}, Lky4;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
