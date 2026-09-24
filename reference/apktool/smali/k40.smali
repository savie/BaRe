.class public final Lk40;
.super Ljava/lang/Object;


# instance fields
.field public a:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x80

    .line 5
    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    iput-object v0, p0, Lk40;->a:[J

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lk40;Lk40;Lk40;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lk40;->a:[J

    .line 2
    .line 3
    iget-object p1, p1, Lk40;->a:[J

    .line 4
    .line 5
    iget-object p2, p2, Lk40;->a:[J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    const/16 v1, 0x80

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    aget-wide v1, p1, v0

    .line 13
    .line 14
    aget-wide v3, p2, v0

    .line 15
    .line 16
    xor-long/2addr v1, v3

    .line 17
    aput-wide v1, p0, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
