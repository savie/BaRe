.class public final Lr43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq43;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-lt p2, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lr43;->a:I

    .line 8
    .line 9
    iput p2, p0, Lr43;->b:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lc6;->b()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    iget v0, p0, Lr43;->a:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2, p1}, Lr43;->b(ILjava/lang/StringBuilder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iget p0, p0, Lr43;->b:I

    .line 2
    .line 3
    invoke-static {p2, p1, p0}, Lg53;->b(Ljava/lang/StringBuilder;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Lr43;->b:I

    .line 2
    .line 3
    return p0
.end method
