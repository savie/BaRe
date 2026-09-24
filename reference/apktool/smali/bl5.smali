.class public final Lbl5;
.super Lfc5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final S:Ljava/lang/Class;

.field public final T:I

.field public final U:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfc5;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lbl5;->S:Ljava/lang/Class;

    .line 5
    .line 6
    iput p3, p0, Lbl5;->T:I

    .line 7
    .line 8
    iput-boolean p4, p0, Lbl5;->U:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/CharSequence;)Lic5;
    .locals 2

    .line 1
    iget-object v0, p0, Lfc5;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget v1, p0, Lbl5;->T:I

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lfc5;->w()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lfc5;->a(IIILjava/lang/CharSequence;)Lic5;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lfc5;->v()V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object p0, p0, Lbl5;->S:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, " is "

    .line 31
    .line 32
    const-string p2, ". Limit can be checked with "

    .line 33
    .line 34
    const-string p3, "Maximum number of items supported by "

    .line 35
    .line 36
    invoke-static {p3, p0, p1, v1, p2}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "#getMaxItemCount()"

    .line 41
    .line 42
    invoke-static {p1, p0, p2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbl5;->U:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lbl5;->a(IIILjava/lang/CharSequence;)Lic5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lil5;

    .line 10
    .line 11
    iget-object p3, p0, Lfc5;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p2, p3, p0, p1}, Llr7;-><init>(Landroid/content/Context;Lfc5;Lic5;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p1, Lic5;->G:Llr7;

    .line 17
    .line 18
    iget-object p0, p1, Lic5;->e:Ljava/lang/CharSequence;

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Llr7;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    iget-object p0, p0, Lbl5;->S:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, " does not support submenus"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method
