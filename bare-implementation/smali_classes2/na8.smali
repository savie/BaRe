.class public final Lna8;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljk8;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljk8;->getRoot()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lna8;->u:Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p3, p0, Lna8;->v:Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object p4, p0, Lna8;->w:Landroid/widget/TextView;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final r(Lma8;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lma8;->a:Lis4;

    .line 5
    .line 6
    iget-object v1, v0, Lis4;->p:Lgv7;

    .line 7
    .line 8
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lna8;->u:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lis4;->q:Lgv7;

    .line 23
    .line 24
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lna8;->v:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p1, Lma8;->b:Ljava/util/List;

    .line 39
    .line 40
    new-instance v6, Lsl;

    .line 41
    .line 42
    const/16 p1, 0x9

    .line 43
    .line 44
    invoke-direct {v6, p1}, Lsl;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const/16 v7, 0x1e

    .line 48
    .line 49
    const-string v3, "\n"

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p0, p0, Lna8;->w:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
