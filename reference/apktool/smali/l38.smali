.class public final Ll38;
.super Ls91;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lm38;


# direct methods
.method public constructor <init>(Lm38;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll38;->e:Lm38;

    .line 2
    .line 3
    const p1, 0x7f130329

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
    .locals 1

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
    iget-object p0, p0, Ll38;->e:Lm38;

    .line 9
    .line 10
    iget-object p0, p0, Lm38;->b:Lj38;

    .line 11
    .line 12
    iget p0, p0, Lj38;->c:I

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v0, 0x7f13032a

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p2, p0}, Lm6;->k(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
