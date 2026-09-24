.class public final synthetic Lzy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lc40;

.field public final synthetic b:Lfz;

.field public final synthetic c:Lih6;

.field public final synthetic d:Lih6;


# direct methods
.method public synthetic constructor <init>(Lc40;Lfz;Lih6;Lih6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzy;->a:Lc40;

    .line 5
    .line 6
    iput-object p2, p0, Lzy;->b:Lfz;

    .line 7
    .line 8
    iput-object p3, p0, Lzy;->c:Lih6;

    .line 9
    .line 10
    iput-object p4, p0, Lzy;->d:Lih6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lzy;->b:Lfz;

    .line 2
    .line 3
    iget-object v1, v0, Lfz;->m:Landroid/widget/TextView;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lzy;->a:Lc40;

    .line 17
    .line 18
    invoke-virtual {v2}, Lpw6;->e()Lgz7;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lgz7;->isComplete()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 31
    :goto_1
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lzy;->c:Lih6;

    .line 35
    .line 36
    iput-boolean v2, v3, Lih6;->a:Z

    .line 37
    .line 38
    iget-object p0, p0, Lzy;->d:Lih6;

    .line 39
    .line 40
    invoke-static {p0, v3, v0}, Lfz;->b(Lih6;Lih6;Lfz;)V

    .line 41
    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 49
    .line 50
    return-object p0
.end method
