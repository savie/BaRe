.class public final Ls38;
.super Ls91;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Landroid/content/res/Resources;

.field public final synthetic f:Lj38;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lj38;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ls38;->e:Landroid/content/res/Resources;

    .line 2
    .line 3
    iput-object p3, p0, Ls38;->f:Lj38;

    .line 4
    .line 5
    const p2, 0x7f130327

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Ls91;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lm6;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Ls91;->d(Landroid/view/View;Lm6;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Ls38;->e:Landroid/content/res/Resources;

    .line 10
    .line 11
    const v2, 0x7f130336

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Ls38;->f:Lj38;

    .line 31
    .line 32
    iget v1, p0, Lj38;->a:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    const v1, 0x7f130326

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const v1, 0x7f130328

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0}, Lj38;->e()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p2, p0}, Lm6;->k(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
