.class public final Lqp5;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lqp5;


# instance fields
.field public final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqp5;

    .line 2
    .line 3
    invoke-direct {v0}, Lqp5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqp5;->d:Lqp5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lqp5;->c:I

    .line 3
    .line 4
    const-class v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Ltn7;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lgc8;)V
    .locals 1

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lqp5;->c:I

    invoke-direct {p0, p1}, Ltn7;-><init>(Lgc8;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    iget p0, p0, Lqp5;->c:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lfk4;->Y(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "key"

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p3, p0, v0, p2}, Lc87;->g(Ljava/lang/String;Ljava/lang/Object;Lfk4;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "value"

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p3, p0, p1, p2}, Lc87;->g(Ljava/lang/String;Ljava/lang/Object;Lfk4;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lfk4;->q()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {p2}, Lfk4;->v()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    iget v0, p0, Lqp5;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p2}, Lfk4;->v()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
