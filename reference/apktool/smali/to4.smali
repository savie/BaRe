.class public abstract Lto4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lto4;->a:I

    .line 8
    .line 9
    iput p2, p0, Lto4;->b:I

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lto4;->a:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    shl-int p2, p1, p2

    .line 19
    .line 20
    sub-int/2addr p2, p1

    .line 21
    iput p2, p0, Lto4;->b:I

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(II)I
    .locals 2

    .line 1
    iget v0, p0, Lto4;->a:I

    .line 2
    .line 3
    rsub-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    shr-int/2addr p1, v1

    .line 6
    iget p0, p0, Lto4;->b:I

    .line 7
    .line 8
    and-int/2addr p0, p2

    .line 9
    shl-int/2addr p0, v0

    .line 10
    add-int/2addr p1, p0

    .line 11
    return p1
.end method
