.class public final Lcb2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldb2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcb2;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lql9;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcb2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Lql9;->a:Lzh9;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcb2;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcb2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcb2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/Iterator;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p0, Ldb2;

    .line 16
    .line 17
    iget-object p0, p0, Ldb2;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ljava/util/Iterator;

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcb2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcb2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/Iterator;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p0, Ldb2;

    .line 18
    .line 19
    iget-object v0, p0, Ldb2;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/Iterator;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lhk5;

    .line 28
    .line 29
    new-instance v1, Leb2;

    .line 30
    .line 31
    iget-object p0, p0, Ldb2;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Leb2;

    .line 34
    .line 35
    iget-object p0, p0, Leb2;->b:Lzc2;

    .line 36
    .line 37
    iget-object v2, v0, Lhk5;->a:Lm61;

    .line 38
    .line 39
    iget-object v2, v2, Lm61;->a:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object v0, v0, Lhk5;->b:Lqn5;

    .line 46
    .line 47
    invoke-static {v0}, Lsb4;->d(Lqn5;)Lsb4;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {v1, p0, v0}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget p0, p0, Lcb2;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0

    .line 12
    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v0, "remove called on immutable collection"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
