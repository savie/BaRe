.class public final Lpi2;
.super Lt65;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final t:I


# instance fields
.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lqi2;

    .line 2
    .line 3
    invoke-static {v0}, Ls65;->b(Ljava/lang/Class;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lpi2;->t:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Len0;Lun7;Ljg7;Lop6;Lmp7;Luk1;Lcd2;)V
    .locals 0

    .line 1
    move-object p6, p7

    .line 2
    invoke-direct/range {p0 .. p6}, Lt65;-><init>(Len0;Lun7;Ljg7;Lop6;Lmp7;Lcd2;)V

    .line 3
    .line 4
    .line 5
    sget p1, Lpi2;->t:I

    .line 6
    .line 7
    iput p1, p0, Lpi2;->r:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lpi2;JI)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lt65;-><init>(Lt65;J)V

    .line 11
    iput p4, p0, Lpi2;->r:I

    return-void
.end method


# virtual methods
.method public final h(Lad2;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lt65;->n:Lcd2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lad2;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lcd2;->b:I

    .line 16
    .line 17
    invoke-interface {p1, p0}, Lah4;->a(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    sget p0, Lyj8;->a:I

    .line 23
    .line 24
    const-string p0, "Internal error: this code path should never get executed"

    .line 25
    .line 26
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1
    iget p0, p0, Lcd2;->a:I

    .line 32
    .line 33
    invoke-interface {p1, p0}, Lah4;->a(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final j(J)Lt65;
    .locals 2

    .line 1
    new-instance v0, Lpi2;

    .line 2
    .line 3
    iget v1, p0, Lpi2;->r:I

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, v1}, Lpi2;-><init>(Lpi2;JI)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
