.class public final Lk38;
.super Ls91;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lm38;


# direct methods
.method public constructor <init>(Lm38;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk38;->e:Lm38;

    .line 2
    .line 3
    const p1, 0x7f130327

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Ls91;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lm6;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ls91;->d(Landroid/view/View;Lm6;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lk38;->e:Lm38;

    .line 9
    .line 10
    iget-object p0, p0, Lm38;->b:Lj38;

    .line 11
    .line 12
    iget v0, p0, Lj38;->a:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const v0, 0x7f130326

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v0, 0x7f130328

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Lj38;->e()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p2, p0}, Lm6;->k(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
