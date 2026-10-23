.class public final Lb53;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq43;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb53;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    iget v0, p0, Lb53;->a:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2, p1}, Lb53;->b(ILjava/lang/StringBuilder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    const/16 p0, 0x64

    .line 2
    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Lg53;->a(ILjava/lang/StringBuilder;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p0, 0x2

    .line 10
    invoke-static {p2, p1, p0}, Lg53;->b(Ljava/lang/StringBuilder;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method
