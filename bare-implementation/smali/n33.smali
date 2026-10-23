.class public final Ln33;
.super Ly0;


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln33;->a:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()Lq1;
    .locals 2

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lp82;

    .line 7
    .line 8
    iget-object p0, p0, Ln33;->a:[B

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lj1;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lt82;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lt82;->c:I

    .line 23
    .line 24
    return-object p0
.end method
