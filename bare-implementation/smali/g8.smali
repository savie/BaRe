.class public final Lg8;
.super Lqc5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic m:Lo8;


# direct methods
.method public constructor <init>(Lo8;Landroid/content/Context;Llr7;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lg8;->m:Lo8;

    .line 2
    .line 3
    const v1, 0x7f040022

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v4, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lqc5;-><init>(IILfc5;Landroid/content/Context;Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, v3, Llr7;->T:Lic5;

    .line 16
    .line 17
    iget p0, p0, Lic5;->P:I

    .line 18
    .line 19
    const/16 p2, 0x20

    .line 20
    .line 21
    and-int/2addr p0, p2

    .line 22
    if-ne p0, p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p1, Lo8;->q:Lk8;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    iget-object p0, p1, Lo8;->n:Lzc5;

    .line 30
    .line 31
    check-cast p0, Landroid/view/View;

    .line 32
    .line 33
    :cond_1
    iput-object p0, v0, Lqc5;->f:Landroid/view/View;

    .line 34
    .line 35
    :goto_0
    iget-object p0, p1, Lo8;->P:Lkm8;

    .line 36
    .line 37
    iput-object p0, v0, Lqc5;->i:Lvc5;

    .line 38
    .line 39
    iget-object p1, v0, Lqc5;->j:Loc5;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-interface {p1, p0}, Lwc5;->i(Lvc5;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lg8;->m:Lo8;

    .line 3
    .line 4
    iput-object v0, v1, Lo8;->M:Lg8;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, v1, Lo8;->Q:I

    .line 8
    .line 9
    invoke-super {p0}, Lqc5;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
