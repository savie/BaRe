.class public final Lvw7;
.super Lr4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Luw7;


# direct methods
.method public constructor <init>(Lex7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luw7;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Luw7;-><init>(Lex7;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvw7;->a:Luw7;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    instance-of v0, p0, Landroid/text/Spanned;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Landroid/text/Spanned;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const-class v2, Lax7;

    .line 24
    .line 25
    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-eqz p0, :cond_2

    .line 32
    .line 33
    array-length v0, p0

    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    const v0, 0x7f0a0305

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    new-instance v2, Lbx7;

    .line 46
    .line 47
    invoke-direct {v2, p1}, Lbx7;-><init>(Landroid/widget/TextView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    new-instance v0, Lib;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Lib;-><init>(Landroid/widget/TextView;)V

    .line 59
    .line 60
    .line 61
    array-length p1, p0

    .line 62
    :goto_1
    if-ge v1, p1, :cond_2

    .line 63
    .line 64
    aget-object v2, p0, v1

    .line 65
    .line 66
    check-cast v2, Lax7;

    .line 67
    .line 68
    iput-object v0, v2, Lax7;->r:Lib;

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lvw7;->a:Luw7;

    .line 3
    .line 4
    iput-object v0, p0, Luw7;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Luw7;->c:Z

    .line 8
    .line 9
    iput v0, p0, Luw7;->d:I

    .line 10
    .line 11
    return-void
.end method

.method public final d(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    instance-of p1, p0, Landroid/text/Spanned;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    move-object p1, p0

    .line 18
    check-cast p1, Landroid/text/Spanned;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const-class v1, Lax7;

    .line 25
    .line 26
    invoke-interface {p1, v0, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p0, p2

    .line 32
    :goto_0
    if-eqz p0, :cond_1

    .line 33
    .line 34
    array-length p1, p0

    .line 35
    if-lez p1, :cond_1

    .line 36
    .line 37
    array-length p1, p0

    .line 38
    :goto_1
    if-ge v0, p1, :cond_1

    .line 39
    .line 40
    aget-object v1, p0, v0

    .line 41
    .line 42
    check-cast v1, Lax7;

    .line 43
    .line 44
    iput-object p2, v1, Lax7;->r:Lib;

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method

.method public final f(Lbx5;)V
    .locals 2

    .line 1
    new-instance p0, Lfx7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lfx7;

    .line 27
    .line 28
    instance-of v0, v0, Lfx7;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v0, La63;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-direct {v0, v1}, La63;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p1, Lbx5;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    const-string p0, "extensions must not be null"

    .line 48
    .line 49
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final i(Lom5;)V
    .locals 2

    .line 1
    new-instance v0, Lex1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lex1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-class v1, Lhw7;

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ltw7;

    .line 13
    .line 14
    iget-object p0, p0, Lvw7;->a:Luw7;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ltw7;-><init>(Luw7;)V

    .line 17
    .line 18
    .line 19
    const-class v1, Ljw7;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcx1;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, p0, v1}, Lcx1;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    const-class v1, Lww7;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lsw7;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lsw7;-><init>(Luw7;)V

    .line 38
    .line 39
    .line 40
    const-class v1, Lmw7;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lrw7;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lrw7;-><init>(Luw7;)V

    .line 48
    .line 49
    .line 50
    const-class p0, Llw7;

    .line 51
    .line 52
    invoke-virtual {p1, p0, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
