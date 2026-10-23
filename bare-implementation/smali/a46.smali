.class public final La46;
.super Landroid/os/Handler;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lc46;


# direct methods
.method public constructor <init>(Lc46;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, La46;->a:Lc46;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, La46;->a:Lc46;

    .line 8
    .line 9
    iget-object p1, p0, Lc46;->b:Lh46;

    .line 10
    .line 11
    iget-object p1, p1, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lc46;->k(Landroidx/preference/PreferenceScreen;)Lhg6;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->j()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
