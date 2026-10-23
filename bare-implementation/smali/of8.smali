.class public final Lof8;
.super Lop0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final r:Lfk5;


# direct methods
.method public constructor <init>(Lof8;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lop0;-><init>(Lop0;Ljava/util/Set;Ljava/util/Set;)V

    .line 20
    iget-object p1, p1, Lof8;->r:Lfk5;

    iput-object p1, p0, Lof8;->r:Lfk5;

    return-void
.end method

.method public constructor <init>(Lof8;Llr5;)V
    .locals 1

    .line 23
    iget-object v0, p1, Lop0;->f:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lop0;-><init>(Lop0;Llr5;Ljava/lang/Object;)V

    .line 24
    iget-object p1, p1, Lof8;->r:Lfk5;

    iput-object p1, p0, Lof8;->r:Lfk5;

    return-void
.end method

.method public constructor <init>(Lof8;Llr5;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lop0;-><init>(Lop0;Llr5;Ljava/lang/Object;)V

    .line 26
    iget-object p1, p1, Lof8;->r:Lfk5;

    iput-object p1, p0, Lof8;->r:Lfk5;

    return-void
.end method

.method public constructor <init>(Lof8;[Lmp0;[Lmp0;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lop0;-><init>(Lop0;[Lmp0;[Lmp0;)V

    .line 22
    iget-object p1, p1, Lof8;->r:Lfk5;

    iput-object p1, p0, Lof8;->r:Lfk5;

    return-void
.end method

.method public constructor <init>(Lop0;Lfk5;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lop0;->d:[Lmp0;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lop0;->s([Lmp0;Lfk5;)[Lmp0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lop0;->e:[Lmp0;

    .line 8
    .line 9
    invoke-static {v1, p2}, Lop0;->s([Lmp0;Lfk5;)[Lmp0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lop0;-><init>(Lop0;[Lmp0;[Lmp0;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lof8;->r:Lfk5;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final A([Lmp0;[Lmp0;)Lop0;
    .locals 1

    .line 1
    new-instance v0, Lof8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lof8;-><init>(Lof8;[Lmp0;[Lmp0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lop0;->p(Ljava/lang/Object;Lfk4;Lc87;Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lop0;->f:Ljava/lang/Object;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lop0;->v(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lop0;->w(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 2

    .line 1
    sget-object v0, Lx77;->n:Lx77;

    .line 2
    .line 3
    iget-object v1, p3, Lc87;->a:Lv77;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lv77;->l(Lx77;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lop0;->o(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p4, p0, Lop0;->f:Ljava/lang/Object;

    .line 24
    .line 25
    if-nez p4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lop0;->v(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lop0;->w(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :cond_2
    iget-object p0, p0, Ltn7;->a:Ljava/lang/Class;

    .line 36
    .line 37
    const-string p1, "Unwrapped property requires use of type information: cannot serialize without disabling `SerializationFeature.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS`"

    .line 38
    .line 39
    invoke-virtual {p3, p0, p1}, Lc87;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public final g(Lfk5;)Lem4;
    .locals 1

    .line 1
    new-instance v0, Lof8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lof8;-><init>(Lop0;Lfk5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final r()Lop0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "UnwrappingBeanSerializer for "

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final x(Ljava/util/Set;Ljava/util/Set;)Lop0;
    .locals 1

    .line 1
    new-instance v0, Lof8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lof8;-><init>(Lof8;Ljava/util/Set;Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final y(Ljava/lang/Object;)Lop0;
    .locals 2

    .line 1
    new-instance v0, Lof8;

    .line 2
    .line 3
    iget-object v1, p0, Lop0;->n:Llr5;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lof8;-><init>(Lof8;Llr5;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final z(Llr5;)Lop0;
    .locals 1

    .line 1
    new-instance v0, Lof8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lof8;-><init>(Lof8;Llr5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
