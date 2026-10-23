.class public final synthetic Lyb1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lac1;

.field public final synthetic c:Lbc1;

.field public final synthetic d:Lzb1;


# direct methods
.method public synthetic constructor <init>(ZLac1;Lbc1;Lzb1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lyb1;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lyb1;->b:Lac1;

    .line 7
    .line 8
    iput-object p3, p0, Lyb1;->c:Lbc1;

    .line 9
    .line 10
    iput-object p4, p0, Lyb1;->d:Lzb1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lyb1;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lyb1;->b:Lac1;

    .line 6
    .line 7
    iget-object v0, p0, Lyb1;->c:Lbc1;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lgm7;->q(Ljl0;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lyb1;->d:Lzb1;

    .line 16
    .line 17
    iget-object p0, p0, Lzb1;->D:Lac1;

    .line 18
    .line 19
    iget-object p0, p0, Lac1;->l:Lil0;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lil0;->y([Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, v0, Lbc1;->a:Ldd1;

    .line 28
    .line 29
    invoke-virtual {p0}, Ldd1;->getConstant()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Lgm7;->t(Ljava/util/Set;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
