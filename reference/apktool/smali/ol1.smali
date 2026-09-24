.class public abstract Lol1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Loc;
.implements Ldh5;


# static fields
.field public static final c:[Ls79;

.field public static final d:[Ljava/lang/annotation/Annotation;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ls79;

    .line 3
    .line 4
    sput-object v1, Lol1;->c:[Ls79;

    .line 5
    .line 6
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 7
    .line 8
    sput-object v0, Lol1;->d:[Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lol1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lol1;->b:Ljava/lang/Object;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x300

    .line 23
    .line 24
    new-array p1, p1, [S

    .line 25
    .line 26
    iput-object p1, p0, Lol1;->b:Ljava/lang/Object;

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 30
    iput p1, p0, Lol1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 29
    iput p2, p0, Lol1;->a:I

    iput-object p1, p0, Lol1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A(Ltv8;Ljava/util/List;)Ltv8;
.end method

.method public abstract B(Lyu8;Ll39;)Ll39;
.end method

.method public abstract C(Lm2;[B)Lz0;
.end method

.method public abstract D(Lz0;Ln1;)V
.end method

.method public abstract E(Lz0;)I
.end method

.method public F(Lk28;ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu35;

    .line 5
    .line 6
    invoke-virtual {p0}, Lol1;->i()Ljk8;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p1, v1, p2, p3}, Lu35;-><init>(Lk28;Ljk8;ZZ)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lol1;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v0}, Lu35;->show()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lol1;->w(Lho;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public G(Lzm;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv75;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Lv75;-><init>(Landroid/content/ContextWrapper;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lol1;->i()Ljk8;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljk8;->getRoot()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, v0, Lva;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lra;

    .line 21
    .line 22
    iput-object p1, v1, Lra;->s:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Lv75;->c()Lwa;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lol1;->b:Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {v0, p2}, Landroid/view/Window;->setGravity(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lol1;->w(Lho;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public abstract c(Lev6;)Z
.end method

.method public d(Lq1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "unexpected object: "

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p2, v1

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v3, p0, Lol1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Las5;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Las5;->Z(Ljava/lang/annotation/Annotation;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1, v2}, Lol1;->h(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lol1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public f([Ljava/lang/annotation/Annotation;)Lcy0;
    .locals 5

    .line 1
    sget-object v0, Lvd;->j:Lvd;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v4, p0, Lol1;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Las5;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Las5;->Z(Ljava/lang/annotation/Annotation;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0, v3}, Lol1;->h(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method

.method public g(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;
    .locals 9

    .line 1
    iget-object v0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Las5;

    .line 4
    .line 5
    array-length v1, p2

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_3

    .line 9
    .line 10
    aget-object v4, p2, v3

    .line 11
    .line 12
    invoke-virtual {p1, v4}, Lcy0;->y(Ljava/lang/annotation/Annotation;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, v4}, Las5;->Z(Ljava/lang/annotation/Annotation;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Lu81;->h(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    array-length v5, v4

    .line 37
    move v6, v2

    .line 38
    :goto_1
    if-ge v6, v5, :cond_2

    .line 39
    .line 40
    aget-object v7, v4, v6

    .line 41
    .line 42
    instance-of v8, v7, Ljava/lang/annotation/Target;

    .line 43
    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    instance-of v8, v7, Ljava/lang/annotation/Retention;

    .line 47
    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    invoke-virtual {p1, v7}, Lcy0;->y(Ljava/lang/annotation/Annotation;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, v7}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, v7}, Las5;->Z(Ljava/lang/annotation/Annotation;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, p1, v7}, Lol1;->h(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-object p1
.end method

.method public h(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lu81;->h(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 12
    .line 13
    aget-object v2, p2, v1

    .line 14
    .line 15
    instance-of v3, v2, Ljava/lang/annotation/Target;

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    instance-of v3, v2, Ljava/lang/annotation/Retention;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, p0, Lol1;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Las5;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Las5;->Z(Ljava/lang/annotation/Annotation;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lcy0;->y(Ljava/lang/annotation/Annotation;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1, v2}, Lol1;->h(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1, v2}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object p1
.end method

.method public abstract i()Ljk8;
.end method

.method public j(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lzn4;->a:Lzn4;

    .line 4
    .line 5
    new-instance p1, Lak;

    .line 6
    .line 7
    const/16 v0, 0x1d

    .line 8
    .line 9
    invoke-direct {p1, p0, v0}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x12c

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lzn4;->f(JLbt3;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lho;

    .line 21
    .line 22
    invoke-static {p0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public abstract k(Lev6;)V
.end method

.method public l([B)Lq1;
    .locals 0

    .line 1
    invoke-static {p1}, Lq1;->t([B)Lq1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lol1;->d(Lq1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public m(Lv1;)Lq1;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "unexpected implicit constructed encoding"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public o(Lp82;)Lq1;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "unexpected implicit primitive encoding"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public p()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/List;

    .line 4
    .line 5
    return-object p0
.end method

.method public q()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lwo4;

    .line 24
    .line 25
    invoke-virtual {p0}, Lwo4;->c()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    :goto_0
    return v1
.end method

.method public r(Lq2;Z)Lq1;
    .locals 3

    .line 1
    invoke-static {p1}, Lvm4;->e(Lq2;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lq2;->a:I

    .line 5
    .line 6
    iget-object v1, p1, Lq2;->d:Lb0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lq2;->y()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Lb0;->d()Lq1;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lol1;->d(Lq1;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string p0, "object implicit - explicit expected."

    .line 26
    .line 27
    :goto_0
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_1
    const/4 p2, 0x1

    .line 32
    if-eq p2, v0, :cond_5

    .line 33
    .line 34
    invoke-interface {v1}, Lb0;->d()Lq1;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v1, 0x3

    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    if-eq v0, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lol1;->d(Lq1;)V

    .line 45
    .line 46
    .line 47
    move-object p1, p2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    instance-of p1, p2, Lv1;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    check-cast p2, Lv1;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lol1;->m(Lv1;)Lq1;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    check-cast p2, Lp82;

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lol1;->o(Lp82;)Lq1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {p1, p2}, Lq2;->B(Lq1;)Lv1;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lol1;->m(Lv1;)Lq1;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    invoke-virtual {p0, p1}, Lol1;->d(Lq1;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_5
    const-string p0, "object explicit - implicit expected."

    .line 80
    .line 81
    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, " is not supported by this YubiKey"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public t(Lev6;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lol1;->c(Lev6;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lol1;->k(Lev6;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lol1;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lol1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v1, "values="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public abstract u(Lwj8;)Z
.end method

.method public v(Ls26;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public w(Lho;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract x(Lyu8;)V
.end method

.method public y(Lai5;)Lch5;
    .locals 0

    .line 1
    new-instance p1, Lv83;

    .line 2
    .line 3
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lt83;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lv83;-><init>(Lt83;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public abstract z(Lyu8;)V
.end method
