.class public final Ll8;
.super Lqc5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic m:Lo8;


# direct methods
.method public constructor <init>(Lo8;Landroid/content/Context;Lfc5;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, Ll8;->m:Lo8;

    .line 2
    .line 3
    const v1, 0x7f040022

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v6, 0x1

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
    const p0, 0x800005

    .line 16
    .line 17
    .line 18
    iput p0, v0, Lqc5;->g:I

    .line 19
    .line 20
    iget-object p0, p1, Lo8;->P:Lkm8;

    .line 21
    .line 22
    iput-object p0, v0, Lqc5;->i:Lvc5;

    .line 23
    .line 24
    iget-object p1, v0, Lqc5;->j:Loc5;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lwc5;->i(Lvc5;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll8;->m:Lo8;

    .line 2
    .line 3
    iget-object v1, v0, Lo8;->c:Lfc5;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lfc5;->c(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lo8;->L:Ll8;

    .line 13
    .line 14
    invoke-super {p0}, Lqc5;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
