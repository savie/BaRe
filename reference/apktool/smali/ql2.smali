.class public final Lql2;
.super Lei0;


# instance fields
.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lol2;[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 3
    .line 4
    .line 5
    const/16 p1, 0x20

    .line 6
    .line 7
    invoke-static {p2, v0, p1}, Lms8;->t([BII)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lql2;->c:[B

    .line 12
    .line 13
    array-length v0, p2

    .line 14
    invoke-static {p2, p1, v0}, Lms8;->t([BII)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lql2;->d:[B

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lol2;[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    invoke-static {p2}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lql2;->c:[B

    invoke-static {p3}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lql2;->d:[B

    return-void
.end method
