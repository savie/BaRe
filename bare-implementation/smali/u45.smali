.class public final Lu45;
.super Ll90;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Leu4;


# instance fields
.field public final k:Lzm;

.field public final n:F


# direct methods
.method public constructor <init>(Lzm;Landroid/view/View;I)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/high16 p3, 0x41000000    # 8.0f

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 p3, 0x40800000    # 4.0f

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Ll90;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lu45;->k:Lzm;

    .line 23
    .line 24
    iput p3, p0, Lu45;->n:F

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1
    .annotation runtime Lct5;
        value = .enum Lrt4;->ON_DESTROY:Lrt4;
    .end annotation

    .line 1
    iget-object p0, p0, Ll90;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqc5;

    .line 4
    .line 5
    invoke-virtual {p0}, Lqc5;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lqc5;->j:Loc5;

    .line 12
    .line 13
    invoke-interface {p0}, Laf7;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu45;->k:Lzm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lho1;->getLifecycle()Lhu4;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Lhu4;->a(Leu4;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ll90;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lfc5;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lu45;->n:F

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lsz8;->n(Landroid/content/Context;Lfc5;F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Ll90;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lqc5;

    .line 31
    .line 32
    invoke-virtual {p0}, Lqc5;->b()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lqc5;->f:Landroid/view/View;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0, v0, v0, v0}, Lqc5;->d(IIZZ)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const-string p0, "MenuPopupHelper cannot be used without an anchor"

    .line 49
    .line 50
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method
